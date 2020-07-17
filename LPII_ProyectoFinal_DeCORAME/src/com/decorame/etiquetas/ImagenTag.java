package com.decorame.etiquetas;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;


public class ImagenTag extends TagSupport {

	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<img alt=\'\' src=\'img/Planes/PlanFull.jpg\' width=\'100px\'>");
			
		} catch (IOException e){
			throw new JspException("Error. Revisar: " + e.getMessage());
		}
		return SKIP_BODY;
	
	}
	
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}
	
}
