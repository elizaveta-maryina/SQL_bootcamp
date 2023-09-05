CREATE TABLE ways (
    point_1 VARCHAR,
    point_2 VARCHAR,
    cost INTEGER
);
INSERT INTO ways (point_1, point_2, cost)
VALUES ('a', 'b', 10),
       ('b', 'a', 10),
       ('a', 'c', 15),
       ('c', 'a', 15),
       ('a', 'd', 20),
       ('d', 'a', 20),
       ('b', 'd', 25),
       ('d', 'b', 25),
       ('d', 'c', 30),
       ('c', 'd', 30),
       ('b', 'c', 35),
       ('c', 'b', 35);


CREATE VIEW recurse AS (
WITH RECURSIVE all_tours AS (
SELECT point_1 AS tour, point_1, point_2, cost, cost AS sum FROM ways
WHERE point_1 = 'a'
UNION
SELECT parent.tour || ',' || child.point_1 AS trace,
       child.point_1, child.point_2, child.cost, parent.sum  + child.cost AS sum
FROM ways AS child
INNER JOIN all_tours AS parent ON child.point_1 = parent.point_2
WHERE tour NOT LIKE '%' || child.point_1 || '%')
SELECT * FROM all_tours);

WITH seven AS (
  SELECT *
  FROM recurse
  WHERE length(tour) = 7 AND point_2 = 'a'
)

SELECT sum AS total_cost, CONCAT('{',tour, ',a}') AS tour FROM (SELECT * FROM recurse
         WHERE length(tour) = 7 AND point_2 = 'a') s
         WHERE sum = (SELECT MIN(sum) FROM seven) ORDER BY 2;
