<%-- 
    Document   : result
    Created on : Oct 21, 2016, 1:08:20 AM
    Author     : jameszach
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles/main.css">
    <title>Investment Results</title>
  </head>
  <body>
    <%@include file="includes/header.jsp" %>
      <table>
        <tr>
          <th>Investment Amount:</th>
          <td>&dollar;${investCalc.formattedCash}</td>
        </tr>
        <tr>
          <th>Yearly Interest Rate:</th>
          <td>${investCalc.ratePercent}</td>
        </tr>
        <tr>
          <th>Number of Years:</th>
          <td>${investCalc.years}</td>
        </tr>
        <tr>
          <th>Future Value:</th>
          <td>&dollar;${investCalc.futureVal}</td>
        </tr>
      </table>
    <%@include file="includes/footer.jsp" %>
  </body>
</html>  
