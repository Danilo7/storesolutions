<%-- 
    Document   : menu
    Created on : 11/03/2016, 15:50:23
    Author     : Danilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String url = "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>
<menu class="container-menu">
    <ul id="nav">
        <li class="item home"><a href="<%= url %>">Home</a></li>
        <li class="item"><a href="<%= url %>pages/product_list.jsp">Loja Online</a>
        <li class="item"><a href="javascript:void(0)">Serviços</a>
                <ul class="submenu">
                        <li class="subitem"><a href="<%= url %>pages/atacado.jsp">Atacado</a></li>
                        <li class="subitem"><a href="<%= url %>pages/industria.jsp">Indústria</a></li>
                        <li class="subitem"><a href="<%= url %>pages/servicos_sub.jsp">Serviços</a></li>
                        <li class="subitem"><a href="<%= url %>pages/varejo.jsp">Varejo</a></li>
                </ul>
        </li>                                    
        <li class="item"><a href="<%= url %>pages/quem_somos.jsp">Quem somos</a></li>
        <li class="item"><a href="<%= url %>pages/contatos.jsp">Contatos</a></li>
    </ul>    
</menu>
