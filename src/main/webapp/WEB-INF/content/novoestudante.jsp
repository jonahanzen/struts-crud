<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<s:form action="salvarEstudante">
<s:hidden name="estudante.id" />
<s:textfield name="estudante.nome" />
<s:textfield name="estudante.email" />
<s:submit action="salvarEstudante" />

</s:form>



</body>
</html>