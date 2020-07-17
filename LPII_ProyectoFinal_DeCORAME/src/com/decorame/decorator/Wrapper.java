package com.decorame.decorator;

import org.displaytag.decorator.TableDecorator;

import com.decorame.beans.AsesoramientoDTO;

public class Wrapper extends TableDecorator {
	
	public String getImagen() {
		return "<img src=\'img/carrito.png\' alt=\'foto\'>";
	}
	
	public String getImagenl() {
		return "<a href=\"carrocompras.jsp\"><img src=\'img/carrito.png\' alt=\\'foto\\'></a>";
	}
	
	public String getFoto() {
		AsesoramientoDTO ase = (AsesoramientoDTO)getCurrentRowObject();
		Integer cod = ase.getIdAsesoramiento();
		System.out.println(cod);
	
		return " <img src=\'img/"+cod+".jpg\'  alt=\'\' width=\'45px\'>  ";
	}


}
