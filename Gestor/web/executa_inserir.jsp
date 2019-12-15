<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Gestor"%>
<%@page import="dao.GestorDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
           <%
            try {
                Gestor ge = new Gestor();
                GestorDAO ged = new GestorDAO();
                if (request.getParameter("nome").equals("") && request.getParameter("matricula").equals("") && request.getParameter("data_nascimento").equals("") && request.getParameter("setor").equals("")) {
                    response.sendRedirect("index.jsp");
                }else{
                    ge.setNome(request.getParameter("nome"));
                    ge.setSetor(request.getParameter("setor"));
                    ged.inserir(ge);
                    response.sendRedirect("index.jsp");
                }
            } catch (Exception erro) {
                throw new RuntimeException("Erro 7: " + erro);
            }
        %>
        
    </body>
</html>
