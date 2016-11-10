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
  private double[] yearByYearValues;
  
  public InvestmentCalculator(){
    this.cash = 0;
    this.ratePercent = 0;
    this.years=0;
    this.futureVal = 0;
    this.yearByYearValues=new double[years];
  }
  
  public InvestmentCalculator(double cash, double ratePercent, int years){
    this.cash = cash;
    this.ratePercent = ratePercent;
    this.years = years;
    this.futureVal = 0;
    this.yearByYearValues=new double[years];
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
  
  public void setRatePercent(double ratePercent){
    this.ratePercent = ratePercent;
  }
  
  public int getYears(){
    return years;
  }
  
  public void setYears(int years){
    this.years = years;
  }
  
  public double getFutureVal(){
    return this.futureVal;
  }
  
  public void setFutureVal(double futureVal){
    this.futureVal = futureVal;
  }
  
  public double[] getYearByYear(){
    return yearByYearValues;
  }
  public void setYearByYear(double[] yearByYearValues){
    this.yearByYearValues = yearByYearValues;
  }
  
  public void calcFutureVal(){
    double cGrowth = cash;
    double rateOfGrowth = 1.0 + (ratePercent/100.0);
    for(int i = 0; i < years;i++){
      cGrowth = cGrowth*rateOfGrowth;
      yearByYearValues[i]=cGrowth;
    }
    futureVal = cGrowth;
  }
}
