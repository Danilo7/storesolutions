<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Format Number -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>	
<html>
    <%@ include file="head.jsp" %>
<body class="page-product-list"> 
	<div class="page">
		<div class="container-header">
			<div class="logo">
				<a href="<%= link %>" title="Home"><img src="<%= link %>images/logo_soluctionsInfoSoftware.png" alt="Home"/></a>
			</div>
                        <%@ include file="menu.jsp" %>
		</div>
		<div class="wrapper">
			<div class="secundary-wrapper">
				<div class="content">
                                    <!-- GET DATA PRODUCTS -->
                                    <% try{ %>
                                        <%
                                            String connectionURL = "jdbc:derby://localhost:1527/storesolutions";
                                            String User = "root";
                                            String Pass = "";
                                            Connection connection = DriverManager.getConnection(connectionURL);
                                            Statement statement = null; 
                                            ResultSet rs = null;
                                        %>
                                        <% statement = connection.createStatement(); %>
                                        <% rs = statement.executeQuery("SELECT * FROM PRODUCT"); %>
                                        <ul class="grid-product">
                                            <% while (rs.next()) { %>
                                            <li>
                                                <c:set var="price" value="<%= rs.getString("PRICE") %>" />
                                                <div>
                                                    <img src="<%= link+rs.getString("IMAGE") %>" />
                                                    <h4><%= rs.getString("TITLE") %></h4>
                                                    <span>R$<fmt:formatNumber value="${price}" type="number" minFractionDigits="2"/></span>
                                                    <p><%= rs.getString("DESCRIPTION") %></p>
                                                </div>                                                
                                                <a href="<%= link+"pages/cart.jsp?title=" +rs.getString("TITLE")+ "&image=../" +rs.getString("IMAGE")+ "&price=" +rs.getString("PRICE") %>">Comprar</a>
                                            </li>
                                            <% } %>
                                            <% rs.close(); %>
                                        <% }catch(Exception e){ 
                                                out.println("<h1>Desculpe o transtono, em breve a loja estará disponível</h1><br/><br/><br/><br/>" + e.getMessage()); 
                                        } %>
                                    </ul>
				</div>
			</div>
		</div>
            <footer>
                <div class="container-footer">
                        <div class="footer">
                                <ul class="endereco">
                                        <li class="title"><h2>Localização</h2></li>
                                        <li><span>CEP: 00000-000</span></li>
                                        <li><span>Rua: Nome da Rua</span></li>
                                        <li><span>Cidade: São Paulo - SP</span></li>
                                </ul>
                                <div class="linha-divisoria"></div>
                                <ul class="sobre">
                                        <li class="title"><h2>Integrantes</h2></li>
                                        <li><span>Danilo Cavalcanti<span></li>
                                        <li><span>Vinicius Rossitto<span></li>
                                        <li><span>Eric Soares<span></li>
                                        <li><span>Pedro Alexandrino<span></li>
                                        <li><span>Luis Claudio<span></li>
                                </ul>
                                <div class="linha-divisoria"></div>
                                <ul class="fale-conosco">
                                        <li class="title"><h2>Fale Conosco</h2></li>
                                        <li><span>Tel 1: 0000 - 00000</span></li>
                                        <li><span>Tel 2: 0000 - 00000</span></li>
                                        <li><span>Email: contato@solutionsinfo.com.br</span></li>
                                </ul>
                        </div>
                </div>
                <div id="copyright">
                        <h2>Todos os direitos reservados Solution Info & Software</h2>
                </div>  
            </footer>
	</div>
</body>
</html>
