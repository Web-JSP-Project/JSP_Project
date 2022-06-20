DROP table user;
DROP table gameImg;
DROP TABLE minimum;
DROP TABLE recommend;
DROP table game;
DROP TABLE library;

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
	youtubeLink VARCHAR(300) NOT NULL
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
	itemName VARCHAR(30),
	f1name VARCHAR(30),
	f2name VARCHAR(30),
	libraryList VARCHAR(30),
	FOREIGN KEY(gameid) REFERENCES game(gameid)
);
CREATE TABLE library(
	libraryid INTEGER(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	userid VARCHAR(30) NOT NULL,
	gameid INTEGER(3) NOT NULL,
	FOREIGN KEY(userid) REFERENCES user(id),
	FOREIGN KEY(gameid) REFERENCES game(gameid)
);
CREATE TABLE faq(
	faqid INTEGER(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	COMMENT VARCHAR(1000) NOT NULL
);
CREATE TABLE qna(
	qnaid INTEGER(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(100),
	hit INTEGER(10) NOT NULL DEFAULT 0,
	qnaDay timestamp not null default NOW(),
	userid VARCHAR(30) NOT null,
	FOREIGN KEY(userid) REFERENCES user(id)
);
CREATE TABLE freeBoard(
	freeBoardid INTEGER(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(100),
	hit INTEGER(10) NOT NULL DEFAULT 0,
	freeBoardDay timestamp not null default NOW(),
	userid VARCHAR(30),
	FOREIGN KEY(userid) REFERENCES user(id)
);
CREATE TABLE dataBoard(
	dataBoardid INTEGER(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(100),
	hit INTEGER(10) NOT NULL DEFAULT 0,
	dataBoardidDay timestamp not null default NOW(),
	userid VARCHAR(30),
	FOREIGN KEY(userid) REFERENCES user(id)
);
CREATE TABLE qnaComment(
	qnaCommantId INTEGER(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	qnaid INTEGER(3) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	commentDay timestamp not null default NOW(),
	userid VARCHAR(30),
	FOREIGN KEY(userid) REFERENCES user(id),
	FOREIGN KEY(qnaid) REFERENCES qna(qnaid)
);
CREATE TABLE boardComment(
	boardCommentId INTEGER(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	freeBoardid INTEGER(3) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	commentDay timestamp not null default NOW(),
	userid VARCHAR(30),
	FOREIGN KEY(userid) REFERENCES user(id),
	FOREIGN KEY(freeBoardid) REFERENCES freeBoard(freeBoardid)
);
CREATE TABLE dataBoardContent(
	
);


SELECT * FROM USER;
SELECT * FROM game;
SELECT * FROM minimum;
SELECT * FROM recommend;
SELECT * FROM gameimg;
SELECT * FROM library;

DESC game;

UPDATE game SET youtubeLink="https://www.youtube.com/embed/e5wwSxl0atc?playlist=e5wwSxl0atc&amp;loop=1&amp;mute=1&amp;showinfo=0&amp;controls=0&amp;start=0&amp;autoplay=1"
WHERE gameid = 1;
UPDATE game SET youtubeLink="https://www.youtube.com/embed/l0guRIoZmCM?playlist=l0guRIoZmCM&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1"
WHERE gameid = 2;
UPDATE game SET youtubeLink="https://www.youtube.com/embed/2reK8k8nwBc?playlist=2reK8k8nwBc&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1"
WHERE gameid = 3;
UPDATE game SET youtubeLink="https://www.youtube.com/embed/K0u_kAWLJOA?playlist=K0u_kAWLJOA&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1"
WHERE gameid = 4;
UPDATE game SET youtubeLink="https://www.youtube.com/embed/NAMw22hSLl4?playlist=NAMw22hSLl4&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1"
WHERE gameid = 5;
UPDATE game SET youtubeLink="https://www.youtube.com/embed/Ge73iBqc7o8?playlist=Ge73iBqc7o8&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1"
WHERE gameid = 6;

SELECT * FROM file;

INSERT INTO USER(id, pwd, nickName, email, birth) VALUES('admin', 'root', '관리자', 'cybersteer@naver.com', '0000-01-01');

INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('','','','',,'','');
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
 '2022-2-25',
 'https://www.youtube.com/embed/e5wwSxl0atc?playlist=e5wwSxl0atc&amp;loop=1&amp;mute=1&amp;showinfo=0&amp;controls=0&amp;start=0&amp;autoplay=1');
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
 'https://www.youtube.com/embed/l0guRIoZmCM?playlist=l0guRIoZmCM&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1');
INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('Ori and the Will of the Wisps','작은 정령 오리는 이미 위험을 겪어본 적이 있지만, 어린 부엉이 쿠가 
운명적인 비행 중에 위험에 빠진 이후 가족을 되찾고 망가진 땅을 치유하고 
오리의 진정한 운명을 깨달으려면 용기만으로는 부족하게 되었습니다. 호평 받은
 액션 플랫포머 게임 Ori and the Blind Forest의 제작자들이 큰 기대를 받고 있는
 후속작을 내놓습니다. 새로운 친구들과 적들로 채워진 드넓은 세상이 손으로 그려진 
아트워크를 통해 구현되었습니다. 이 광대한 세상에서 새로운 모험을 시작하세요.',
'Xbox Game Studios','액션',29800,'2020-3-11',
'https://www.youtube.com/embed/2reK8k8nwBc?playlist=2reK8k8nwBc&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1');

INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('God of War','북유럽의 영역에 입장하세요
올림푸스 신들을 향한 복수심을 뒤로하고 크레토스는 이제 북유럽 신과 괴물의 땅에 살고 있습니다.
 항상 생존을 위해 싸워야 하는 이 혹독하고 가차 없는 세상에서, 그는 생존을 위해 싸우고… 아들에
게도 그 방식을 가르쳐야 합니다.','PlayStation PC LLC','액션',45800,'2022/01/15',
'https://www.youtube.com/embed/4DBZJSZdBlY?playlist=4DBZJSZdBlY&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1');
INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('GTFO','플레이어를 포함한 죄수 팀은 자신들을 붙잡고 있는 수수께끼의 존재 
교도관이 내린 새로운 작업 지시와 함께 런다운에 투입됩니다. 런다운이란 
일련의 연속적인 탐사 활동으로, 복합단지라 부르는 무너져 가는 연구 시설에서 
탐사를 완료할 때마다 한 층씩 아래로 내려가야 합니다. 점점 더 깊은 곳으로 침투하면서 
곳곳의 그림자 속에 끔찍한 생물들이 숨어 있는 가혹한 동굴에서 생존에 필요한
 각종 도구와 자원을 입수하세요. 모든 탐사를 마치고 작업 지시를 완수하면, 
런다운을 종료할 수 있습니다..','10 Chambers','공포',37490,'2019/12/10',
'https://www.youtube.com/embed/NAMw22hSLl4?playlist=NAMw22hSLl4&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1');
INSERT INTO game (gameName, gameExplain, ration, genre, price, gameDate,youtubeLink)
VALUES('FINAL FANTASY VII REMAKE INTERGRADE','1997년에 발매된 『FINAL FANTASY VII』의 주요 스태프가 만든 『FINAL FANTASY VII REMAKE』.
장대한 이야기와 매력적인 캐릭터, 당시로는 최첨단 기술을 사용한 영상으로 많은 사람들을 매료시켰던 불후의 명작이, 긴 세월을 지나 「새로운 이야기」로 다시 태어납니다.
커맨드 배틀과 직감적인 액션의 융합으로 전략성이 높아지고, 최신 그래픽 기술로 『FINAL FANTASY VII』의 세계를 사실적으로 재현, 재생하였습니다.',
'Square Enix','RPG',64800,'2019/12/10',
'https://www.youtube.com/embed/Ge73iBqc7o8?playlist=Ge73iBqc7o8&loop=1&mute=1&showinfo=0&controls=0&start=0&autoplay=1');

INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(,'','','','');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(1,'INTEL CORE it-8400 or AMD RYZEN 3 3300X',
'NVIDIA GEFORCE GTX 1060 3 GB or AMD RADEON RX 580 4 GB','12 GB RAM','60 GB 사용 가능 공간');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(2,'Core i5-4460, 3.20GHz OR AMD FX-6300 이상',
'NVIDIA GeForce GTX 760 또는 AMD Radeon R7 260x (VRAM 2GB)','8 GB RAM','48 GB 사용 가능 공간');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(3,'AMD Athlon X4 | Intel Core i5 4460','Nvidia GTX 950 | AMD R7 370','8 GB RAM','20 GB 사용 가능 공간');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(4,'Intel i5-2500k (4 core 3.3 GHz) or AMD Ryzen 3 1200 (4 core 3.1 GHz)','NVIDIA GTX 960 (4 GB) or AMD R9 290X (4 GB)','8 GB RAM','70 GB 사용 가능 공간');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(5,'Intel Core i5 2500K 또는 동급의 AMD 프로세서','NVIDIA GeForce GT 1030 또는 동급의 Radeon HD 7850','8 GB RAM','15 GB 사용 가능 공간');
INSERT INTO minimum(gameid, CPU, graphic, ram, DISK) 
VALUES(6,'AMD FX-8350 / Intel Core i5-3330','AMD Radeon RX 480 / NVIDIAGeForce GTX 780','8 GB RAM','100 GB 사용 가능 공간');


INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(,'','','','');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(1,'INTEL CORE I7-8700K or AMD RYZEN 5 3600X',
'NVIDIA GEFORCE GTX 1070 8 GB or AMD RADEON RX VEGA 56 8 GB','16 GB RAM','60 GB 사용 가능 공간');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(2,'Core i7 3770 3.4GHz  Intel Core i3 8350 4GHz OR AMD Ryzen 5 1500X',
'NVIDIA® GeForce GTX 1060 (VRAM 3GB) OR AMD Radeon RX 570 (VRAM 4GB)','8 GB RAM','48 GB 사용 가능 공간');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(3,'AMD Ryzen 3 | Intel i5 Skylake','Nvidia GTX 970 | AMD RX 570','8 GB RAM','20 GB 사용 가능 공간');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(4,'Intel i5-6600k (4 core 3.5 GHz) or AMD Ryzen 5 2400 G (4 core 3.6 GHz)','NVIDIA GTX 1060 (6 GB) or AMD RX 570 (4 GB)','8 GB RAM','70 GB 사용 가능 공간');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(5,'Intel Core i7 4790K 또는 동급의 AMD 프로세서','NVIDIA GeForce GTX 1060 또는 동급의 Radeon RX 5500 XT','16 GB RAM','15 GB 사용 가능 공간');
INSERT INTO recommend(gameid, CPU, graphic, ram, DISK) 
VALUES(6,'AMD Ryzen 3 3100 / Intel Corei7-3770','AMD Radeon RX 5700 / NVIDIA®GeForce GTX 1080 / 8GB VRAM required','12 GB RAM','100 GB 사용 가능 공간');

INSERT INTO gameimg(gameid, itemName, f1name, f2name, libraryList)
VALUES(,'','','','');
INSERT INTO gameimg(gameid, itemName, f1name, f2name, libraryList)
VALUES(1,'list/E2.jpg','list/el4.jpg','list/el5.jpg','libraryList/El3.jpg');
INSERT INTO gameimg(gameid, itemName, f1name, f2name, libraryList)
VALUES(2,'list/123.jpg','list/mon4.jpg','list/mon5.jpg','libraryList/Mon3.jpg');
INSERT INTO gameimg(gameid, itemName, f1name, f2name, libraryList)
VALUES(3,'list/1111.jpg','list/ori4.jpg','list/ori5.jpg','libraryList/114.jpg');
INSERT INTO gameimg(gameid, itemName, f1name, f2name, libraryList)
VALUES(4,'list/god2.jpg','list/god4.jpg','list/god5.jpg','libraryList/god3.jpg');
INSERT INTO gameimg(gameid, itemName, f1name, f2name, libraryList)
VALUES(5,'list/gt2.jpg','list/gt4.jpg','list/gt5.jpg','libraryList/gt3.jpg');
INSERT INTO gameimg(gameid, itemName, f1name, f2name, libraryList)
VALUES(6,'list/fl2.jpg','list/fl4.jpg','list/fl5.jpg','libraryList/fl3.jpg');

INSERT INTO library(userid, gameid) VALUES('admin',1);
INSERT INTO library(userid, gameid) VALUES('admin',2);
INSERT INTO library(userid, gameid) VALUES('admin',4);

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
DELETE FROM file;


SELECT g.gameid, i.itemName, g.gameName, g.price
FROM game g JOIN gameimg i
ON g.gameid = i.gameid;

SELECT g.gameid, i.itemName, i.f1name, i.f2name, g.gameName, g.genre, g.youtubeLink, g.gameDate, g.ration, g.price, g.gameExplain, m.CPU AS mCpu, m.graphic AS mGraphic, m.ram AS mRam, m.DISK AS mDisk, r.CPU AS rCpu, r.graphic AS rGraphic, r.ram AS rRam, r.DISK AS rDisk
FROM game g JOIN gameimg i ON g.gameid = i.gameid 
JOIN minimum m ON i.gameid = m.gameid 
JOIN recommend r ON m.gameid = r.gameid
WHERE g.gameid=3;