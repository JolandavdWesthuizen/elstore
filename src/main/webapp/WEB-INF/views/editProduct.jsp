<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update the product information here:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}" />

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>

       <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="boardgames" />Board Games</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="electronic" />Electronic Toys</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="outdoor" />Outdoor Play</label>
             <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="dollsandaccessories" />Dolls and Accessories</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="collectables" />Collectables</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="lego" />Lego</label>                                                
             <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="creative" />Creative</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="babies" />Babies</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="bicycles" />Bicycles</label>                                                
                                                             
                                                                                                 
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="new" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="used" />Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="inactive" />Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" value = "${product.productImage}"/>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
