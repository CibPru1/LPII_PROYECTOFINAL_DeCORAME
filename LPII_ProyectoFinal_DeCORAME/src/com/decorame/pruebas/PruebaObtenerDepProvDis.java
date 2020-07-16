package com.decorame.pruebas;

import java.util.List;

import com.decorame.beans.DepartamentoDTO;
import com.decorame.utils.GetDepProDis;

public class PruebaObtenerDepProvDis {

	public static void main(String[] args) {
		List<DepartamentoDTO> dep = GetDepProDis.listarDepartamentoDTO();
		dep.forEach(System.out::println);

	}

}
