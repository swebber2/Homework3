<%-- 
    Document   : result
    Created on : Oct 21, 2016, 1:08:20 AM
    Author     : James Greenwell, Sean Webber
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/main.css">
    <title>Investment Results</title>
  </head>
  <body>
    <%@include file="includes/header.html" %>
    <jsp:useBean id="investCalc" scope="request" class="edu.elon.model.InvestmentCalculator"/>
      <table>
        <tr>
          <th>Investment Amount:</th>
          <td>&dollar;<jsp:getProperty name = "investCalc" property="formattedCash"/></td>
        </tr>
        <tr>
          <th>Yearly Interest Rate:</th>
          <td><jsp:getProperty name = "investCalc" property="ratePercent"/></td>
        </tr>
        <tr>
          <th>Number of Years:</th>
          <td><jsp:getProperty name = "investCalc" property="years"/></td>
        </tr>
        <tr>
          <th>Future Value:</th>
          <td>&dollar;<jsp:getProperty name = "investCalc" property="futureVal"/></td>
        </tr>
      </table>
    <%@include file="includes/footer.html" %>
  </body>
</html>  
