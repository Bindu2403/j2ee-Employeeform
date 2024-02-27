<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Employee Information</title>
</head>
<body>
    <h1>Employee Records</h1>
    <table border="1">
        <tr>
            <th>Empno</th>
            <th>Ename</th>
            <th>Job</th>
            <th>Sal</th>
        </tr>
        <%
            String url = "jdbc:mysql://localhost:3306/Mar_4";
            String username = "root";
            String password = "Binchow1428";

            try {
                Connection connection = DriverManager.getConnection(url, username, password);
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM emp");

                while (resultSet.next()) {
                    String empno = resultSet.getString("Empno");
                    String ename = resultSet.getString("Ename");
                    String job = resultSet.getString("Job");
                    String sal = resultSet.getString("Sal");

                    out.println("<tr>");
                    out.println("<td>" + empno + "</td>");
                    out.println("<td>" + ename + "</td>");
                    out.println("<td>" + job + "</td>");
                    out.println("<td>" + sal + "</td>");
                    out.println("</tr>");
                }

                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>
