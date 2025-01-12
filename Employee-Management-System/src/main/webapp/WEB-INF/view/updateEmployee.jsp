<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .go-home {
            text-align: center;
            margin-top: 20px;
        }

        .go-home input {
            background-color: #28a745;
        }

        .go-home input:hover {
            background-color: #218838;
        }

        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<h2>Update Employee</h2>

<form action="/api/update" method="post">
    <div class="form-group">
        <label for="empId">Employee Id:</label>
        <input type="text" id="empId" name="empId" required>
    </div>

    <div class="form-group">
        <label for="empName">Name:</label>
        <input type="text" id="empName" name="empName" required>
    </div>

    <div class="form-group">
        <label for="email">Email:</label>
       <input type="email" name="email" required title="Please enter a valid email address, e.g. username@example.com"><br>
    </div>

    <div class="form-group">
        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required>
    </div>

    <div class="form-group">
        <label for="designation">Designation:</label>
        <input type="text" id="designation" name="designation" required>
    </div>

    <div class="form-group">
        <label for="salary">Salary:</label>
        <input type="text" id="salary" name="salary" required>
    </div>

    <input type="submit" value="Update">
</form>

<div class="go-home">
    <form action="/api/" method="get">
        <input type="submit" value="Go to Home">
    </form>
</div>

</body>
</html>
