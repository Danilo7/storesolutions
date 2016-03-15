<%-- 
    Document   : quem_somos
    Created on : 11/03/2016, 16:09:50
    Author     : Danilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>	
<html>
    <%@include file="head.jsp"%>
<body class="page-quem-somos"> 
	<div class="page">
		<div class="container-header">
			<div class="logo">
				<a href="index.jsp" title="Home"><img src="<%= link %>images/logo_soluctionsInfoSoftware.png" alt="Home"/></a>
			</div>
                        <%@include file="menu.jsp"%>
		</div>
		<div class="wrapper">
			<div class="secundary-wrapper">
				<div class="content">
					<div class="title"><h2>Solutions Info&Sotware</h2></div>
					<div class="description">
						<p>Nossa empresa se empenha no desenvolvimento software, ligado ao comércio, prestando serviços de ERP que são sistemas integrado em suas empresas qual seja (Atacado, Indústria, Serviços e Varejo) e suporte eficiente.</p>
						<h3 class="sub-title">Nossa Missão</h3>
						<p>A missão Solutions Info&Sotware : atingir as exigência do nosso cliente e deixar o mesmo em primeiro lugar no requisito software de linha.</p>
						<h3 class="sub-title">Produtos e Serviços</h3>
						<p>Nosso software é desenvolvido para todos os tipos de comercio do varejo, já que sua simplicidade torna um programa muito útil principalmente micro e pequenos negócios. Para uso do programa é necessário apenas um computador e fica opcional caixa registradora e leitor código de barras, facilitando a venda e pagamentos de alguns produtos.</p>
						<h3 class="sub-title">Fornecedores</h3>
						<p>A Soluctions Info&Software, além de sua própria equipe altamente qualificada, oferecendo produtos e soluções de software, também oferece soluções para o projeto da infraestrutura, consultoria de hardware e prestação de serviços de manutenção,  além de possuir parceiros reconhecidos no mercado de software e serviços: Microsoft Partner,  4Linux,  Localweb, Zênega – Tecnologia da Informação, Lorac – Suporte e Serviços e SuperMicro – Servidores, Hosts e soluções estruturais - para oferecer o melhor produto, com a melhor estrutura e segurança e manutenção.</p>

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
