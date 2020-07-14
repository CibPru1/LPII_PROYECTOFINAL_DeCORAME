package com.decorame.beans;

public class DetallePedidoDTO {
	
	private Integer idDetallePedido;
	private Integer idPedido;
	private Integer idAsesoramiento;
	private Integer cantidadDetallePedido;
	private Double precioDetallePedido;

	public DetallePedidoDTO() {

	}

	public Integer getIdDetallePedido() {
		return idDetallePedido;
	}

	public void setIdDetallePedido(Integer idDetallePedido) {
		this.idDetallePedido = idDetallePedido;
	}

	public Integer getIdPedido() {
		return idPedido;
	}

	public void setIdPedido(Integer idPedido) {
		this.idPedido = idPedido;
	}

	public Integer getIdAsesoramiento() {
		return idAsesoramiento;
	}

	public void setIdAsesoramiento(Integer idAsesoramiento) {
		this.idAsesoramiento = idAsesoramiento;
	}

	public Integer getCantidadDetallePedido() {
		return cantidadDetallePedido;
	}

	public void setCantidadDetallePedido(Integer cantidadDetallePedido) {
		this.cantidadDetallePedido = cantidadDetallePedido;
	}

	public Double getPrecioDetallePedido() {
		return precioDetallePedido;
	}

	public void setPrecioDetallePedido(Double precioDetallePedido) {
		this.precioDetallePedido = precioDetallePedido;
	}

	@Override
	public String toString() {
		return "DetallePedidoDTO [idDetallePedido=" + idDetallePedido + ", idPedido=" + idPedido + ", idAsesoramiento="
				+ idAsesoramiento + ", cantidadDetallePedido=" + cantidadDetallePedido + ", precioDetallePedido="
				+ precioDetallePedido + "]";
	}

}
