package com.decorame.beans;

public class AmbienteDTO {
	
	private Integer idAmbiente;
	private String nombre;

	public AmbienteDTO() {

	}

	public Integer getIdAmbiente() {
		return idAmbiente;
	}

	public void setIdAmbiente(Integer idAmbiente) {
		this.idAmbiente = idAmbiente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "AmbienteDTO [idAmbiente=" + idAmbiente + ", nombre=" + nombre + "]";
	}

}
