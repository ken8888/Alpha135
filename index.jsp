    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
        <title>Classes</title>
        </head>

        <body>
        <table border="1">
        <tr>

        <td>

        <%-- Set the scripting language to Java and --%>
        <%-- Import the java.sql package --%>
        <%@ page language="java" import="java.sql.*" %>

        <%-- -------- Open Connection Code -------- --%>
            <%
                try {
                Class.forName("org.postgresql.Driver11");
               					Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/cse135", "postgres", "iampig");


            %>
        <table border="1">
        <tr>
        <th>Section ID</th>
        <th>Course Number</th>
        <th>Term</th>
        <th>Instructor</th>
        <th>Enrolled</th>
        <th>Limit</th>
        <th>Waitlist</th>
        <th>Action</th>
        </tr>
        <%-- -------- Close Connection Code -------- --%>
            <%

                } catch (SQLException sqle) {
                    out.println("error");
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            %>
        </table>
        </td>
        </tr>
        </table>
        </body>

        </html>