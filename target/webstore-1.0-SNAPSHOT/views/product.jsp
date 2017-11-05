<%-- 
    Document   : product
    Created on : Sep 8, 2017, 4:45:37 PM
    Author     : derickfelix
--%>
<%@taglib prefix="c" 
          uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
           uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport" content="width=device-width,
              initial-scale=1">
        <title>Products</title>

        <!-- Style sheets -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
              crossorigin="anonymous">
    </head>
    <body>
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Products</h1>
                    <p>${product.name}</p>
                </div>
            </div>
        </section>

        <section class="container">
            <div class="row">
                <div class="col-md-5">
                    <h3>${product.name}</h3>
                    <p>${product.description}</p>
                    <p>
                        <strong>Item Code: </strong>
                        <span class="label label-warning">${product.productId}</span>
                    </p>
                    <p>
                        <strong>Manufacturer: </strong>
                        ${product.manufacturer}
                    </p>
                    <p>
                        <strong>Available units in stock </strong> :
                        ${product.unitsInStock}
                    </p>
                    <h4>${product.unitPrice} USD</h4>
                    <p>
                        <a href="<spring:url value="/market/products" />" class="btn
                           btn-default">
                            <span class="glyphicon-hand-left glyphicon"></span> back
                        </a>
                        <a href="" class="btn btn-warning btn-large">
                            <span class="glyphicon-shopping-cart glyphicon">
                            </span> Order Now
                        </a>
                    </p>
                </div>
            </div>
        </section>
    </body>
</html>

