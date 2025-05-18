-- Active: 1747539573897@@127.0.0.1@5432@ph

CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100) UNIQUE
);

INSERT INTO doctors (first_name, last_name, specialization, contact_number, email) VALUES
('John', 'Doe', 'Cardiology', '1234567890', 'johndoe@example.com'),
('Jane', 'Smith', 'Dermatology', '0987654321', 'janesmith@example.com'),
('Emily', 'Johnson', 'Neurology', '1122334455', 'emilyj@example.com'),
('Michael', 'Brown', 'Pediatrics', '2233445566', 'michaelb@example.com'),
('Sarah', 'Williams', 'Orthopedics', '3344556677', 'sarahw@example.com');

ON CONFLICT (first_name, last_name,specialization, contact_number, email )  --bar bar jate akoi data insert na hoi tar jonno
DO NOTHING;

SELECT * FROM doctors

ALTER TABLE doctors
ADD COLUMN address VARCHAR(50) DEFAULT 'default' NOT NULL;
ALTER TABLE doctors
DROP COLUMN address ;
ALTER TABLE doctors
RENAME COLUMN specialization to user_specialization;
ALTER TABLE doctors
RENAME COLUMN user_specialization to specialization  ;
ALTER Table doctors
alter COLUMN first_name type VARCHAR(100)

INSERT INTO doctors (first_name, last_name, specialization, contact_number, email) VALUES
('Sakib', 'biswas', 'Orthopedicss', '33445566775', 'sakib@example.com');
alter Table doctors
alter COLUMN contact_number set not NULL;
alter Table doctors
alter COLUMN contact_number drop not NULL;

ALTER TABLE doctors
add constraint UNIQUE_doctor_specialization UNIQUE(specialization)

ALTER TABLE doctors
DROP constraint UNIQUE_doctor_specialization 

truncate TABLE patients