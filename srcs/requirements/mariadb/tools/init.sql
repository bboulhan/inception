-- SET @data_name = '${DB_NAME}';
-- SET @data_user = '${USER_NAME}';
-- SET @data_pass = '${USER_PASS}';
-- SET @data_root = '${ROOT_PASS}';


-- CREATE DATABASE IF NOT EXISTS @data_name;
-- CREATE USER IF NOT EXISTS '@data_user'@'%' IDENTIFIED BY '@data_pass';
-- GRANT ALL ON @data_name.* TO '@data_user'@'%';
-- ALTER USER 'root'@'localhost' IDENTIFIED BY '@data_root';
-- FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$USER_NAME'@'%' IDENTIFIED BY '$USER_PASS';
GRANT ALL ON $DB_NAME.* TO '$USER_NAME'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASS';
FLUSH PRIVILEGES;

-- CREATE DATABASE IF NOT EXISTS db;
-- CREATE USER IF NOT EXISTS 'bboulhan'@'%' IDENTIFIED BY 'ibra2001';
-- GRANT ALL   ON db.* TO 'bboulhan'@'%';
-- ALTER USER 'root'@'localhost' IDENTIFIED BY 'root42';
-- FLUSH PRIVILEGES;