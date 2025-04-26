-- This script creates the Unicorn_Companies database and the unicorns table.
CREATE DATABASE IF NOT EXISTS Unicorn_Companies;

USE Unicorn_Companies;

-- Run this script before importing any data into the unicorns table.
CREATE TABLE IF NOT EXISTS unicorns (
  id INT AUTO_INCREMENT PRIMARY KEY,
  company_name VARCHAR(100),
  valuation DECIMAL(12, 2),
  date_joined DATE,
  industry VARCHAR(100),
  city VARCHAR(100),
  country VARCHAR(100),
  continent VARCHAR(50),
  year_founded INT,
  funding DECIMAL(12, 2),
  investors TEXT
);
