<%-- 
    Document   : index
    Created on : 02/10/2018, 07:38:35 PM
    Author     : jorgecespedestapia
--%>
<% String error=(String) request.getSession().getAttribute("error");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Local</title>
        <%@include file="jspf/estilos.jspf" %>
        <%@include file="jspf/header.jspf" %>
    </head>
    <body>
            <section>
                <h3> Error : <%=error%> </h3>
            </section>
    </body>
    <%@include file="jspf/js.jspf" %>
</html>

