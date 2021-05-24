<%-- 
    Document   : index
    Created on : 12 de abr. de 2021, 13:09:54
    Author     : cloris avelino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("inserir") != null)  {
        session.setAttribute("session.EFP1", request.getParameter("EFP1"));
        session.setAttribute("session.EFP2", request.getParameter("EFP2"));
        session.setAttribute("session.ESP1", request.getParameter("ESP1"));
        session.setAttribute("session.ESP2", request.getParameter("ESP2"));
        session.setAttribute("session.EDP1", request.getParameter("EDP1"));
        session.setAttribute("session.EDP2", request.getParameter("EDP2"));
        session.setAttribute("session.IP1", request.getParameter("IP1"));
        session.setAttribute("session.IP2", request.getParameter("IP2"));
        session.setAttribute("session.IHCP1", request.getParameter("IHCP1"));
        session.setAttribute("session.IHCP2", request.getParameter("IHCP2"));
        session.setAttribute("session.LPP1", request.getParameter("LPP1"));
        session.setAttribute("session.LPP2", request.getParameter("LPP2"));
        session.setAttribute("session.MPP1", request.getParameter("MPP1"));
        session.setAttribute("session.MPP2", request.getParameter("MPP2"));
        session.setAttribute("session.POOP1", request.getParameter("POOP1"));
        session.setAttribute("session.POOP2", request.getParameter("POOP2"));
        response.sendRedirect(request.getRequestURI());
    }
    %>
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
        <form>
            <table border="2">
    <tr>
        <td><h3><b>Matéria</b></h3></td>
        <td><h3><b>Nota P1</b></h3></td>
        <td><h3><b>Nota P2</b></h3></td>
    </tr>
    <tr>
        <td>Economia e Finanças</td>
        <td><input type="number" name="EFP1"/></td>
        <td><input type="number" name="EFP2"/></td>
    </tr>
    <tr>
        <td>Engenharia de Software 2</td>
        <td><input type="number" name="ESP1"/></td>
        <td><input type="number" name="ESP2"/></td>
    </tr>
    <tr>
        <td>Estrutura de Dados</td>
        <td><input type="number" name="EDP1"/></td>
        <td><input type="number" name="EDP2"/></td>
    </tr>
    <tr>
        <td>Inglês 3</td>
        <td><input type="number" name="IP1"/></td>
        <td><input type="number" name="IP2"/></td>
    </tr>
    <tr>
        <td>Interação Humano Computador</td>
        <td><input type="number" name="IHCP1"/></td>
        <td><input type="number" name="IHCP2"/></td>
    </tr>
    <tr>
        <td>Linguagem de Programação 4 - INTERNET</td>
        <td><input type="number" name="LPP1"/></td>
        <td><input type="number" name="LPP2"/></td>
    </tr>
    <tr>
        <td>Metodologia da Pesquisa Científico-Tecnológica</td>
        <td><input type="number" name="MP1"/></td>
        <td><input type="number" name="MP2"/></td>
    </tr>
    <tr>
        <td>Programação Orientada a Objetos</td>
        <td><input type="number" name="POOP1"/></td>
        <td><input type="number" name="POOP2"/></td>
    </tr>
</table>
            <input type="submit" name="inserir" value="Inserir"/>
        </form>
            <%}%>  
    </body>
</html>
