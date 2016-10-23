/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.model;

import java.io.Serializable;
/**
 *
 * @author jameszach
 */
public class InvestmentCalculator implements Serializable{
  
  private double cash;
  private double ratePercent;
  private int years;
  private double futureVal;
  
  public InvestmentCalculator(){
    this.cash = 0;
    this.ratePercent = 0;
    this.years=0;
    this.futureVal=cash;
  }
  
  public InvestmentCalculator(double cash, double ratePercent, int years){
    this.cash = cash;
    this.ratePercent = ratePercent/100.0;
    this.years = years;
    this.futureVal = this.cash;
  }
  
  public double getCash(){
    return cash;
  }
  
  public void setCash(double cash){
    this.cash = cash;
  }
  
  public double getRatePercent(){
    return ratePercent;
  }
  
  public int getYears(){
    return years;
  }
    
  public double getFutureVal(){
    return futureVal;
  }
  
  public void calcFutureVal(){
    double rateOfGrowth = 1.0 + (ratePercent/100.0);
    for(int i = 0; i < years;i++){
      futureVal = futureVal*rateOfGrowth;
    }
  }
}
