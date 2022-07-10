<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employee Page</title>
    <style>
        .emp {
            color: red;
            font-family: Calibri;
            font-size: 20px;
        }
    </style>
</head>
<body>
<h2>Dear Employee, you are Welcome!</h2>
<p>Your name:</p>
<div class="emp">${employee.name}</div>
<p>Your surname:</p>
<div class="emp">${employee.surname}</div>
<p>Your salary:</p>
<div class="emp">${employee.salary}</div>
<p>Your department:</p>
<div class="emp">${employee.department}</div>
<p>Your car:</p>
<div class="emp">${employee.carBrand}</div>
<p>Language(s):</p>
<div class="emp">
    <ul>
        <c:forEach var="lang" items="${employee.languages}">
            <li> ${lang} </li>
        </c:forEach>
    </ul>
</div>
<p>Your phone number:</p>
<div class="emp">${employee.phoneNumber}</div>
<p>Your email:</p>
<div class="emp">${employee.email}</div>
</body>
</html>