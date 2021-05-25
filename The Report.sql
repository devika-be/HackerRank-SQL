#Problem Link : https://www.hackerrank.com/challenges/the-report/problem

#Ans :

SELECT CASE
WHEN G.GRADE < 8 THEN NULL
ELSE S.NAME
END AS NAME,
G.GRADE,
S.MARKS
FROM STUDENTS S
INNER JOIN GRADES G ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY G.GRADE DESC,
NAME,
MARKS;
