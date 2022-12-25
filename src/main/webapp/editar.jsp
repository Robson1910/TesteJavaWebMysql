<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<title>Agenda de contatos</title>
		<link rel="icon" href="imagens/favicon.png">
		<link rel="styLesheet" href="style.css">
	</head>
	<body>
		<h1>Editar contato</h1>
		<form name="frmContato" action="update">
			<table>
				<tr>
					<td> <input id="Caixa3" value="<%out.print(request.getAttribute("idcon")); %>" type="text" name = "idcon" autocomplete="off" readonly></td>
				</tr>
				<tr>
					<td> <input class="Caixa1" value="<%out.print(request.getAttribute("nome")); %>" type="text" name = "nome" autocomplete="off"></td>
				</tr>
				<tr>
					<td> <input class="Caixa2" value="<%out.print(request.getAttribute("fone")); %>" type="text" name = "fone" autocomplete="off"></td>
				</tr>
				<tr>
					<td> <input class="Caixa1" value="<%out.print(request.getAttribute("email")); %>" type="text" name = "email" autocomplete="off"></td>
				</tr>
			</table>
		</form>
		<button class="Botao1" onclick="validar()">Salvar</button>
		<button class="Botao1" onclick="cancelar()">Cancelar</button>
		<script type="text/javascript" src="scripts/validador.js"></script>
		<script type="text/javascript" src="scripts/cancelar.js"></script>
	</body>
</html>