<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
    <title>Create Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            color: #007bff;
        }

        form {
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[type="submit"]:active {
            background-color: #004085;
        }

        form a {
            display: block;
            text-align: center;
            font-size: 18px;
            color: #007bff;
            text-decoration: none;
            margin-top: 20px;
        }

        form a:hover {
            color: #0056b3;
        }

    </style>
</head>
<body>
    <h2>Create Employee</h2>
    <form action="/api/create" method="post">
        Name: <input type="text" name="empName" required><br>
        Email: <input type="email" name="email" required
               title="Please enter a valid email address, e.g. username@example.com"><br>
        Department: <input type="text" name="department" required><br>
        Designation: <input type="text" name="designation" required><br>
        Salary: <input type="text" name="salary" required><br>
        <input type="submit" value="Create">
    </form>

    <form action="/api/" method="get">
       <input type="submit" value="Go to Home">
   </form>
</body>
</html>
