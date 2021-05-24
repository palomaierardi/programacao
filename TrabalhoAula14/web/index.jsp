<%-- 
    Document   : index
    Created on : 24 de mai. de 2021, 11:41:37
    Author     : palom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - MySuperApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Início</h2>
        <%if (session.getAttribute("session.name")==null){%>
            <p>Você não tem autorização para acessar o sistema</p>
            <p></p>
            <p>Favor fazer o login!</p>
        <%} else {%>
            <p>Blablabla...</p>
        <%}%>
         <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
