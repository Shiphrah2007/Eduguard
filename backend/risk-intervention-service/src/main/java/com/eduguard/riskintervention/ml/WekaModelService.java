package com.eduguard.riskintervention.ml;
import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Service;
import weka.classifiers.functions.Logistic;
import weka.core.Attribute;
import weka.core.DenseInstance;
import weka.core.Instances;
import java.util.ArrayList;

@Service
public class WekaModelService {
    private Logistic logisticModel;
    private Instances dataset;
    private Attribute attAttendance;
    private Attribute attGpa;
    private Attribute attClass;
    
    public final String MODEL_VERSION = "weka-logistic-v1";

    @PostConstruct
    public void initAndTrain() throws Exception {
        ArrayList<Attribute> attributes = new ArrayList<>();
        attAttendance = new Attribute("attendance");
        attGpa = new Attribute("gpa");
        
        ArrayList<String> classValues = new ArrayList<>();
        classValues.add("low_risk");
        classValues.add("high_risk");
        attClass = new Attribute("class", classValues);
        
        attributes.add(attAttendance);
        attributes.add(attGpa);
        attributes.add(attClass);
        
        dataset = new Instances("SyntheticStudentData", attributes, 0);
        dataset.setClassIndex(2);
        
        // Procedurally generate synthetic data
        for (int i = 0; i < 200; i++) {
            DenseInstance inst = new DenseInstance(3);
            inst.setDataset(dataset);
            if (i % 2 == 0) { // low risk
                inst.setValue(attAttendance, 80 + Math.random() * 20);
                inst.setValue(attGpa, 6.0 + Math.random() * 4.0);
                inst.setValue(attClass, "low_risk");
            } else { // high risk
                inst.setValue(attAttendance, 30 + Math.random() * 40);
                inst.setValue(attGpa, 2.0 + Math.random() * 3.5);
                inst.setValue(attClass, "high_risk");
            }
            dataset.add(inst);
        }
        
        logisticModel = new Logistic();
        logisticModel.buildClassifier(dataset);
    }

    public PredictionResult predict(FeatureExtractor.Features f) throws Exception {
        if (f.isIncomplete) {
            return new PredictionResult(0.0, "INCOMPLETE", "Missing critical attendance data requires manual review.");
        }
        
        DenseInstance inst = new DenseInstance(3);
        inst.setDataset(dataset);
        inst.setValue(attAttendance, f.attendance);
        inst.setValue(attGpa, f.gpa);
        
        double[] dist = logisticModel.distributionForInstance(inst);
        double riskProb = dist[1]; // Probability of "high_risk"
        
        String tier = riskProb < 0.30 ? "LOW" : (riskProb < 0.60 ? "MEDIUM" : "HIGH");
        
        // Explanation (Log-Odds contributions)
        double[][] coef = logisticModel.coefficients(); // [numPredictors + 1][numClasses - 1]
        double cAtt = coef[0][0];
        double cGpa = coef[1][0];
        double intercept = coef[2][0];
        
        double cAttVal = cAtt * f.attendance;
        double cGpaVal = cGpa * f.gpa;
        
        String explanation = String.format("Log-Odds Intercept: %.2f. Attendance log-odds contribution: %.2f. GPA log-odds contribution: %.2f. Imputed GPA: %b", intercept, cAttVal, cGpaVal, f.gpaImputed);
        return new PredictionResult(riskProb * 100.0, tier, explanation);
    }
    
    public static class PredictionResult {
        public double score;
        public String tier;
        public String explanation;
        public PredictionResult(double s, String t, String e) { score=s; tier=t; explanation=e; }
    }
}
