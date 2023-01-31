package com.sudha;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.Tag;

public class HelloHandler implements Tag {

	PageContext pageContext;

	@Override
	public int doEndTag() throws JspException {
		System.out.println("doEndTag()");
		return SKIP_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		try {
			System.out.println("doStartTag()");
			JspWriter out = pageContext.getOut();
			out.println("<h1>Hello.....First Custom Tag Application</h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

	@Override
	public Tag getParent() {
		System.out.println("getParent()");
		return null;
	}

	@Override
	public void release() {
	}

	@Override
	public void setPageContext(PageContext pageContext) {
		this.pageContext = pageContext;
		System.out.println("setPageContext()");
	}

	@Override
	public void setParent(Tag t) {
		System.out.println("setPArent()");
	}

}
