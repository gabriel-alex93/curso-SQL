SELECT * FROM EMPLOYEES
ORDER BY SALARY;-- ORDER BY DE MENOR A MAYOR

SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;-- ORDER BY DE MAYOR A MENOR

SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME;

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE FIRST_NAME = 'David'
ORDER BY FIRST_NAME, LAST_NAME, SALARY;

SELECT FIRST_NAME, SALARY*12 FROM EMPLOYEES ORDER BY 2;-- SI TENGO UN DATO CALCULADO SE ORDENA POR LA POSICION EN EL SELECT O TAMBIEN POR UN ALIAS

SELECT FIRST_NAME, SALARY*12 AS TOTAL FROM EMPLOYEES ORDER BY TOTAL;

--FETCH: LIMITA LA CANTIDAD DE FILAS QUE DEVUELVE LA QUERY
SELECT FIRST_NAME, SALARY FROM EMPLOYEES FETCH FIRST 5 ROWS ONLY;
SELECT FIRST_NAME, SALARY FROM EMPLOYEES ORDER BY SALARY DESC FETCH FIRST 8 ROWS ONLY;
SELECT FIRST_NAME, SALARY FROM EMPLOYEES ORDER BY SALARY DESC FETCH FIRST 7 ROWS ONLY;
SELECT FIRST_NAME, SALARY FROM EMPLOYEES ORDER BY SALARY DESC FETCH FIRST 7 ROWS WITH TIES;-- AGREGA EL VALOR SI SE REPITE AL FINAL ALGUNO
SELECT FIRST_NAME, SALARY FROM EMPLOYEES ORDER BY SALARY DESC OFFSET 5 ROWS FETCH FIRST 7 ROWS WITH TIES;-- SALTA FILAS

SELECT * FROM EMPLOYEES FETCH FIRST 20 PERCENT ROWS ONLY;
