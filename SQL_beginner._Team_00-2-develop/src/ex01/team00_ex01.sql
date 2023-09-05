WITH seven AS (
  SELECT *
  FROM recurse
  WHERE length(tour) = 7 AND point_2 = 'a'
)

(SELECT sum AS total_cost, CONCAT('{', tour, ',a}') AS tour FROM (SELECT * FROM recurse
         WHERE length(tour) = 7 AND point_2 = 'a') s
         WHERE sum = (SELECT MIN(sum) FROM seven))
UNION
(SELECT sum AS total_cost, CONCAT('{', tour, ',a}') AS tour  FROM (SELECT * FROM recurse
         WHERE length(tour) = 7 AND point_2 = 'a') s
         WHERE sum = (SELECT MAX(sum) FROM seven))
         ORDER BY 1, 2;

