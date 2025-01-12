<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
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
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<h2>All Employee Details</h2>

<table>
    <thead>
        <tr>
         <th>Id</th>
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

<form action="/api/getAllEmployees" method="get">
    <input type="submit" value="Fetch All Employees">
</form>

<form action="/api/" method="get">
    <input type="submit" value="Go to Home">
</form>

</body>
</html>
