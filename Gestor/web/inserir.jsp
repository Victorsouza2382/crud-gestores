<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executa_inserir.jsp" method="post">
           <!-- <label>Id:</label><br>
            <input type="number" name="id"><br>-->
            
            <label>Nome</label><br>
            <input type="text" name="nome"><br>
            
            <label>Matrícula</label><br>
            <input type="number" name="matricula"><br>
            
            <label>Data de Nascimento</label><br>
            <input type="date" name="data_nascimento"><br>
            
            <label>Setor</label><br>
            <input type="text" name="setor"><br>
            
            <button type="submit">ok</button>
            
        </form>
    </body>
</html>
