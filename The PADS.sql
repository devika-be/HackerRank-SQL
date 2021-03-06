#Problem Link : https://www.hackerrank.com/challenges/the-pads/problem

#Ans :

SELECT NAME || '(' || SUBSTR(OCCUPATION, 1, 1) || ')'
FROM OCCUPATIONS
ORDER BY NAME;
SELECT 'There are a total of ' || X.O_COUNT || ' ' || LOWER(X.OCCUPATION) || 's.'
FROM
(SELECT OCCUPATION,
COUNT(OCCUPATION) AS O_COUNT
FROM OCCUPATIONS
GROUP BY OCCUPATION) X
ORDER BY X.O_COUNT,
X.OCCUPATION;
