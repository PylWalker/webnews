<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.SubjectModel"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add</title>
    </head>
    <body>
        <%
            String subjectName = request.getParameter("txtSubjectName");
            SubjectModel model = new SubjectModel();
            model.insertSubject(subjectName);
            response.sendRedirect("SubjectList.jsp");
        %>
    </body>
</html>