<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a href="novoestudante">Novo Estudante</a>

	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Email</th>
		</tr>
		<s:iterator value="estudantes">  <!-- iterator acessa diretamente os estudantes de  EstudanteAction-->
			<tr>
			<!--  Acessa diretamente as propriedades de cada estudante -->
				<td><s:property value="id" /></td>
				<td><s:property value="nome" /></td>
				<td><s:property value="email" /></td>

				<!--  O que a url vai fazer, e atribuida essa action em uma variavel -->
				<td><s:url action="editarEstudante" var="editar">
				<!-- o parametro é colocado dentro da url, e o valor é pego da propriedade ali de cima -->
						<s:param name="estudante.id" value="%{id}"></s:param>
						<!--  a variavel ali de cima é utilizada aqui para mandar todos os dados para o link da action -->
					</s:url> <s:a href="%{editar}">
						Editar
					</s:a></td>
					
					<!--  o que a Url vai fazer, e atribuida essa action em uma variável -->
					<td><s:url action="removerEstudante" var="remover">
					<!-- o parametro é colocado dentro da url, e o valor é pego da propriedade ali de cima -->
					<s:param name="estudante.id" value="%{id}"></s:param>
					<!--  a variavel ali de cima é utilizada aqui para mandar todos os dados para o link da action -->
					</s:url> <s:a href="%{remover}">
					Remover
					</s:a></td>
		</s:iterator>

	</table>









</body>
</html>