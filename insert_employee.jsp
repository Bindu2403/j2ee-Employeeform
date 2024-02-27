<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String empno = request.getParameter("empno");
    String ename = request.getParameter("ename");
    String job = request.getParameter("job");
    String sal = request.getParameter("sal");

    // Database connection settings
    String url = "jdbc:mysql://localhost:3306/Mar_4";
    String username = "root";
    String password = "Binchow1428";

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish a database connection
        Connection connection = DriverManager.getConnection(url, username, password);

        // Enable auto-commit
        connection.setAutoCommit(true); // This line enables auto-commit

        // Create a SQL INSERT statement
        String insertQuery = "INSERT INTO emp (Empno, Ename, Job, Sal) VALUES (?, ?, ?, ?)";

        // Prepare the statement
        PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
        preparedStatement.setString(1, empno);
        preparedStatement.setString(2, ename);
        preparedStatement.setString(3, job);
        preparedStatement.setString(4, sal);

        // Execute the query
        preparedStatement.executeUpdate();

        // Close resources
        preparedStatement.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Employee Information</title>
</head>
<body>
    <h1>Employee Added Successfully</h1>
    <p><a href="employee_form.jsp">Add Another Employee</a></p>
</body>
</html>
