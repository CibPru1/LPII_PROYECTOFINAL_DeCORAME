package com.decorame.beans;


public class ClienteDTO {
	
	private Integer idCliente;
	private String nombre;
	private String apePat;
	private String apeMat;
	private String fecNac;
	private String direccion;
	private String urbanizacion;
	private Integer idDepartamento;
	private Integer idProvincia;
	private Integer idDistrito;
	private String email;
	private String password;
	private String celular;
	
	public ClienteDTO() {
		
	}

	public ClienteDTO(Integer idCliente, String nombre, String apePat, String apeMat, String fecNac, String direccion,
			String urbanizacion, Integer idDepartamento, Integer idProvincia, Integer idDistrito, String email,
			String password, String celular) {
		this.idCliente = idCliente;
		this.nombre = nombre;
		this.apePat = apePat;
		this.apeMat = apeMat;
		this.fecNac = fecNac;
		this.direccion = direccion;
		this.urbanizacion = urbanizacion;
		this.idDepartamento = idDepartamento;
		this.idProvincia = idProvincia;
		this.idDistrito = idDistrito;
		this.email = email;
		this.password = password;
		this.celular = celular;
	}
	public ClienteDTO(String nombre, String apePat, String apeMat, String fecNac, String direccion,
			String urbanizacion, Integer idDepartamento, Integer idProvincia, Integer idDistrito, String email,
			String password, String celular) {
		this.nombre = nombre;
		this.apePat = apePat;
		this.apeMat = apeMat;
		this.fecNac = fecNac;
		this.direccion = direccion;
		this.urbanizacion = urbanizacion;
		this.idDepartamento = idDepartamento;
		this.idProvincia = idProvincia;
		this.idDistrito = idDistrito;
		this.email = email;
		this.password = password;
		this.celular = celular;
	}



	public Integer getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(Integer idCliente) {
		this.idCliente = idCliente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApePat() {
		return apePat;
	}

	public void setApePat(String apePat) {
		this.apePat = apePat;
	}

	public String getApeMat() {
		return apeMat;
	}

	public void setApeMat(String apeMat) {
		this.apeMat = apeMat;
	}

	public String getFecNac() {
		return fecNac;
	}

	public void setFecNac(String fecNac) {
		this.fecNac = fecNac;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getUrbanizacion() {
		return urbanizacion;
	}

	public void setUrbanizacion(String urbanizacion) {
		this.urbanizacion = urbanizacion;
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

	public Integer getIdDistrito() {
		return idDistrito;
	}

	public void setIdDistrito(Integer idDistrito) {
		this.idDistrito = idDistrito;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	@Override
	public String toString() {
		return "ClienteDTO [idCliente=" + idCliente + ", nombre=" + nombre + ", apePat=" + apePat + ", apeMat=" + apeMat
				+ ", fecNac=" + fecNac + ", direccion=" + direccion + ", urbanizacion=" + urbanizacion
				+ ", idDepartamento=" + idDepartamento + ", idProvincia=" + idProvincia + ", idDistrito=" + idDistrito
				+ ", email=" + email + ", password=" + password + ", celular=" + celular + "]";
	}



}
