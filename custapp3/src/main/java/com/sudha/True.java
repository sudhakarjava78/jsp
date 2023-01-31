package com.sudha;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class True extends TagSupport {

	public int doStartTag() throws JspException {
		If i = (If) getParent();
		boolean condition = i.getCondition();
		if (condition == true) {
			return EVAL_BODY_INCLUDE;
		} else {
			return SKIP_BODY;
		}
	}

}
