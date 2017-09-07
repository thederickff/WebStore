<%-- 
    Document   : welcome
    Created on : Sep 7, 2017, 10:27:57 AM
    Author     : derickfelix
--%>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport" content="width=device-width,
              initial-scale=1">
        <title>Welcome</title>
        
        <!-- Style sheets -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
              integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
              crossorigin="anonymous">
    </head>
    <body>
        <div class="jumbotron">
            <h1> ${greeting} </h1>
            <p> ${tagline} </p>
        </div>
        
        <!-- Java Script -->
    </body>
</html>