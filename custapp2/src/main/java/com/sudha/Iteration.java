package com.sudha;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class Iteration extends TagSupport {

	int count = 1;
	private int times;

	public void setTimes(int times) {
		this.times = times;
	}

	@Override
	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doAfterBody() throws JspException {
		if (count < times) {
			count++;
			return EVAL_BODY_AGAIN;
		} else {
			return SKIP_BODY;
		}

	}
}
