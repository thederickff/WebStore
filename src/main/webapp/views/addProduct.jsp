<%-- 
    Document   : addProduct
    Created on : Oct 28, 2017, 9:48:11 AM
    Author     : derickfelix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="/favicon.ico">

        <title>JSP Page</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Products</h1>
                    <p>Add products</p>
                </div>
            </div>
        </section>
        <section class="container">
            <form:form method="POST" modelAttribute="newProduct" cssClass="form-horizontal">
                <fieldset>
                    <legend>Add new product</legend>
                    <!-- Product Name input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="name">Name</label>
                        <div class="col-md-10">
                            <form:input type="text" id="name" path="name" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- Unit price input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="unit-price">Unit price</label>
                        <div class="col-md-10">
                            <form:input type="number" id="unit-price" path="unitPrice" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- Manufacturer input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="manufacurer">Manufacturer</label>
                        <div class="col-md-10">
                            <form:input type="text" id="manufacurer" path="manufacturer" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- Category input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="category">Category</label>
                        <div class="col-md-10">
                            <form:input type="text" id="category" path="category" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- Units in Stock input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="units-in-stock">Units in Stock</label>
                        <div class="col-md-10">
                            <form:input type="text" id="units-in-stock" path="unitsInStock" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- Units in Order input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="units-in-order">Units in Order</label>
                        <div class="col-md-10">
                            <form:input type="text" id="units-in-order" path="unitsInOrder" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- Description input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="description">Description</label>
                        <div class="col-md-10">
                            <form:textarea id="description" path="description" cssClass="form-control" rows="2" />
                        </div>
                    </div>
                    <!-- Discontinued input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="discontinued">Discontinued</label>
                        <div class="col-md-10">
                            <form:checkbox id="discontinued" path="discontinued" />
                        </div>
                    </div>
                    <!-- Condition input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="condition">Condition</label>
                        <div class="col-md-10">
                            <form:radiobutton id="new" value="New" path="condition" /> <label for="new">New</label>
                            <form:radiobutton id="old" value="Old" path="condition" /> <label for="old">Old</label>
                            <form:radiobutton id="refurbished" value="Refurbished" path="condition" /> <label for="refurbished">Refurbished</label>
                        </div>
                    </div>
                    <!-- Submit button -->
                    <div class="form-group">
                        <div class="col-md-10 col-md-offset-2">
                            <input type="submit" value="Add" id="btn-add" class="btn btn-primary" />
                        </div>
                    </div>
                    
                </fieldset>
            </form:form>
        </section>
    </body>
</html>
