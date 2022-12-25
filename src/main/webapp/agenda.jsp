<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.JavaBeans" %>
<%@ page import = "java.util.ArrayList" %>
<%
	@ SuppressWarnings("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Agenda de contatos</title>
		<link rel="icon" href="imagens/favicon.png">
		<link rel="styLesheet" href="style.css">
	</head>
	<body>
		<h1>Agenda de contatos</h1>
		<a href="novo.html" class="Botao1">Novo Contato</a>
		<a href="report" class="Botao1">Gerar PDF</a>
		<table id="tabela">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Telefone</th>
					<th>E-mail</th>
					<th>Opações</th>
				</tr>
			</thead>
			<tbody>
				<%for(JavaBeans x : lista){ %>
					<tr class ="linhaTr">
						<td><%= x.getIdcon() %> </td>
						<td><%= x.getNome() %> </td>
						<td><%= x.getFone() %> </td>
						<td><%= x.getEmail() %> </td>
						<td><a href="select?idcon=<%=x.getIdcon() %>" class="Botao2">Editar</a>
						<a href="javascript: confirmar(<%=x.getIdcon() %>)" class="Botao3">Excluir</a></td>
					</tr>
				<%}%>
			</tbody>
		</table>
		<script type="text/javascript" src="scripts/confirmador.js"></script>
	</body>
</html>