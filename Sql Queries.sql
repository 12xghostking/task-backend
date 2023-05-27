CREATE database Task;
use Task;
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role ENUM('user', 'admin') NOT NULL,
  name VARCHAR(255) NOT NULL
);


CREATE TABLE notifications (
  id INT AUTO_INCREMENT PRIMARY KEY,
  recipient VARCHAR(255) NOT NULL,
  notificationText TEXT NOT NULL,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE tasks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  deadline VARCHAR(255) NOT NULL,
  assignedMembers VARCHAR(255) NOT NULL,
  notes TEXT,
  completed BOOLEAN DEFAULT FALSE
);


CREATE TABLE files (
  id INT PRIMARY KEY AUTO_INCREMENT,
  filename VARCHAR(255) NOT NULL,
  filepath VARCHAR(255) NOT NULL,
  task VARCHAR(255) NOT NULL,
  recipient VARCHAR(255) NOT NULL,
  upload_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
