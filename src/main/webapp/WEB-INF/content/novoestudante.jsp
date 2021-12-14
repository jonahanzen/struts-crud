<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<!--  vai chamar a @Action salvarEstudante -->
<s:form action="salvarEstudante">
<!-- os campos são mapeados diretamente com as propriedades da classe responsável por mandar para esta página -->
<!-- na action eu tenho um estudante, entao é possível acessar ele por aqui, ou "injetar" valores -->
<!--  ao carregar a página, o struts chama o getEstudante, ao enviar o form, chama o setEstudante -->

<!--  O form também é utilizado para alterar usuario, o campo hidden apenas mapeia o id -->
<s:hidden name="estudante.id" />
<s:textfield name="estudante.nome" />
<s:textfield name="estudante.email" />
<s:submit action="salvarEstudante" />

</s:form>



</body>
</html>