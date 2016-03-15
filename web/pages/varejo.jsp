<%-- 
    Document   : varejo
    Created on : 11/03/2016, 16:12:07
    Author     : Danilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>	
<html>
    <%@include file="head.jsp"%>
<body class="page-servicos"> 
	<div class="page">
		<div class="container-header">
			<div class="logo">
				<a href="<%= link %>" title="Home"><img src="<%= link %>images/logo_soluctionsInfoSoftware.png" alt="Home"/></a>
			</div>
                        <%@include file="menu.jsp"%>
		</div>
		<div class="wrapper">
			<div class="secundary-wrapper">
				<div class="content">
					<div class="title"><h2>Varejo</h2></div>
					<div class="description">
						<p>Varejo - Aumente a produtividade e o lucro de suas Lojas com software de gestão ERP ideal para o Varejo.</p>
					</div>
					<div class="main-banner">
						<img src="<%= link %>images/banner-varejo.jpg" title="Varejo" />
					</div>
				</div>
			</div>
		</div>
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
	</div>
</body>
</html>
