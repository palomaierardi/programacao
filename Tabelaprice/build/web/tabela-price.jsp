<%-- 
    Document   : index
    Created on : 28 de mar. de 2021, 20:23:34
    Author     : cloris avelino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <header>
          <%@include file="WEB-INF/jspf/menu.jspf" %> 
          <h1>Tabela Price</h1>
          </header>
   <body>
        <form>
           <br><input type="number" name="PV" />Valor Presente</br>
            <br><input type="number" name="i" />Taxa de Juros</br>
            <br><input type="number" name="n" />Número de Periodos</br>
            <br><input type="submit" name="somar" value="Calcular"/></br>
         </form>
        <%
    try{
        double PV = Double.parseDouble(request.getParameter("PV"));
        out.println("<h2>Valor Presente = " +PV + "</h2>"); 
         double iP = Double.parseDouble(request.getParameter("i"));
         out.println("<h2>Taxa de Juros = " +iP + "% </h2>");
         double n = Double.parseDouble(request.getParameter("n"));
         out.println("<h2>Número de períodos = " +n + " meses </h2>");
         double id = iP / 100;
         double elev = java.lang.Math.pow((1+id),n);
         double pmt = PV * (id/(1 - (1/elev)));
         out.println("<h2>Valor da Parcela = " +pmt + "</h2>");  
    } catch(Exception ex){
        
           out.println("<h2> Ocorreu um erro: " + ex.getLocalizedMessage() +"</h2>");
           }
%>
         <br></br>
         <br></br>
        <p><b>Projeto Tabela Price - Programação Orientada a Objeto - Análise e Desenvolvimento de Sistemas - Fatec PG.</b></p>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
