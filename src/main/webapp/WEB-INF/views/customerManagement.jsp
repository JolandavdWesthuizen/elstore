<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Management Page</h1>

            <p class="lead">This is the customer management page.</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>

            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerLastName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                    <td>
                    <a href="<spring:url value="/admin/customer/viewCustomer/${customer.customerId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a>
                    <a href="<spring:url value="/admin/customer/editCustomer/${customer.customerId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                        
                    </td>
                </tr>
            </c:forEach>
        </table>
        
         <a href="<c:url value="/admin" />" class="btn btn-default">Back</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
