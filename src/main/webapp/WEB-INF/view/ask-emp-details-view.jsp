<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Start Page</title>
    <style>
        .block {
            background-color: green;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h2>Dear Employee, Please enter your details</h2>

<div class="block">
    <form:form action="showDetails" modelAttribute="employee" method="get">
        Name <form:input path="name"/>
        <form:errors path="name"/>
        <br>
        Surname <form:input path="surname"/>
        <form:errors path="surname"/>
        <br>
        Salary <form:input path="salary"/>
        <form:errors path="salary"/>
        <br>
        Department <form:select path="department">
        <form:options items="${employee.departments}"/>
        </form:select>
        <br>
        Which car do you want?
        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
        <br>
        Foreign Language(s)
        <form:checkboxes path="languages" items="${employee.languageMap}"/>
        <br>
        Phone number <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br>
        Email <form:input path="email"/>
        <form:errors path="email"/>
        <br>
        <input type="submit" value="OK">
    </form:form>
</div>

</body>
</html>