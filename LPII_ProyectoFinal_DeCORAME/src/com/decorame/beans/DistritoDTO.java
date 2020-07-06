package com.decorame.beans;

public class DistritoDTO {
	private Integer idDistrito;
	private Integer idDepartamento;
	private Integer idProvincia;
	private String nombreDisrito;

	public DistritoDTO() {

	}

	public DistritoDTO(Integer idDistrito, Integer idDepartamento, Integer idProvincia, String nombreDisrito) {
		super();
		this.idDistrito = idDistrito;
		this.idDepartamento = idDepartamento;
		this.idProvincia = idProvincia;
		this.nombreDisrito = nombreDisrito;
	}

	public Integer getIdDistrito() {
		return idDistrito;
	}

	public void setIdDistrito(Integer idDistrito) {
		this.idDistrito = idDistrito;
	}

	public Integer getIdDepartamento() {
		return idDepartamento;
	}

	public void setIdDepartamento(Integer idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	public Integer getIdProvincia() {
		return idProvincia;
	}

	public void setIdProvincia(Integer idProvincia) {
		this.idProvincia = idProvincia;
	}

	public String getNombreDisrito() {
		return nombreDisrito;
	}

	public void setNombreDisrito(String nombreDisrito) {
		this.nombreDisrito = nombreDisrito;
	}

	@Override
	public String toString() {
		return "DistritoDTO [idDistrito=" + idDistrito + ", idDepartamento=" + idDepartamento + ", idProvincia="
				+ idProvincia + ", nombreDisrito=" + nombreDisrito + "]";
	}

}
