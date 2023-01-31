package com.sudha;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.BodyTagSupport;

public class Reverse extends BodyTagSupport {

	public int doEndTag() throws JspException {
		try {
			String data = bodyContent.getString();
			StringBuffer sb = new StringBuffer(data);
			sb.reverse();
			JspWriter out = bodyContent.getEnclosingWriter();
			out.println("<html>");
			out.println("<body bgcolor='lightyellow'>");
			out.println("<center><b><font size='7' color='red'");
			out.println("<br><br>");
			out.println(sb);
			out.println("</font></b></center></body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;

	}
}
