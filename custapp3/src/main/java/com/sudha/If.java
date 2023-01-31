package com.sudha;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class If extends TagSupport {

	private boolean condition;

	public void setCondition(boolean condition) {
		this.condition = condition;
	}

	public boolean getCondition() {
		return condition;
	}

	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
	}

}
