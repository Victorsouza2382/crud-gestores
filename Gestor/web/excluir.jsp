<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executa_excluir.jsp" method="post">
            <label>Id:</label><br>
            <input type="number" name="id" value="<%=request.getParameter("id")%>"><br>
            
            <label>Nome</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"><br>
            
            <label>Matrícula</label><br> 
            <input type="number" name="matricula" value="<%=request.getParameter("matricula")%>"><br>
            
            <label>Setor</label><br>
            <input type="text" name="setor" value="<%=request.getParameter("setor")%>"><br>
            
            <button type="submit">ok</button>
            
        </form>
    </body>
</html>
