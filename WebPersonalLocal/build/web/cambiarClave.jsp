<%-- 
    Document   : cambiarClave
    Created on : 18/10/2018, 05:46:19 AM
    Author     : jorgecespedestapia
--%>

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

        <div class="formulario">
            <form action="controladorcambiarclave.do">

                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" name="txtCorreo" id="correo" aria-describedby="emailHelp" placeholder="Enter email" required="">
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Nuevo Password</label>
                    <input type="password" class="form-control" name="txtClave" id="clave" placeholder="Password" required="">
                </div>

                <button type="submit" class="btn btn-primary">Actualizar Clave</button>
            </form>
        </div>

    </body>
    <%@include file="jspf/js.jspf" %>
</html>
