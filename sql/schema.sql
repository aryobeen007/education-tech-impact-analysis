-- Schema for Education Technology Impact Analysis

-- Dimension: States
CREATE TABLE dim_state (
    state_code VARCHAR(2) PRIMARY KEY,
    state_name VARCHAR(100)
);

-- Dimension: Districts
CREATE TABLE dim_district (
    district_id VARCHAR(20) PRIMARY KEY,
    district_name VARCHAR(255),
    state_code VARCHAR(2),
    city VARCHAR(100)
);

-- Fact: Student Performance (NAEP)
CREATE TABLE fact_naep_scores (
    id SERIAL PRIMARY KEY,
    state_code VARCHAR(2),
    year INT,
    subject VARCHAR(50),
    grade INT,
    avg_score NUMERIC
);

-- Fact: District Characteristics (CRDC)
CREATE TABLE fact_district_characteristics (
    id SERIAL PRIMARY KEY,
    district_id VARCHAR(20),
    year INT,
    enrollment INT,
    schools_count INT
);