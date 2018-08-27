package br.edu.insper;

public class Nota {
	private Integer nota_id;
	private String titulo;
	private String nota;
	private Integer person_id;

	public Integer getNoteId() {return this.nota_id;}
	public void setNoteId(Integer noteId) {this.nota_id = noteId;}
	
	public String getNote() {return this.nota;}
	public void setNote(String note) {this.nota = note;}
	
	public Integer getPersonId() {return this.person_id;}
	public void setPersonId(Integer personId) {this.person_id = personId;}
	
	public String getTitle() {return this.titulo;}
	public void setTitle(String title) {this.titulo = title;}
}
