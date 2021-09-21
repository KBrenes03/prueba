<%-- 
    Document   : principal
    Created on : 23 jul. 2021, 17:29:33
    Author     : keiia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="validar.jsp">
            <center>
                <table border="1" cellpading="5" cellspacing="2">
                    <thead><!-- comment -->
                        <tr><!-- comment -->
                            <th colspan="2">Registre sus datos acá &#128512</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nombre: </td>
                            <td><input type="text" name="nombre" required/></td>
                        </tr>
                        <tr>
                            <td>Apellido: </td>
                            <td><input type="text" name="apellido" required/></td>
                        </tr><!-- comment -->
                        <tr>
                            <td>Cedula: </td>
                            <td><input type="text" name="cedula" required/></td>
                        </tr>
                        <tr>
                            <td>Direccion </td>
                            <td><input type="text" name="direccion" required/></td>
                        </tr>
                        <tr>
                            <td>Correo electronico: </td>
                            <td><input type="text" name="correo" required/></td>
                        </tr>
                    <td colspan="2" aling="center"><input type="submit" value="Registrar" />
                        &nbsp;&nbsp;
                        <input type="reset" value="Limpiar" />
                        
                    </td>
                    </tr>
                    </tbody>
                </table>
            <!-- </center>
            <form method="post" action="borrar.jsp">
            <center>
                <table border="1" cellpading="5" cellspacing="2">
                    <thead>
                        <tr>
                            <th colspan="2">Ingrese el numero de cedula para borrar sus datos &#128531</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Cedula </td>
                            <td><input type="text" name="cedula" required/></td>
                        </tr>
                        <td colspan="2" aling="center"><input type="submit" value="Borrar" />
                       
                        </td>
                    </tr>
                    </tbody>
                </table>
            </center> -->
        </form>
        
    </body>
</html>
