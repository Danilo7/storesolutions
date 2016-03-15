<%-- 
    Document   : index
    Created on : 09/03/2016, 12:27:46
    Author     : Danilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String connectionURL = "jdbc:derby://localhost:1527/storesolutions";
            String User = "root";
            String Pass = "";
            Connection connection = DriverManager.getConnection(connectionURL);
            Statement statement = null; 
            ResultSet rs = null;
        %>
        <%
            statement = connection.createStatement();   
            rs = statement.executeQuery("SELECT * FROM PRODUCT");
            out.println("<ul class=\"grid-product\">");
            while (rs.next()) {
                out.println("<li>");
                    out.println("<div>");
                        out.println("<img src=\"../"+rs.getString("IMAGE")+"\">");
                        out.println("<h4>"+rs.getString("TITLE")+"</h4>");
                        out.println("<span>R$ "+rs.getString("PRICE")+"</span>");
                        out.println("<p>"+rs.getString("DESCRIPTION")+"</p>");
                    out.println("</div>");
                    out.println("<a href=\"http://localhost:47721/storesolutions/pages/cart.jsp?title=" +rs.getString("TITLE")+ "&image=../" +rs.getString("IMAGE")+ "&price=" +rs.getString("PRICE")+ "\">Comprar</a>");
                out.println("</li>");
            }
            out.println("</ul>");
            rs.close();
        %>        
    </body>
</html>
