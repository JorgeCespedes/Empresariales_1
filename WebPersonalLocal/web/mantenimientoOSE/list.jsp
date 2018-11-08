<%-- 
    Document   : list
    Created on : 29/10/2018, 06:31:12 AM
    Author     : jorgecespedestapia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Local</title>
        <%@include file="../jspf/estilos.jspf" %>
        <%@include file="../jspf/header.jspf" %>
    </head>
    
    <body>
        <%@include file="../jspf/nav.jspf" %>
        
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
                
                <br>
                <table border="1" class="table table-bordered table-hover table-sm">
                    <thead>
                        <tr style="text-align: center">
                            <th>Nro</th>
                            <th>Nombre del OSE</th>
                            <th>Denominación</th>
                            <th> Accion </th>
                        </tr>
                    </thead>
                    
                    <tfoot>
                        <tr style="text-align: center">
                            <th>Nro</th>
                            <th>Nombre del OSE</th>
                            <th>Denominación</th>
                            <th>Accion </th>
                            
                        </tr>
                    </tfoot>
                    
                    <tbody>
                        <c:forEach var="osesMision" items="${sessionScope.Lista}">
                        <tr>
                            <td style="text-align: center">${osesMision.idOSE}</td>
                            <td>${osesMision.nombreOSE}</td>
                            <td style="text-align: center">${osesMision.denominacionOSE}</td>
                            <td style="text-align: center"> 
                                <a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" > <i class="fas fa-eye"></i> </a> 
                                <a href="#" class="btn btn-success btn-lg active" role="button" aria-pressed="true" > <i class="fas fa-edit"></i> </a>
                                <!-- <a href="#" class="btn btn-danger btn-lg active" role="button" aria-pressed="true" > <i class="fas fa-trash-alt"></i> </a> -->
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>

                
            </div>
                                   
            <div class="col-lg-1"></div>
        </div>
        <%@include file="../jspf/footer.jspf" %>
    </body>
    <%@include file="../jspf/js.jspf" %>
</html>
