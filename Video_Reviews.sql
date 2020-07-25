-- Video Reviews

DROP TABLE if EXISTS Videos;
DROP TABLE if EXISTS Reviews;

-- Creates new table for Video ID, Video Title, Video Lenght and URL 

Create Table Videos (
Video_ID int,
Video_Title varchar(255),
Video_Lenght varchar(255),
URL varchar(255));

-- Creates new table for Video ID, User Name, Ratings, and Reviewa

CREATE TABLE Reviews (
Video_ID int,
User_Name varchar(255),
Ratings int,
Review varchar(255));

-- Inserts values into video table

INSERT INTO Videos
VALUES (1, 'Frozen', '4:02', 'https://youtu.be/L0MK7qz13bU'),
(2, 'The Lion King', '3:49', 'https://youtu.be/xB5ceAruYrI'),
(3, 'Shrek 2', '18:56', 'https://youtu.be/W8D6dnIzMhc');

 -- Inserts values into reviews table
 
INSERT INTO Reviews
VALUES (1, 'Luis', 5, 'Loved it!'),
(2, 'John', 3, 'It is ok'),
(2, 'Jane', 1, 'Don''t Like It!'),
(3, 'Gina', 5, 'The Best!'),
(3, 'Samantha', 2, 'Average');

-- Joins table video and reviews to present all information
SELECT
V.Video_ID AS 'Video Number',
V.Video_Title AS 'Video Title',
V.Video_Lenght AS 'Video Lenght in Minutes',
V.URL AS 'Video URL',
R.User_Name AS 'User Name',
R.Ratings AS 'Rating from 1 to 5',
R.Review AS 'Review'
FROM Videos AS V 
INNER JOIN Reviews AS R
ON V.Video_ID = R.Video_ID;


