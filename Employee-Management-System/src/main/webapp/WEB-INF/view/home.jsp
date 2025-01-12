<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            text-align: center;
            padding: 10px 0;
        }

        .navbar a {
            float: left;
            display: block;
            color: #ffffff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.2s ease, color 0.3s;
        }

        .navbar a:hover {
            color: #fff;
            background-color: #ff4500; /* Orange */
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar a:nth-child(2):hover {
            background-color: #1e90ff; /* Dodger Blue */
        }

        .navbar a:nth-child(3):hover {
            background-color: #32cd32; /* Lime Green */
        }

        .navbar a:nth-child(4):hover {
            background-color: #ff1493; /* Deep Pink */
        }

        .navbar a:nth-child(5):hover {
            background-color: #ffb400; /* Orange Yellow */
        }

        .navbar a:nth-child(6):hover {
            background-color: #8a2be2; /* Blue Violet */
        }

        .company-image-container {
            text-align: center;
            margin: 20px 0;
        }

        .company-image-container img {
            max-width: 200px;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #4CAF50;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="create-employee">Create Employee</a>
        <a href="update-employee">Update Employee</a>
        <a href="getAll-employee">Get All Employee Details</a>
        <a href="get-employee-by-name">Search Employee By Name</a>
        <a href="get-employee-by-department">Search Employee By Department</a>
        <a href="delete-employee-by-Id">Delete Employee By Id</a>
    </div>

    <div class="company-image-container">
        <img src="data:image/jpeg;base64,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" alt="Company Logo">
    </div>

    <h1>Welcome to the Employee Management System</h1>

</body>
</html>
