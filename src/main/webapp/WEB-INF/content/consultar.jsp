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
		<s:iterator value="estudantes">
			<tr>
				<td><s:property value="id" /></td>
				<td><s:property value="nome" /></td>
				<td><s:property value="email" /></td>

				<td><s:url action="editarEstudante" var="editar">
						<s:param name="estudante.id" value="%{id}"></s:param>
					</s:url> <s:a href="%{editar}">
						Editar
					</s:a></td>
					
					<td><s:url action="removerEstudante" var="remover">
					<s:param name="estudante.id" value="%{id}"></s:param>
					</s:url> <s:a href="%{remover}">
					Remover
					</s:a></td>
		</s:iterator>

	</table>









</body>
</html>