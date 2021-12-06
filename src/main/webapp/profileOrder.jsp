<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Receipt</title>
    <%--    <link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/styleprofileoder.css" type="text/css"/>

</head>
<body style="background: whitesmoke">

<div class="container">
    <div class="row mt-5">
        <div class="col-lg-10" style="margin: auto !important;border-style: outset; background: white;">
            <div class="fo">
                <h1 style="font-size: 35px;color: teal; margin-left: 8px"><b>Detail Receipt</b></h1>
                <p style="margin-left: -14px"><b>Your Bill Details</b></p>
                <p style="margin-left: -14px"> marks required fields</p>
                <form action="emailList" method="post">
                    <input type="hidden" name="action" value="add"><br>
                    <label class="pad_top" style="font-size: 20px">Email: </label>
                    <input type="email" name="email" value="${order.email}"
                           required><br>

                    <label class="pad_top" style="font-size: 20px">Phone:</label>
                    <input type="text" name="firstName" value="${order.phone}"
                           required><br>

                    <label class="pad_top" style="font-size: 20px">Address:</label>
                    <input type="text" name="lastName" value="${order.address}"
                           required><br>

                    <label class="pad_top" style="font-size: 20px">Date Pay:</label>
                    <input type="text" name="lastName" value="${order.purchaseDate}"
                           required><br>

                    <label>&nbsp;</label>
                    <input type="submit" value="Join Now" class="btn" style="margin-left: -250px">
                </form>
                <br>
                <p style="margin-left: -15px">The current date is.</p>

                    <p style="margin-left: -15px">Live support available at 1-800-555-2222</p>
                <c:forEach items="${listItem}" var="item">
                    <p>${item.productEntity.name}</p>
                    <p>${item.quantity}</p>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</body>
</html>