<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Detail</h1>

            <p class="lead">Here is the detail information of the customer!        System.out.println(path);
            </p>
        </div>

        <div class="container">
            <div class="row">                

                <div class="col-md-5">
                    <h4>Customer name: ${customer.customerName}</h4>
                    <h4>Customer last name: ${customer.customerLastName}</h4>
                    <p><strong>Customer id</strong> : ${customer.customerId}</p>
                    <p><strong>Email</strong> : ${customer.customerEmail}</p>
                    <p><strong>Phone</strong> : ${customer.customerPhone}</p>
                    <p><strong>Enabled</strong> : ${customer.enabled}</p>
                    <p><strong>Condition</strong> : ${product.productPrice} USD</p>

                    <br><br>
                    
                    <h3>Customer Billing address: </h3>
                    <p><strong>Name of street</strong> : ${customer.billingAddress.streetName}</p>
                    <p><strong>Apartment number</strong> : ${customer.billingAddress.apartmentNumber}</p>
                    <p><strong>City</strong> : ${customer.billingAddress.city}</p>
                    <p><strong>State</strong> : ${customer.billingAddress.state}</p>
                    <p><strong>Country</strong> : ${customer.billingAddress.country} </p>
                    <p><strong>Zipcode</strong> : ${customer.billingAddress.zipCode} </p>
                    <p>
                    
                    <br><br>
                    
                    <h3>Customer Shipping address: </h3>
                    <p><strong>Name of street</strong> : ${customer.shippingAddress.streetName}</p>
                    <p><strong>Apartment number</strong> : ${customer.shippingAddress.apartmentNumber}</p>
                    <p><strong>City</strong> : ${customer.shippingAddress.city}</p>
                    <p><strong>State</strong> : ${customer.shippingAddress.state}</p>
                    <p><strong>Country</strong> : ${customer.shippingAddress.country} </p>
                    <p><strong>Zipcode</strong> : ${customer.shippingAddress.zipCode} </p>
                    
                    
                    <p>   
                    	<a href="<c:url value="/admin/customer" />" class="btn btn-default">Back</a>
                    </p>
                    
                </div>
            </div>
        </div>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>