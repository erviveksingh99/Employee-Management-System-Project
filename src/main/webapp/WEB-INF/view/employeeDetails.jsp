<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .employee-details {
            width: 50%;
            background-color: #fff;
            margin: 20px auto;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .employee-details h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        .employee-details p {
            font-size: 18px;
            margin: 10px 0;
            color: #555;
        }

        .employee-details p strong {
            color: #333;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="employee-details">
    <h2>Employee Details</h2>

    <p><strong>Name:</strong> ${employee.empName}</p>
    <p><strong>Email:</strong> ${employee.email}</p>
    <p><strong>Department:</strong> ${employee.department}</p>
    <p><strong>Designation:</strong> ${employee.designation}</p>
    <p><strong>Salary:</strong> ${employee.salary}</p>

    <form action="/api/" method="get">
        <input type="submit" value="Go to Home">
    </form>
</div>

</body>
</html>
