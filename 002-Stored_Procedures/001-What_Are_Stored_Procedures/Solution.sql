-- What Are Stored Procedures
/*
>>>> Why you need a stored procedure.
- If you have a database connection in your project.
- All of the sql codes should not be in the application code.
- If you have the sql codes in the application code, it will take much time to compile the code.
- Every time you need to compile the code, if you need to change the sql code.
- Also you don't want to mix you Java/Python code with the sql code.
- SQL code can be stored in a Stored Procedure in the database.
- Most DBMS performs some optimizations in the Stored Procedure, So sql code in the Stored Procedure can execute faster.
>>>> Stored Procedure
- It is a database object which contains a block of sql code.
- In application code, you can call the stored procedure.
>>>> Like views Stored Procedure allows us to enforce data security.
- We can remove direct access to all the tables.
- We can choose who can execute which stored procedures.
>>>>
>>>>
>>>>
 */