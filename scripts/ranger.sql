system mysql -u root -proot
CREATE USER 'ranger'@'localhost' IDENTIFIED BY 'ranger';
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'node2.example.com';
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'node2.example.com' IDENTIFIED BY 'ranger' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'localhost' IDENTIFIED BY 'ranger' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'ranger'@'%' IDENTIFIED BY 'ranger' WITH GRANT OPTION;
FLUSH PRIVILEGES;

system mysql -u ranger -pranger
SELECT CURRENT_USER();
create database ranger;
