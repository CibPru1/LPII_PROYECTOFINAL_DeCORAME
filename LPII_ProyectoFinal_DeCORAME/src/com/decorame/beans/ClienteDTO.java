package com.decorame.beans;

import java.util.Date;

public class ClienteDTO {
	
	private Integer idCliente;
	private String nombre;
	private String apePat;
	private String apeMat;
	private Date fecNac;
	private String direccion;
	private String calle;
	private String numeroCalle;
	private String numeroDepartamento;
	private String urbanizacion;
	private Integer idDepartamento;
	private Integer idProvincia;
	private Integer idDistrito;
	private String email;
	private String password;
	private String celular;
	
	public ClienteDTO() {
		
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

	public Date getFecNac() {
		return fecNac;
	}

	public void setFecNac(Date fecNac) {
		this.fecNac = fecNac;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCalle() {
		return calle;
	}

	public void setCalle(String calle) {
		this.calle = calle;
	}

	public String getNumeroCalle() {
		return numeroCalle;
	}

	public void setNumeroCalle(String numeroCalle) {
		this.numeroCalle = numeroCalle;
	}

	public String getNumeroDepartamento() {
		return numeroDepartamento;
	}

	public void setNumeroDepartamento(String numeroDepartamento) {
		this.numeroDepartamento = numeroDepartamento;
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
				+ ", fecNac=" + fecNac + ", direccion=" + direccion + ", calle=" + calle + ", numeroCalle="
				+ numeroCalle + ", numeroDepartamento=" + numeroDepartamento + ", urbanizacion=" + urbanizacion
				+ ", idDepartamento=" + idDepartamento + ", idProvincia=" + idProvincia + ", idDistrito=" + idDistrito
				+ ", email=" + email + ", password=" + password + ", celular=" + celular + "]";
	}

}
