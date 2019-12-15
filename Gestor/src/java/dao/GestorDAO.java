package dao;

import model.Gestor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class GestorDAO {

    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Gestor> lista = new ArrayList<>();

    public GestorDAO() {
        conn = new ConnectionFactory().getConexao();
    }

    public void inserir(Gestor gestor) {
        String sql = "INSERT INTO gestor (nome, matricula, data_nascimento, setor) VALUES (?,?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, gestor.getNome());
            stmt.setInt(2, gestor.getMatricula());
            stmt.setDate(3, gestor.getData_nascimento());
            stmt.setString(4, gestor.getSetor());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 2:" + erro);
        }
    }

    public void alterar(Gestor gestor) {
        String sql = "UPDATE gestor SET nome = ?, matricula = ?, data_nascimento = ?, setor = ? WHERE id_gestor = ?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, gestor.getNome());
            stmt.setInt(2, gestor.getMatricula());
            stmt.setDate(3, gestor.getData_nascimento());
            stmt.setString(4, gestor.getSetor());
            stmt.setInt(5, gestor.getId_gestor());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 3:" + erro);
        }
    }

    public void excluir(int valor) {
        String sql = "DELETE FROM gestor WHERE id_gestor =" + valor;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 4:" + erro);
        }
    }

    public ArrayList<Gestor> listarTodos() {
        String sql = "SELECT * FROM gestor";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Gestor gestor = new Gestor();
                gestor.setId_gestor(rs.getInt("id_gestor"));
                gestor.setNome(rs.getString("nome"));
                gestor.setMatricula(rs.getInt("matricula"));
                gestor.setData_nascimento(rs.getDate("data_nascimento"));
                gestor.setSetor(rs.getString("setor"));
                lista.add(gestor);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 5:" + erro);
        }
        return lista;
    }
      public ArrayList<Gestor> listarTodosNome(String valor) {
        String sql = "SELECT * FROM gestor WHERE nome LIKE '%"+valor+"%'";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Gestor gestor = new Gestor();
                gestor.setId_gestor(rs.getInt("id_gestor"));
                gestor.setNome(rs.getString("nome"));
                gestor.setMatricula(rs.getInt("matricula"));
                gestor.setData_nascimento(rs.getDate("data_nascimento"));
                gestor.setSetor(rs.getString("setor"));
                lista.add(gestor);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 5:" + erro);
        }
        return lista;
    }
    
}

