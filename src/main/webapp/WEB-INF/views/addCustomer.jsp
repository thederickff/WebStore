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

        <title>Add new Customer</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    </head>
    <body>
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Customers</h1>
                    <p>Add a new customer</p>
                </div>
            </div>
        </section>
        <section class="container">
            <form:form method="POST" modelAttribute="customer" cssClass="form-horizontal">
                <fieldset>
                    <legend>Add new customer</legend>
                    <!-- Customer Name input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="name">Name</label>
                        <div class="col-md-10">
                            <form:input type="text" id="name" path="name" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- Customer Address input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="address">Address</label>
                        <div class="col-md-10">
                            <form:input type="text" id="address" path="address" cssClass="form-control"/>
                        </div>
                    </div>
                    <!-- No of orders made input -->
                    <div class="form-group">
                        <label class="control-form col-md-2" for="no-of-orders-made">Number of Orders Made</label>
                        <div class="col-md-10">
                            <form:input type="number" id="no-of-orders-made" path="noOfOrdersMade" cssClass="form-control"/>
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
