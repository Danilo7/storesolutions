<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Format Number -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String titleProduct = request.getParameter("title");
    String imageProduct = request.getParameter("image");
    String priceProduct = request.getParameter("price");
%>
<!DOCTYPE html>	
<html>
    <%@ include file="head.jsp" %>
<body class="page-product-list"> 
	<div class="page">
		<div class="container-header">
			<div class="logo">
				<a href="<%= link %>index.jsp" title="Home"><img src="<%= link %>images/logo_soluctionsInfoSoftware.png" alt="Home"/></a>
			</div>
                        <%@ include file="menu.jsp" %>
		</div>
		<div class="wrapper">
			<div class="secundary-wrapper">
				<div class="content">
                                    <h2>FINALIZAR COMPRA</h2>
                                    <c:set var="price" value="<%= priceProduct %>" />
                                    <div class="info-products">
                                        <div class="container-image">
                                            <%= "<img src="+imageProduct+">" %>
                                        </div>   
                                        <div class="container-info">
                                            <%= "<h4>Produto: " +titleProduct+ "<h4>" %>
                                            <p>Preço: R$<fmt:formatNumber value="${price}" type="number" minFractionDigits="2"/></p>                                            
                                        </div>
                                    </div>
                                    <div class="container-checkout">
                                        <form action="sucess.jsp" method="POST">
                                            <fieldset>
                                                <legend>INFORMAÇÕES DO CLIENTE</legend>
                                                <div class="input">
                                                    <label>Nome:</label>
                                                    <input type="text" name="name" required="required" />                                                    
                                                </div>
                                                <div class="input">
                                                    <label>Sobrenome:</label>
                                                    <input type="text" name="lastname" required="required" />
                                                </div>
                                                <div class="input">
                                                    <label>Email:</label>
                                                    <input type="text" name="email" required="required" />
                                                </div>
                                                <div class="input">
                                                    <label>Telefone:</label>
                                                    <input type="text" name="telephone" required="required" />
                                                </div>
                                                <div class="input">
                                                    <label>RG:</label>
                                                    <input type="text" name="rg" required="required" />                                                    
                                                </div>
                                                <div class="input">
                                                   <label>CPF:</label>
                                                   <input type="text" name="cpf" required="required" /> 
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <legend>INFORMAÇÕES DE PAGAMENTO</legend>
                                                <div class="input">
                                                    <label>Cartão:</label>
                                                    <select name="cc" required="required">
                                                        <option>Escolha...</option>
                                                        <option value="visa">Visa</option>
                                                        <option value="master">Master Card</option>
                                                        <option value="elo">Elo</option>
                                                        <option value="amex">Amex</option>
                                                    </select>
                                                </div>
                                                <div class="input">
                                                    <label>Nome Escrito no Cartão:</label>
                                                    <input type="text" name="name_cc" required="required" />                                                    
                                                </div>
                                                <div class="input">
                                                    <label>Número do Cartão:</label>
                                                    <input type="text" name="number_cc" required="required" />
                                                </div>
                                                <div class="input">
                                                    <label>Código de Segurança:</label>
                                                    <input type="text" name="code_security_cc" required="required" />
                                                </div>
                                                <div class="input">
                                                    <label>Quantidade de Parcelas</label>
                                                    <select name="qty_quota" required="required">
                                                        <option>Escolha...</option>
                                                        <option value="1">1x</option>
                                                        <option value="2">2x</option>
                                                        <option value="3">3x</option>
                                                        <option value="4">4x</option>
                                                        <option value="5">5x</option>
                                                        <option value="6">6x</option>
                                                        <option value="7">7x</option>
                                                        <option value="8">8x</option>
                                                        <option value="9">9x</option>
                                                        <option value="10">10x</option>
                                                    </select>
                                                </div>  
                                                <input type="hidden" name="price" value="<%= priceProduct %>">
                                                <button class="button" onclick="submit();">COMPRAR</button>
                                            </fieldset>                                            
                                        </form>
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
