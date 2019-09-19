<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Orders Page</h1>

            <p class="lead">This is the customer orders page.</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Order id</th>
                <th>Customer name</th>
                <th>Customer Last name</th>
                <th>Phone</th>
              	<th>Customer email</th>
              	<th>Grand total</th>

            </tr>
            </thead>
            <c:forEach items="${customerOrderList}" var="customerOrder">
                <tr>
                    <td>${customerOrder.customerOrderId}</td>
                    <td>${customerOrder.customer.customerName}</td>
                    <td>${customerOrder.customer.customerLastName}</td>
                    <td>${customerOrder.customer.customerPhone}</td>
                   	<td>${customerOrder.customer.customerEmail}</td>
                   	<th>R ${customerOrder.cart.grandTotal}</th>
                    <td>
                    <a href="<spring:url value="/admin/customerOrder/viewCustomerOrder/${customerOrder.customerOrderId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a>     
                    </td>
                </tr>
            </c:forEach>        
        </table>
        
       <a href="<c:url value="/admin" />" class="btn btn-default">Back</a>
           

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
