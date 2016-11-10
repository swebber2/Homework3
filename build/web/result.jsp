<%-- 
    Document   : result
    Created on : Oct 21, 2016, 1:08:20 AM
    Author     : James Greenwell, Sean Webber
--%>

<%@ taglib prefix="elon" uri="/WEB-INF/tlds/elon.tld" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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
        <td><elon:currencyFormat currency = "${sessionScope.ogInvest}"/></td>
      </tr>
      <tr>
        <th>Yearly Interest Rate:</th>
        <td>${sessionScope.rate}</td>
      </tr>
      <tr>
        <th>Number of Years:</th>
        <td>${years}</td>
      </tr>
    </table>
    <table>
      <tr>
        <th>Year</th>
        <td>Value</td>
      </tr>
      <c:forEach var="yearValue" items="${yearByYearValues}" varStatus="status">
        <tr>
          <th>${status.index+1}</th>
          <td><elon:currencyFormat currency = "${yearValue}"/></td>
        </tr>
      </c:forEach>
    </table>
      <a href="calculate" title="Return to Calculator">Return to Calculator</a>
    <%@include file="includes/footer.html" %>
  </body>
</html>  
