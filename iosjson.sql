-- create table
CREATE TABLE winRates
(
  	id INT PRIMARY KEY NOT NULL auto_increment,
	championName VARCHAR(255),
	winRates VARCHAR(255)
);
 
-- Insert data into our table
INSERT INTO winRates(championName, winRates)
VALUE ('Annie', '67%');
INSERT INTO winRates(championName, winRates)
VALUE ('Bard', '67%');
INSERT INTO winRates(championName, winRates)
VALUE ('Nasus', '65%');
INSERT INTO winRates(championName, winRates)
VALUE ('Xin Zhao', '64%');

