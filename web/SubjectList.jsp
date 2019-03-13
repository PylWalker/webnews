<%-- 
    Document   : SubjectList
    Created on : Mar 13, 2019, 4:46:54 PM
    Author     : Pyl Walker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="model.SubjectModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List</title>
    </head>
    <%
        SubjectModel model = new SubjectModel();
        ResultSet rs = model.getSubjectList();
    %>
    <body>
        <h2>Subjects List</h2>
        <table border="1" width="500">
            <thead>
                <tr>
                    <th>Subject ID</th>
                    <th>Subject Name</th>
                    <th>Manipulation</th>
                </tr>
            </thead>
            <tbody>
                <% while(rs.next()){ %>
                <tr>
                    <td><% out.println(rs.getInt("subjectID")); %></td>
                    <td><% out.println(rs.getString("subjectName")); %></td>
                    <td>
                        &nbsp;
                        <a href="DeleteSubject.jsp?subjectID=<% rs.getInt("subjectID"); %>">Delete</a>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td colspan="2">
                        &nbsp;
                        <a href="AddSubject.jsp">Add Subject</a>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
