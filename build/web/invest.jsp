<%-- 
    Document   : invest
    Created on : Oct 21, 2016, 12:38:03 AM
    Author     : James Greenwell, Sean Webber
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/main.css">
    <title>Investment Calculator</title>
  </head>
  <body>
    <%@include file="includes/header.html" %>
    <form action="calculate" method="get">
      <label for="investAmount">Investment Amount</label>
      <span><br></span>
      <input type="text" name="investAmount" id="investAmount" autofocus required title="Please enter a numeric value" pattern="^[1-9][0-9]*([.]{1}[0-9]*)?$"><br>
      <label for="interestRate">Yearly Interest Rate</label>
      <span><br></span>
      <input type="text" name="interestRate" id="interestRate" required title="Please enter a numeric value" pattern="^[1-9][0-9]*([.]{1}[0-9]*)?$"><br>
      <label for="numYears">Number of Years</label>
      <span><br></span>
      <input type="text" name="numYears" id="numYears" required title="Please enter a numeric value" placeholder="Integer number of years" pattern="^[1-9]{1}[0-9]*$"><br>
      <label for="calculate"></label>
      <input type="submit" name="action" id="calculate" value="Calculate">
    </form>
    <%@include file="includes/footer.html" %>
  </body>
</html>        
