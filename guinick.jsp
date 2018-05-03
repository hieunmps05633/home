<%-- 
    Document   : guinick
    Created on : Apr 20, 2018, 1:25:48 AM
    Author     : hieuhayho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="form/${name.id}.htm" method="post">
            <input type="text" name="id" >
            <input type="submit">
        </form>
    </body>
</html>
