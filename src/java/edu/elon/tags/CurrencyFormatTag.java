/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.tags;

import javax.servlet.jsp.tagext.TagSupport;


/**
 *
 * @author swebber2
 */
public class CurrencyFormatTag extends TagSupport{
    
    @Override
    public int doStartTag() throws JSPException{
        DecimalFormat df = new DecimalFormat("#.00"); 
        
        
    }
        
    
    
}
