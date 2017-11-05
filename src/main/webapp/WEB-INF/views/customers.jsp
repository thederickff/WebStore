<%-- 
    Document   : costumers.jsp
    Created on : Sep 7, 2017, 7:40:36 PM
    Author     : derickfelix
--%>
<%@taglib prefix="c" 
          uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <h1>Customers</h1>
                    <p>All available customers in our store</p>
                </div>
            </div>
        </section>


        <section class="container">
            <div class="row">
                <c:forEach items="${customers}" var="customer">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <div class="caption">
                                <h3>${customer.name}</h3>
                                <p>${customer.address}</p>
                                <p>Total of ${customer.noOfOrdersMade} orders made</p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
        </section>
    </body>
</html>
