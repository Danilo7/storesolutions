<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>	
<html>
    <%@ include file="pages/head.jsp" %>
<body class="page-index"> 
	<div class="page">
		<div class="container-header">
			<div class="logo">
				<a href="<%= link %>index.jsp" title="Home"><img src="<%= link %>images/logo_soluctionsInfoSoftware.png" alt="Home"/></a>
			</div>
                        <%@ include file="pages/menu.jsp" %>
		</div>
		<div class="wrapper">
			<div class="secundary-wrapper">
				<div class="content">
					<div class="title"><h2>Solutions Info&Sotware</h2></div>
					<div class="banner-home">
						<img src="<%= link %>images/banner-tecnologia.jpg" />
					</div>
					<div class="description">
						<div class="container-text"><p>Nossa empresa se empenha no desenvolvimento software, ligado ao comércio, prestando serviços de ERP que são sistemas integrado em suas empresas qual seja (Atacado, Indústria, Serviços e Varejo) e suporte eficiente.</p></div>
						<div class="container-text"><p>A Solutions Info&Sotware é uma empresa que atua com serviços no desenvolvimento software, ligado ao comércio, prestando serviços de ERP que são sistemas integrado em suas empresas qual seja (Atacado, Indústria, Serviços e Varejo) e suporte eficiente. Localizada em São Paulo, um dos maiores pólos comerciais e financeiros do nosso País, a nossa expectativa é criar uma grande cartela de clientes corporativos, que buscam qualidade, eficiência, segurança e suporte acessível na aquisição dos nossas ferramentas e serviços.</p></div>
					</div>
					<div class="destaque">
						<div class="sub-title"><h3>Serviços</h3></div>
						<div class="content-banners-destaques">
							<div class="banner">
								<a href="<%= link %>atacado.html" title="Atacado">
									<div class="hover-banner"><div class="title-destaques"><h4>Atacado</h4></div></div>
									<img src="<%= link %>images/atacado.jpg" alt=""/> 
								</a> 
							</div>
							<div class="banner">
								<a href="<%= link %>industria.html" title="Indústria">
									<div class="hover-banner"><div class="title-destaques"><h4>Indústria</h4></div></div>
									<img src="<%= link %>images/industria-automotriz.jpg" alt=""/>
								</a> 
							</div>
							<div class="banner">
								<a href="<%= link %>servicos_sub.html" title="Serviços">
									<div class="hover-banner"><div class="title-destaques"><h4>Serviços</h4></div></div>
									<img src="<%= link %>images/servicos.jpg" alt=""/>
								</a> 
							</div>
							<div class="banner">
								<a href="<%= link %>varejo.html" title="Varejo">
									<div class="hover-banner"><div class="title-destaques"><h4>Varejo</h4></div></div>
									<img src="<%= link %>images/varejo.jpg" alt=""/>
								</a> 
							</div>
						</div>
					</div>
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