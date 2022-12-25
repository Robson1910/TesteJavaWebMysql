/**
 * Confirmação de exclusão de contato
 */
 
 function confirmar(idcon){
	
	let resposta = confirm("Confirma a exclusão desse contato?")
	if(resposta === true){
		window.location.href = "deletar?idcon=" + idcon
	}
}