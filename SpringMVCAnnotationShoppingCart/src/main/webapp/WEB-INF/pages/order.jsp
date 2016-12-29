<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
    rel="stylesheet" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<title>Замовлення</title>
 
<link rel="stylesheet" type="text/css" href="style.css">
 
</head>
<body>
 
    <jsp:include page="_header.jsp" />
     
    <fmt:setLocale value="en_US" scope="session"/>
 
<div class="row">
          <div class="col-md-12">
            <h1 class="text-center">Замовлення</h1>
          </div>
        </div>   
         <div class="section">
      <div class="container">
        <div class="row"> 
    <div class="customer-info-container">
        <h3>Customer Information:</h3>
        <ul>
            <li>Name: ${orderInfo.customerName}</li>
            <li>Email: ${orderInfo.customerEmail}</li>
            <li>Phone: ${orderInfo.customerPhone}</li>
            <li>Address: ${orderInfo.customerAddress}</li>
        </ul>
        <h3>Order Summary:</h3>
        <ul>
            <li>Total:
            <span class="total">
            <fmt:formatNumber value="${orderInfo.amount}" type="currency"/>
            </span></li>
        </ul>
    </div>
     
    <br/>
     
    <table border="1" style="width:100%">
        <tr>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Amount</th>
        </tr>
        <c:forEach items="${orderInfo.details}" var="orderDetailInfo">
            <tr>
                <td>${orderDetailInfo.productCode}</td>
                <td>${orderDetailInfo.productName}</td>
                <td>${orderDetailInfo.quanity}</td>
                <td>
                 <fmt:formatNumber value="${orderDetailInfo.price}" type="currency"/>
                </td>
                <td>
                 <fmt:formatNumber value="${orderDetailInfo.amount}" type="currency"/>
                </td>  
            </tr>
        </c:forEach>
    </table>
    <c:if test="${paginationResult.totalPages > 1}">
        <div class="page-navigator">
           <c:forEach items="${paginationResult.navigationPages}" var = "page">
               <c:if test="${page != -1 }">
                 <a href="orderList?page=${page}" class="nav-item">${page}</a>
               </c:if>
               <c:if test="${page == -1 }">
                 <span class="nav-item"> ... </span>
               </c:if>
           </c:forEach>
             
        </div>
    </c:if>
 </div>
 </div>
 
 
 
    <jsp:include page="_footer.jsp" />
 
</body>
</html>