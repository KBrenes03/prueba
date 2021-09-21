<%-- 
    Document   : borrar
    Created on : 24/07/2021, 12:10:24 AM
    Author     : keiia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%
    try{
        String cedula = request.getParameter("cedula");
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=examenP","proyecto" ,"123");
        PreparedStatement pst = conn.prepareStatement("DELETE FROM clientes WHERE cedula=cedula; ");
        pst.setString(1, cedula);
        ResultSet rs = pst.executeQuery();
        if (rs.next())
            out.println("Cliente borrado correctamente ");
        else
            out.println("No se borro ");
        
    }
    catch(Exception e){
        out.println(e);
        out.print("Todo bien");
    }
    
%>