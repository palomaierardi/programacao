<%-- 
    Document   : index
    Created on : 5 de abr. de 2021, 13:06:06
    Author     : cloris avelino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - Java Attributes</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <%if(session.getAttribute("session.username") ==null){%>
        <div style='color:red'>Você não tem permissão para acessar essa página</div>
        <%} else  { %>
        <h2>Página 1</h2>
        <p>Aplicação de demonstração do uso do HttpSession</p>
            <%}%>  
        <br></br> 
        <%@include file="WEB-INF/jspf/rodape.jspf" %> 
    </body>
</html>