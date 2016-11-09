<%-- 
    Document   : result
    Created on : Oct 21, 2016, 1:08:20 AM
    Author     : James Greenwell, Sean Webber
--%>

<%@ taglib prefix="elon" uri="/WEB-INF/tlds/elon.tld" %>
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
      <table>
        <tr>
          <th>Investment Amount:</th>
          <td><elon:currencyFormat currency = "${ogInvest}"/></td>
        </tr>
        <tr>
          <th>Yearly Interest Rate:</th>
          <td></td>
        </tr>
        <tr>
          <th>Number of Years:</th>
          <td></td>
        </tr>
        <tr>
          <th>Future Value:</th>
          <td><elon:currencyFormat currency = "${investCalc}"/></td>
        </tr>
      </table>
    <%@include file="includes/footer.html" %>
  </body>
</html>  
