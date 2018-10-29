<%-- 
    Document   : index
    Created on : 02/10/2018, 07:38:35 PM
    Author     : jorgecespedestapia
--%>
<% String mensaje=(String) request.getSession().getAttribute("mensaje");%>
<% String nuevaClave=(String) request.getSession().getAttribute("nuevaClave");%>
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
                <h5> Error : <%=mensaje%> </h5>
                <h5> Error : <%=nuevaClave%> </h5>
            </section>
    </body>
    <%@include file="jspf/js.jspf" %>
</html>
