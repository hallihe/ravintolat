DROP DATABASE cuisinerating;

CREATE DATABASE cuisinerating;

\c cuisinerating;
 

-- create table users which have email as unique identifier

CREATE TABLE users (
  userid INT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(50) NOT NULL,
  role VARCHAR(20) NOT NULL);

--cuisines present different types of cuisines available in restaurants

CREATE TABLE cuisines (
    cuisineid INT PRIMARY KEY,
    cuisinetype VARCHAR(100)
);

--restaurants and their location

CREATE TABLE restaurants (
    restaurantid INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    latitude FLOAT,
    longitude FLOAT,
    cuisineid INT );

--restaurant reviews

CREATE TABLE reviews (
    reviewid INT PRIMARY KEY,
    userid INT,
    restaurantid INT,
    rating INT,
    Comment TEXT,
    date DATE);


CREATE TABLE statuslogging (
    userid INT,
    username VARCHAR(50)
    command VARCHAR(500),
    date DATE);

