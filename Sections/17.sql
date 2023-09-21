-- Section 17.293
CREATE DATABASE insta; 

USE insta; 

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    username VARCHAR(255) UNIQUE NOT NULL, 
    created_at TIMESTAMP DEFAULT NOW()
);

-- Section 17.295

CREATE TABLE photos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO photos (image_url, user_id) VALUES 
('/alskjd76', 1),
('/lkajsd98', 2),
('/90jddlkj', 2);

SELECT * 
FROM photos 
JOIN users
    ON photos.user_id = users.id;

-- Section 17.297

CREATE TABLE comments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)
);

INSERT INTO comments (comment_text, user_id, photo_id) VALUES 
('Meow!', 1, 2),
('Amazing Shot!', 1, 3),
('I heart this', 1, 1);

-- Section 17.299

CREATE TABLE likes(
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY (user_id, photo_id)
);

INSERT INTO likes(user_id, photo_id) VALUES
(1,1),
(1,2),
(2,1),
(1,3),
(3,3);

-- Section 17.301

CREATE TABLE follows(
    follower_id INTEGER NOT NULL,
    followed_id INTEGER NOT NULL, 
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followed_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followed_id)
);

INSERT INTO follows(follower_id, followed_id) VALUES
(1,2),
(1,3),
(3,1),
(2,3);

-- Section 17.304

CREATE TABLE tags(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags(
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);

INSERT INTO tags(tag_name) VALUES
('adorable'),
('cute'),
('sunrise');

INSERT INTO photo_tags(photo_id, tag_id) VALUES
(1,1),
(1,2),
(2,3),
(3,2);