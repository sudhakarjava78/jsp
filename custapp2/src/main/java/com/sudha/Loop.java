package com.sudha;


import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class Loop extends TagSupport{
	private int start=0;  
    private int end=0;  
      
    public void setStart(int start) {  
        this.start = start;  
    }  
    public void setEnd(int end) {  
        this.end = end;  
    }  
      
    @Override  
    public int doStartTag() throws JspException {  
        return EVAL_BODY_INCLUDE;  
    }  
  
    @Override  
    public int doAfterBody() throws JspException {  
        if(start<end){  
            start++;  
            return EVAL_BODY_AGAIN;  
        }else{  
        return SKIP_BODY;  
       }  
          
    }  
}
