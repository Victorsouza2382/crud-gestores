<%@page import="dao.GestorDAO"%>
<%@page import="model.Gestor"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp" method="post">

            <label>Nome:</label>

            <input type="text" name="nome">

            <button>ok</button>

        </form>

        <%
            try {
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Id</th><th>Nome</th><th>Matricula</th><th>Dta de Nascimento</th><th>Setor</th><th>Editar</th><th>Excluir</th>");
                GestorDAO ged = new GestorDAO();
                if (request.getParameter("Nome") == "" || request.getParameter("") == null) {
                    ArrayList<Gestor> lista = ged.listarTodos();
                    for (int num = 0; num < lista.size(); num++) {
                        out.print("<tr>");
                        out.print("<td>" + lista.get(num).getId_gestor() + "</td>");
                        out.print("<td>" + lista.get(num).getNome() + "</td>");
                        out.print("<td>" + lista.get(num).getMatricula() + "</td>");
                        out.print("<td>" + lista.get(num).getData_nascimento() + "</td>");
                        out.print("<td>" + lista.get(num).getSetor() + "</td");
                        out.print("<td><a href='alterar.jsp?codigo='+lista.get(num.getId_gestor()+'&nome='+lista.get(num).getNome()'+&setor='+lista.get(num).getSetor()+'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo='+lista.get(num.getId_gestor()+'&nome='+lista.get(num).getNome()'+&setor='+lista.get(num).getSetor()+'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                } else {
                    ArrayList<Gestor> lista = ged.listarTodosNome(request.getParameter("nome"));
                    for (int num = 0; num < lista.size(); num++) {
                        out.print("<tr>");
                        out.print("<td>" + lista.get(num).getId_gestor() + "</td>");
                        out.print("<td>" + lista.get(num).getNome() + "</td>");
                        out.print("<td>" + lista.get(num).getMatricula() + "</td>");
                        out.print("<td>" + lista.get(num).getData_nascimento() + "</td>");
                        out.print("<td>" + lista.get(num).getSetor() + "</td");
                        out.print("<td><a href='alterar.jsp?codigo='+lista.get(num.getId_gestor()+'&nome='+lista.get(num).getNome()'+&setor='+lista.get(num).getSetor()+'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo='+lista.get(num.getId_gestor()+'&nome='+lista.get(num).getNome()'+&setor='+lista.get(num).getSetor()+'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }

                out.print("</tr>");
                out.print("</table>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro 9: " + erro);
            }
        %>
    </body>
</html>
