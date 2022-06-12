DROP table user;
DROP table gameImg;
DROP TABLE minimum;
DROP TABLE recommend;
DROP table game;

CREATE TABLE user(
	id VARCHAR(30) NOT NULL PRIMARY KEY,
	pwd VARCHAR(30) NOT NULL,
	nickName VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
	birth DATE NOT NULL,
	joinday timestamp not null default NOW()
);
CREATE TABLE game(
	gameid INTEGER(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	gameName VARCHAR(100) NOT NULL,
	gameExplain VARCHAR(5000) NOT NULL,
	ration VARCHAR(40) NOT NULL,
	genre VARCHAR(40) NOT NULL,
	price INTEGER(7) NOT NULL,
	gameDate date NOT NULL,
	youtubeLink VARCHAR(50) NOT NULL
);
CREATE TABLE minimum(
	gameid INTEGER(3),
	CPU VARCHAR(80),
	graphic VARCHAR(80),
	ram VARCHAR(30),
	DISK VARCHAR(30),
	FOREIGN KEY(gameid) REFERENCES game(gameid)
);
CREATE TABLE recommend(
	gameid INTEGER(3),
	CPU VARCHAR(80),
	graphic VARCHAR(80),
	ram VARCHAR(30),
	DISK VARCHAR(30),
	FOREIGN KEY(gameid) REFERENCES game(gameid)
);
CREATE TABLE gameImg(
	imgId INTEGER(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	gameid INTEGER(3),
	mainName VARCHAR(30),
	bannerName VARCHAR(30),
	listName VARCHAR(30),
	FOREIGN KEY(gameid) REFERENCES game(gameid)
	
);


SELECT * FROM USER;
SELECT * FROM game;
SELECT * FROM minimum;
SELECT * FROM recommend;
SELECT * FROM gameImg;


INSERT INTO USER(id, pwd, nickName, email, birth) VALUES('admin', 'root', '관리자', 'cybersteer@naver.com', '0000-01-01');

INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('','','','',,'');
INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('Elden Ring','자극으로 가득한 드넓은 세계
다채로운 시추에이션을 지닌 탁 트인 필드와 복잡하면서 
입체적으로 짜인 거대한 던전이 경계선 없이 이어지는 드넓은 세계. 탐색 끝에는 
미지의 것들을 발견했다는 기쁨과 높은 성취감으로 이어지는 압도적인 위협이 
플레이어를 기다립니다.
개발자의 콘텐츠 설명:

이 게임에는 모든 연령에 적합하지 않은 콘텐츠 또는 직장에서 
이용하기에 부적절할 수 있는 콘텐츠가 포함되어 있습니다.
 잦은 폭력 또는 유혈, 일반 성인 콘텐츠','FromSorfWare inc','액션',64800,
 '2022-2-25','https://www.youtube.com/watch?v=uxwdq9G8DCo');
INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('Monster Hunter World: Iceborne','웅장한 자연 속에서 거대한 몬스터에 맞서라.
플레이어는 헌터가 되어 다양한 환경에 서식하는 몬스터를 사냥하는
퀘스트를 수주합니다.
몬스터를 사냥하고 입수한 소재를 이용해 더 강한 무기와 방어구를 만들고,
더욱 강력한 몬스터에 도전해 나갑니다.
시리즈 최신작인 "Monster Hunter: World"는
새롭게 제작된 다양한 지형과 살아 숨쉬는 세계에서 궁극의 사냥 생활을 체험할 수 있습니다.
이 게임에는 모든 연령에 적합하지 않은 콘텐츠 또는 직장에서 
이용하기에 부적절할 수 있는 콘텐츠가 포함되어 있습니다.
 잦은 폭력 또는 유혈, 일반 성인 콘텐츠','CAPCOM','액션',64800,'2018-8-10',
 'https://www.youtube.com/watch?v=l0guRIoZmCM');
INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('Ori and the Will of the Wisps','작은 정령 오리는 이미 위험을 겪어본 적이 있지만, 어린 부엉이 쿠가 
운명적인 비행 중에 위험에 빠진 이후 가족을 되찾고 망가진 땅을 치유하고 
오리의 진정한 운명을 깨달으려면 용기만으로는 부족하게 되었습니다. 호평 받은
 액션 플랫포머 게임 Ori and the Blind Forest의 제작자들이 큰 기대를 받고 있는
 후속작을 내놓습니다. 새로운 친구들과 적들로 채워진 드넓은 세상이 손으로 그려진 
아트워크를 통해 구현되었습니다. 이 광대한 세상에서 새로운 모험을 시작하세요.',
'Xbox Game Studios','액션',29800,'2020-3-11','https://www.youtube.com/watch?v=2reK8k8nwBc');

INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(1,'INTEL CORE it-8400 or AMD RYZEN 3 3300X',
'NVIDIA GEFORCE GTX 1060 3 GB or AMD RADEON RX 580 4 GB','12 GB RAM','60 GB 사용 가능 공간');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(2,'Core i5-4460, 3.20GHz OR AMD FX-6300 이상',
'NVIDIA GeForce GTX 760 또는 AMD Radeon R7 260x (VRAM 2GB)','8 GB RAM','48 GB 사용 가능 공간');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(3,'AMD Athlon X4 | Intel Core i5 4460','Nvidia GTX 950 | AMD R7 370','8 GB RAM','20 GB 사용 가능 공간');


INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(1,'INTEL CORE I7-8700K or AMD RYZEN 5 3600X',
'NVIDIA GEFORCE GTX 1070 8 GB or AMD RADEON RX VEGA 56 8 GB','16 GB RAM','60 GB 사용 가능 공간');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(2,'Core i7 3770 3.4GHz  Intel Core i3 8350 4GHz OR AMD Ryzen 5 1500X',
'NVIDIA® GeForce GTX 1060 (VRAM 3GB) OR AMD Radeon RX 570 (VRAM 4GB)','8 GB RAM','48 GB 사용 가능 공간');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(3,'AMD Ryzen 3 | Intel i5 Skylake','Nvidia GTX 970 | AMD RX 570','8 GB RAM','20 GB 사용 가능 공간');

INSERT INTO gameimg(gameid, mainName, bannerName, listName)
VALUES(1,'home/124.jpg','banner/El3.jpg','list/E2.jpg');
INSERT INTO gameimg(gameid, mainName, bannerName, listName)
VALUES(2,'home/Mon1.jpg','banner/Mon3.jpg','list/123.jpg');
INSERT INTO gameimg(gameid, mainName, bannerName, listName)
VALUES(3,'home/11.jpg','banner/114.jpg','list/1111.jpg');

SELECT * FROM user WHERE id = 'admin' AND pwd='root';

SELECT * FROM user;

SELECT * FROM FILE;
CREATE TABLE FILE(
	fileName VARCHAR(200),
	fileRealName VARCHAR(200),
	downloadCount int
);
CREATE TABLE gameimgmain(
	gamename VARCHAR(100)
	fileName VARCHAR(200),
	fileRealName VARCHAR(200)
);
CREATE TABLE gameimgbanner();
CREATE TABLE gameimglist();
ALTER TABLE FILE ADD (downloadCount INT);
DELETE FROM FILE;