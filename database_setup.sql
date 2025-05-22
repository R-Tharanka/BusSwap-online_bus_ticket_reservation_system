-- SQL Script for Bus Ticket Reservation System

-- Create the database
CREATE DATABASE IF NOT EXISTS busswap;
USE busswap;

-- Create bus_details table
CREATE TABLE IF NOT EXISTS bus_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    origin VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    start_time VARCHAR(50) NOT NULL,
    end_time VARCHAR(50) NOT NULL,
    duration VARCHAR(50) NOT NULL,
    seats INT NOT NULL,
    price VARCHAR(50) NOT NULL
);

-- Create tickets table
CREATE TABLE IF NOT EXISTS tickets (
    t_id INT AUTO_INCREMENT PRIMARY KEY,
    bus_id VARCHAR(50) NOT NULL,
    s_time VARCHAR(50) NOT NULL,
    origin VARCHAR(100) NOT NULL,
    date VARCHAR(50) NOT NULL,
    duration VARCHAR(50) NOT NULL,
    e_time VARCHAR(50) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    seat_no INT NOT NULL,
    price VARCHAR(50) NOT NULL
);

-- Insert sample bus routes for Sri Lanka
INSERT INTO bus_details (origin, destination, start_time, end_time, duration, seats, price) VALUES
-- Colombo to other major cities
('Colombo', 'Kandy', '06:00', '09:00', '3h 00m', 45, 'LKR 550'),
('Colombo', 'Galle', '07:30', '10:00', '2h 30m', 45, 'LKR 450'),
('Colombo', 'Jaffna', '20:00', '04:30', '8h 30m', 40, 'LKR 1200'),
('Colombo', 'Trincomalee', '21:00', '04:00', '7h 00m', 40, 'LKR 950'),
('Colombo', 'Batticaloa', '20:30', '04:30', '8h 00m', 40, 'LKR 1100'),
('Colombo', 'Anuradhapura', '07:00', '11:30', '4h 30m', 45, 'LKR 650'),
('Colombo', 'Matara', '06:30', '09:30', '3h 00m', 45, 'LKR 500'),
('Colombo', 'Negombo', '08:00', '09:00', '1h 00m', 45, 'LKR 200'),
('Colombo', 'Hambantota', '07:00', '11:00', '4h 00m', 45, 'LKR 600'),

-- From Kandy
('Kandy', 'Colombo', '07:00', '10:00', '3h 00m', 45, 'LKR 550'),
('Kandy', 'Nuwara Eliya', '09:00', '11:30', '2h 30m', 45, 'LKR 400'),
('Kandy', 'Anuradhapura', '08:00', '11:30', '3h 30m', 45, 'LKR 550'),

-- From Galle
('Galle', 'Colombo', '06:00', '08:30', '2h 30m', 45, 'LKR 450'),
('Galle', 'Colombo', '07:00', '09:30', '2h 30m', 45, 'LKR 450'),
('Galle', 'Colombo', '08:00', '10:30', '2h 30m', 45, 'LKR 450'),
('Galle', 'Matara', '07:00', '08:00', '1h 00m', 45, 'LKR 200'),
('Galle', 'Hambantota', '08:30', '10:30', '2h 00m', 45, 'LKR 350'),

-- From Jaffna
('Jaffna', 'Colombo', '18:00', '02:30', '8h 30m', 40, 'LKR 1200'),
('Jaffna', 'Anuradhapura', '14:00', '17:30', '3h 30m', 45, 'LKR 550'),
('Jaffna', 'Trincomalee', '12:00', '16:00', '4h 00m', 45, 'LKR 600'),

-- Additional routes
('Matara', 'Colombo', '05:30', '08:30', '3h 00m', 45, 'LKR 500'),
('Anuradhapura', 'Colombo', '15:00', '19:30', '4h 30m', 45, 'LKR 650'),
('Trincomalee', 'Colombo', '19:00', '02:00', '7h 00m', 40, 'LKR 950'),
('Batticaloa', 'Colombo', '19:00', '03:00', '8h 00m', 40, 'LKR 1100'),
('Negombo', 'Colombo', '17:00', '18:00', '1h 00m', 45, 'LKR 200'),
('Hambantota', 'Colombo', '14:00', '18:00', '4h 00m', 45, 'LKR 600'),
('Nuwara Eliya', 'Kandy', '14:00', '16:30', '2h 30m', 45, 'LKR 400'),

-- Route between Ambalangoda and other cities (as mentioned in your dropdown lists)
('Ambalangoda', 'Colombo', '06:30', '09:00', '2h 30m', 45, 'LKR 400'),
('Colombo', 'Ambalangoda', '15:30', '18:00', '2h 30m', 45, 'LKR 400'),
('Ambalangoda', 'Galle', '07:00', '08:00', '1h 00m', 45, 'LKR 150'),
('Galle', 'Ambalangoda', '18:00', '19:00', '1h 00m', 45, 'LKR 150'),

-- Route between Elpitiya and other cities (as mentioned in your dropdown lists) 
('Elpitiya', 'Colombo', '05:30', '08:30', '3h 00m', 45, 'LKR 450'),
('Colombo', 'Elpitiya', '16:00', '19:00', '3h 00m', 45, 'LKR 450'),
('Elpitiya', 'Galle', '06:30', '07:30', '1h 00m', 45, 'LKR 150'),
('Galle', 'Elpitiya', '17:30', '18:30', '1h 00m', 45, 'LKR 150');

-- Insert some sample ticket data
INSERT INTO tickets (bus_id, s_time, origin, date, duration, e_time, destination, seat_no, price) VALUES
('BUS001', '06:00', 'Colombo', '2025-05-25', '3h 00m', '09:00', 'Kandy', 12, 'LKR 550'),
('BUS002', '07:30', 'Colombo', '2025-05-26', '2h 30m', '10:00', 'Galle', 5, 'LKR 450'),
('BUS003', '20:00', 'Colombo', '2025-05-27', '8h 30m', '04:30', 'Jaffna', 22, 'LKR 1200');
