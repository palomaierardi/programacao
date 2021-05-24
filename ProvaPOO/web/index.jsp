<%-- 
    Document   : index
    Created on : 12 de abr. de 2021, 13:56:39
    Author     : cloris avelino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
        <%if(session.getAttribute("session.username") ==null){%>
        <div style='color:red'>Você não tem permissão para acessar essa página</div>
        <%} else  { %>
        <h2>RA: 1290482012025</h2>
        <h2>Paloma Ierardi Avelino</h2>
        <h2>Ingressei na fatec no 1º Semestre de 2020</h2>
        <a href="https://github.com/palomaierardi/programacao">GitHub</a>
            <%}%>  
    </body>
</html>
