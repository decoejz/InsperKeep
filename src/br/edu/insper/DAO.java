package br.edu.insper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {

	private Connection connection = null;
	
	public DAO( ) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/insper_keep", "root", "");
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Nota> getLista() throws SQLException {
		List<Nota> notas = new ArrayList<Nota>();
		PreparedStatement stmt = connection.prepareStatement("SELECT * FROM nota");
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			Nota note = new Nota();
			note.setNoteId(rs.getInt("nota_id"));
			note.setTitle(rs.getString("titulo"));
			note.setNote(rs.getString("nota"));
			
			//TODO checar como pegar esse id de person que depende do person_id da tabela user
			note.setPersonId(rs.getInt("person_id"));
			
			notas.add(note);
		}
		rs.close();
		stmt.close();
		return notas;
	}
	
	public void adiciona(Nota nota) throws SQLException {
		String sql = "INSERT INTO nota" + "(nota_id,titulo,nota,person_id) values(?,?,?,?)";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, nota.getNoteId());
		stmt.setString(2, nota.getTitle());
		stmt.setString(3, nota.getNote());
		stmt.setInt(4, nota.getPersonId());
		stmt.execute();
		stmt.close();
	}
	
	
	public void close() throws SQLException {
		// TODO Auto-generated method stub
		connection.close();
	}
	
}
