<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
              GestorDAO ged = new GestorDAO();
              ged.excluir(Integer.parseInt(request.getParameter("id")));
              response.sendRedirect("index.jsp");
            }catch(Exception erro) {
                throw new RuntimeException("Erro 9: " + erro);
            }
        %>

    </body>
</html>
