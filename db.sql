CREATE DATABASE dubboxdemo CHARACTER SET utf8;
USE dubboxdemo;
CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  age VARCHAR(100),
  interest VARCHAR(100)
) DEFAULT CHARACTER SET utf8;
INSERT INTO user values(1,'小白','18','吃鸡');
INSERT INTO user values(2,'小黑','18','敲代码');