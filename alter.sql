-- Active: 1747539573897@@127.0.0.1@5432@ph

-- CREATE TABLE patients (
--     patient_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     date_of_birth DATE NOT NULL,
--     gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),
--     contact_number VARCHAR(15),
--     email VARCHAR(100) UNIQUE
-- );

-- INSERT INTO patients (first_name, last_name, date_of_birth, gender, contact_number) 
-- VALUES 
-- ('John', 'Doe', '1990-05-15', 'M', '123-456-7890'),
-- ('Jane', 'Smith', '1985-08-20', 'F', '987-654-3210'),
-- ('Alex', 'Taylor', '2000-01-30', 'O', '555-123-4567')
-- ON CONFLICT (first_name, last_name, date_of_birth) 
-- DO NOTHING; 



SELECT * FROM patients;
-- ALTER TABLE patients
-- ADD COLUMN address VARCHAR(50) DEFAULT 'default' NOT NULL;
-- ALTER TABLE patients
-- DROP COLUMN address ;
-- ALTER TABLE patients
-- RENAME COLUMN gender to user_gender;
-- ALTER Table patients
-- alter COLUMN first_name type VARCHAR(100)
