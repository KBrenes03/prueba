<%-- 
    Document   : validar.jps
    Created on : 23 jul. 2021, 17:46:56
    Author     : keiia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%
    try{
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String cedula = request.getParameter("cedula");
        String direccion = request.getParameter("direccion");
        String correo = request.getParameter("correo");
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=examenP","proyecto" ,"123");
        PreparedStatement pst = conn.prepareStatement("Insert into clientes(nombre,apellido,cedula,direccion,correo) Values(?,?,?,?,?)");
        pst.setString(1, nombre);
        pst.setString(2, apellido);
        pst.setString(3, cedula);
        pst.setString(4, direccion);
        pst.setString(5, correo);
        ResultSet rs = pst.executeQuery();
        if (rs.next())
            out.println("Cliente registrado correctamente :D");
        else
            out.println("No se registro D:");
        
    }
    catch(Exception e){
        out.println(e);
        out.print("Todo bien");
    }
    

%>