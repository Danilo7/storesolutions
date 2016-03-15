<%-- 
    Document   : head
    Created on : 11/03/2016, 15:58:39
    Author     : Danilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String link = "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>
<head>
    <meta charset="utf-8">
    <title>Solutions Info & Software</title>
    <link rel="stylesheet" href="<%= link %>css/style.css"/>
    <script type="text/javascript" src="<%= link %>js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="<%= link %>js/scripts.js"></script>
    <script>
        alert('<%= link %>');
    </script>
</head> 
