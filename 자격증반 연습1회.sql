-- practice라는 데이터베이스 생성 (데이터베이스 이름은 단수로)
CREATE DATABASE practice;

-- 생성된 데이터베이스에 접근한다.
USE practice;

-- 테이블 생성
CREATE TABLE practice (
	id			INT			NOT NULL	AUTO_INCREMENT		PRIMARY KEY,
    nick		VARCHAR(35)	NOT NULL,
	gender		VARCHAR(15)	NOT NULL,
	birth		DATE		NOT NULL,
    loc			VARCHAR(35)	NOT NULL,
	genre		VARCHAR(10)	NOT NULL
);

DROP TABLE practice;
COMMIT;

-- 데이터 추가하기
INSERT INTO practice 
	(nick, gender, birth, loc, genre) 
VALUES 
	("파이리", "수컷", "1999/04/05", "태초마을", "불타입"),
	("꼬북이", "암컷", "2000/03/01", "태초마을", "물타입"),
    ("이상해씨", "수컷", "2001/05/05", "금관시티" "풀타입"),
    ("리아코", "수컷", "2004/08/09", "관동지방", "물타입"),
    ("치코리타", "암컷", "2005/07/14", "금관시티", "풀타입"),
    ("부케인", "암컷", "2007/02/03", "관동지방", "불타입");
    
INSERT INTO practice (
          nick,
          gender,
          birth,
          loc,
          genre
      ) VALUES (
		"부케인",
        "암컷",
        "2007/02/03",
        "관동지방",
        "불타입"
);
    
-- 데이터를 조회한다.
SELECT * FROM practice; 

--  practice 테이블안에 id, nick, genre가 "불타입" 인것만 조회하기.
SELECT 	id, 
		nick,
		genre
  FROM	practice
 WHERE 	genre = "불타입"; 

-- practice 테이블안에 id, nick, gender가 "수컷" 인것만 조회하기. 
SELECT	id,
		nick,
        gender
  FROM	practice
 WHERE 	gender = "수컷";
 
--  practice 테이블안에 id, nick, gender가 "수컷" 이고 genre가 "불타입" 인것만 조회하기.
SELECT	id,
		nick,
        gender,
        genre
  FROM  practice
 WHERE 	gender = "수컷"
   AND	genre = "불타입";







