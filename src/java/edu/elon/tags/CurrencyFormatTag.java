/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.tags;

import java.io.IOException;
import java.text.DecimalFormat;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import static javax.servlet.jsp.tagext.Tag.SKIP_BODY;
import javax.servlet.jsp.tagext.TagSupport;


/**
 *
 * @author swebber2
 */
public class CurrencyFormatTag extends TagSupport{
  private double currency;
  
  
  public void setCurrency(double currency) {
    this.currency = currency;
  }



 
  @Override
  public int doStartTag() throws JspException{ 
    DecimalFormat df = new DecimalFormat("#.00");
    df.setGroupingUsed(true);
    df.setGroupingSize(3);
    String formattedCash = "$" + df.format(currency);
    
    try {
      JspWriter out = pageContext.getOut();
      out.print(formattedCash);
    } catch (IOException ioe) {
      System.out.println(ioe);
    }
    return SKIP_BODY;
  }
           
    }

