SELECT * FROM user WHERE id = 'admin' AND pwd='root';

SELECT * FROM user;

SELECT * FROM FILE;
CREATE TABLE FILE(
	fileName VARCHAR(200),
	fileRealName VARCHAR(200),
	downloadCount int
);
ALTER TABLE FILE ADD (downloadCount INT);
DELETE FROM FILE;