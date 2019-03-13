<%-- 
    Document   : AddSubject
    Created on : Mar 13, 2019, 5:26:37 PM
    Author     : Pyl Walker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add</title>
    </head>
    <body>
        <table border="0" width="500">
            <form name="formAddSubject" action="processAddSubject.jsp">
                <tbody>
                    <tr>
                        <td>Subject Name:</td>
                        <td><input type="text" name="txtSubjectName" placeholder="Enter Subject Name"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type="submit" name="btnSubmit" value="Submit">
                            <input type="reset" name="btnReset" value="Reset">
                        </td>
                    </tr>
                </tbody>
            </form>
        </table>
    </body>
</html>
