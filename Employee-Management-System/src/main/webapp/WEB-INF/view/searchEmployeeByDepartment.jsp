<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Employee by Department</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h2, h3 {
            text-align: center;
            color: #333;
        }

        .search-container {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 20px auto;
        }

        label {
            font-size: 16px;
            color: #333;
        }

        input[type="text"] {
            width: calc(100% - 120px);
            padding: 8px;
            margin-left: 10px;
            margin-right: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            text-align: left;
        }

        td {
            background-color: #fff;
        }

        .no-results {
            text-align: center;
            font-size: 18px;
            color: red;
            margin-top: 20px;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        form input[type="submit"] {
            background-color: #28a745;
        }

        form input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<h2>Search Employee by Department</h2>

<div class="search-container">
    <form action="/api/getByDepartment" method="get">
        <label for="name">Enter Department Name:</label>
        <input type="text" id="name" name="department" required>
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

<form action="/api/" method="get">
       <input type="submit" value="Go to Home">
</form>

</body>
</html>
