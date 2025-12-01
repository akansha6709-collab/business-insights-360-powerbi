-- Create BI user and set permissions
SELECT user, host, plugin 
FROM mysql.user 
WHERE user='pbi_user';

SHOW GRANTS FOR 'pbi_user'@'localhost';

-- Update password
ALTER USER 'pbi_user'@'localhost'
IDENTIFIED BY 'StrongPass!23';

FLUSH PRIVILEGES;

-- Grant access to the analytics database
GRANT SELECT ON `gdb056`.* TO 'pbi_user'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'pbi_user'@'localhost';
