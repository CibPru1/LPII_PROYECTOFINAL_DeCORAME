package com.decorame.beans;

import java.util.Date;

public class PedidoDTO {
	
	private Integer idPedido;
	private Integer idCliente;
	private Date fecPedido;
	private Integer idEstado;
	private Double imptTotalPedido;
	private Integer idAmbiente;

	public PedidoDTO() {

	}

	public Integer getIdPedido() {
		return idPedido;
	}

	public void setIdPedido(Integer idPedido) {
		this.idPedido = idPedido;
	}

	public Integer getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(Integer idCliente) {
		this.idCliente = idCliente;
	}

	public Date getFecPedido() {
		return fecPedido;
	}

	public void setFecPedido(Date fecPedido) {
		this.fecPedido = fecPedido;
	}

	public Integer getIdEstado() {
		return idEstado;
	}

	public void setIdEstado(Integer idEstado) {
		this.idEstado = idEstado;
	}

	public Double getImptTotalPedido() {
		return imptTotalPedido;
	}

	public void setImptTotalPedido(Double imptTotalPedido) {
		this.imptTotalPedido = imptTotalPedido;
	}

	public Integer getIdAmbiente() {
		return idAmbiente;
	}

	public void setIdAmbiente(Integer idAmbiente) {
		this.idAmbiente = idAmbiente;
	}

	@Override
	public String toString() {
		return "PedidoDTO [idPedido=" + idPedido + ", idCliente=" + idCliente + ", fecPedido=" + fecPedido
				+ ", idEstado=" + idEstado + ", imptTotalPedido=" + imptTotalPedido + ", idAmbiente=" + idAmbiente
				+ "]";
	}

}
