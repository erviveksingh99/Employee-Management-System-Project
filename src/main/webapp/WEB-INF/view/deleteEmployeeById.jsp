<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            color: #dc3545;
            margin-top: 50px;
        }

        form {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #dc3545;
            color: white;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #c82333;
        }

        input[type="submit"]:active {
            background-color: #bd2130;
        }

        p {
            color: #28a745;
            font-weight: bold;
            text-align: center;
        }

        form + form {
            margin-top: 20px;
            text-align: center;
        }

        form + form input[type="submit"] {
            background-color: #007bff;
        }

        form + form input[type="submit"]:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>

<h2>Delete Employee by ID</h2>

<form action="/api/deleteEmployee" method="post">
    Employee ID: <input type="number" name="employeeId" required><br><br>
    <input type="submit" value="Delete Employee">
</form>

<c:if test="${not empty message}">
    <p>${message}</p>
</c:if>

<form action="/api/" method="get">
    <input type="submit" value="Go to Home">
</form>

</body>
</html>
