<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Order Details</h1>
            <br><br>
            <div>
                    	<strong>Customer name:   </strong>${customerOrder.customer.customerName}
                    	<br>
                    	<strong>Customer last name:   </strong>${customerOrder.customer.customerLastName}
                    	<br>
                    	<strong>Customer phone:  </strong>${customerOrder.customer.customerPhone}
                    	<br>
                    	<strong>Customer email:  </strong>${customerOrder.customer.customerEmail}
                    	<br>
                    	
            </div>

        </div>

        <div class="container">

            <div class="row">
                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

                        <div class="text-center">
                            <h1>Customer's Receipt:</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br>
                                        ${customerOrder.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${customerOrder.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${customerOrder.cart.customer.shippingAddress.city}, ${customerOrder.cart.customer.shippingAddress.state}
                                    <br>
                                        ${customerOrder.cart.customer.shippingAddress.country}, ${customerOrder.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br>
                                        ${customerOrder.cart.customer.billingAddress.streetName}
                                    <br>
                                        ${customerOrder.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                        ${customerOrder.cart.customer.billingAddress.city}, ${customerOrder.cart.customer.billingAddress.state}
                                    <br>
                                        ${customerOrder.cart.customer.billingAddress.country}, ${customerOrder.cart.customer.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${customerOrder.cart.cartItems}" >
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total: </strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>R ${customerOrder.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                </div>

            </div>
            
                     <br><br>
                	<a href="<c:url value="/admin/customerOrders" />" class="btn btn-default">Back</a>
        </div>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>