package com.decorame.etiquetas;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;


public class ImagenTag2 extends TagSupport {
	
	private String codigo;

	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<img alt=\'\' src=\'img/Planes/plan"+ codigo+".jpg\' width=\'100px\'>");
			
		} catch (IOException e){
			throw new JspException("Error. Revisar: " + e.getMessage());
		}
		return SKIP_BODY;
	
	}
	
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	
}
