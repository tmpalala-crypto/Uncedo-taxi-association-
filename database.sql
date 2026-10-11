CREATE DATABASE uncedo_taxi;
USE uncedo_taxi;

CREATE TABLE taxis (
  id INT AUTO_INCREMENT PRIMARY KEY,
  plate VARCHAR(20) UNIQUE, -- CY 123-455 EC
  make_model VARCHAR(100), -- Toyota Quantum
  driver_name VARCHAR(100),
  driver_phone VARCHAR(20),
  driver_selfie_url VARCHAR(255),
  route_code VARCHAR(10), -- R1
  qr_code VARCHAR(100) UNIQUE, -- CY123455
  roadworthy_expiry DATE,
  insurance_expiry DATE,
  permit_expiry DATE,
  insurance_policy VARCHAR(50),
  status ENUM('verified','expired','suspended') DEFAULT 'verified'
);

CREATE TABLE routes (
  code VARCHAR(10) PRIMARY KEY,
  destination VARCHAR(100),
  fare INT,
  duration VARCHAR(20),
  active BOOLEAN DEFAULT TRUE
);

INSERT INTO routes VALUES 
('R1','Johannesburg',850,'10h 30m',1),
('R2','Mthatha',600,'4h 00m',1),
('R3','George',400,'4h 30m',1),
('R4','East London',300,'3h 30m',1),
('R5','Knysna',450,'3h 20m',1),
('R6','Plett',480,'3h 45m',1),
('R7','Mossel Bay',380,'4h 00m',1),
('R8','Tsitsikamma',350,'2h 30m',1);

INSERT INTO taxis (plate, make_model, driver_name, qr_code, roadworthy_expiry, insurance_expiry, permit_expiry) 
VALUES ('CY 123-455 EC','Toyota Quantum','John M.','CY123455','2026-12-31','2026-11-30','2026-12-15');
