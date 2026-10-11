# EduGuard Database Configuration

This directory contains the SQL scripts necessary to set up the `eduguard` PostgreSQL database schema and populate it with simulated data.

## Execution Instructions

1. **Create Database**: Open `psql` (or pgAdmin) and create the database:
   ```sql
   CREATE DATABASE eduguard;
   ```
2. **Connect to Database**:
   ```sql
   \c eduguard
   ```
3. **Execute Schema**:
   ```bash
   psql -U postgres -d eduguard -f schema.sql
   ```
4. **Execute Seed Data** (Safe to rerun):
   ```bash
   psql -U postgres -d eduguard -f seed-data.sql
   ```
5. **Verify Data**:
   ```bash
   psql -U postgres -d eduguard -f verify-data.sql
   ```

## Development Reset
If you need to completely wipe the schema and start fresh during development, run:
```bash
psql -U postgres -d eduguard -f reset-database.sql
```
*WARNING: This destroys all data.*

## Service Ownership & Permissions
- **Student Data Service**: Owns all academic and financial tables. Connects using a dedicated role with `ALL PRIVILEGES` on the `eduguard` schema.
- **Risk & Intervention Service**: Intended to communicate with the Student Data Service via REST APIs to fetch context. If direct database reads are configured, it should connect using a read-only role (`GRANT SELECT`). Future tables created by this service (e.g., `risk_assessments`) will be exclusively owned by it.
