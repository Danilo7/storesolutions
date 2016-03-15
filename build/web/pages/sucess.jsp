<%-- 
    Document   : sucess
    Created on : 14/03/2016, 16:34:10
    Author     : Danilo
--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<!-- Format Number -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <% try{ %>
                                    <%
                                        //Info Customer
                                        String name             = request.getParameter("name");
                                        String lastname         = request.getParameter("lastname");
                                        String email            = request.getParameter("email");
                                        String telephone        = request.getParameter("telephone");
                                        String rg               = request.getParameter("rg");
                                        String cpf              = request.getParameter("cpf");

                                        //Info Payment Method
                                        String typeCreditCard   = request.getParameter("cc");
                                        String name_cc          = request.getParameter("name_cc");
                                        String number_cc        = request.getParameter("number_cc");
                                        String code_security_cc = request.getParameter("code_security_cc");
                                        int qty_quota           = Integer.parseInt(request.getParameter("qty_quota"));
                                        int price               = Integer.parseInt(request.getParameter("price"));

                                        int total             = price/qty_quota;
                                    %>                                    
                                    <h1>Pedido de Compra realizado com Sucesso!</h1>
                                    <br/>
                                    <hr>
                                    <br/>
                                    <c:set var="price" value="<%= price %>" />
                                    <c:set var="quote_price" value="<%= total %>" />
                                    <div>
                                        <h3>Cliente:</h3>
                                        <br/>
                                        <p>Nome: <%= name +' '+lastname %></p>
                                        <p>Email: <%= email %></p>
                                        <p>Telefone: <%= telephone %></p>
                                        <p>RG: <%= rg %></p>
                                        <p>CPF: <%= cpf %></p>
                                        <br/>
                                        <hr>
                                        <br/>
                                        <h3>Pagamento:</h3>
                                        <br/>
                                        <p>Cartão de Crédito: <%= typeCreditCard %></p>
                                        <p>Nome escrito no cartão: <%= name_cc %></p>
                                        <p>Número do Cartão: <%= number_cc %></p>
                                        <p>Códido de Segurança: <%= code_security_cc %></p>
                                        <p>Parcelas: <%= qty_quota %></p>
                                        <br/>
                                        <hr>
                                        <br/>
                                        <h4>Total da Compra: R$<fmt:formatNumber value="${price}" type="number" minFractionDigits="2"/> em <%= qty_quota %>x de R$<fmt:formatNumber value="${quote_price}" type="number" minFractionDigits="2"/></h4>
                                    </div>                                
                                <%}catch(Exception e){%>
                                    <h1>Dados incorretos!</h1>
                                    <% request.getRequestDispatcher("cart.jsp"); %>
                                <%}%>
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
