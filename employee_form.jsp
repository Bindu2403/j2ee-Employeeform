<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> 

</head>
<body>
<h1>Add Employee</h1>

    <form action="insert_employee.jsp" method="post">
    
        Employee number: <input type="text" name="empno"><br>
        Employee name: <input type="text" name="ename"><br>
        Job Description: <input type="text" name="job"><br>
        Salary: <input type="text" name="sal"><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>