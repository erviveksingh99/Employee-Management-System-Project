<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Employee by Name</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .search-container {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            color: #333;
            margin-right: 10px;
        }

        input[type="text"] {
            padding: 8px;
            width: 250px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-right: 10px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        form {
            text-align: center;
        }

        p {
            text-align: center;
            font-size: 18px;
            color: #ff0000;
        }

        .go-home {
            margin-top: 20px;
            text-align: center;
        }

        .go-home input {
            background-color: #28a745;
        }

        .go-home input:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<h2>Search Employee by Name</h2>

<div class="search-container">
    <form action="/api/getByName" method="get">
        <label for="name">Enter Employee Name:</label>
        <input type="text" id="name" name="name" required>
        <input type="submit" value="Search">
    </form>
</div>

<c:if test="${not empty employeeList}">
    <h3>Search Results for: ${searchName}</h3>
    <table>
        <thead>
            <tr>
                <th>Employee ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Designation</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employeeList}">
                <tr>
                    <td>${employee.empId}</td>
                    <td>${employee.empName}</td>
                    <td>${employee.email}</td>
                    <td>${employee.department}</td>
                    <td>${employee.designation}</td>
                    <td>${employee.salary}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>

<div class="go-home">
    <form action="/api/" method="get">
        <input type="submit" value="Go to Home">
    </form>
</div>

</body>
</html>
