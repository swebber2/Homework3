/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon.model;

/**
 *
 * @author jameszach
 */
public class InvestmentCalculator {
  private double cash;
  private double rateDecimal;
  private int years;
  public InvestmentCalculator(double cash, double ratePercent, int years){
    this.cash = cash;
    this.rateDecimal = ratePercent/100.0;
    this.years = years;
  }
  public double calcFutureVal(){
    double futureVal = cash;
    for(int i = 0; i < years;i++){
      futureVal = futureVal*rateDecimal;
    }
    return futureVal;
  }
}
