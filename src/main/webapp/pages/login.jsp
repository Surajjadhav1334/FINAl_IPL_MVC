<font color = "red">

<%

String m = (String) request.getAttribute("error");
if (m != null) {
    out.print(m); // Print the error message to the response
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light background color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-form {
            background-color: #ffffff; /* White background */
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .login-form h2 {
            margin-bottom: 20px;
            color: #333333; /* Dark text color */
        }

        .login-form label {
            color: #555555;
            font-size: 14px;
        }

        .login-form input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-form input[type="submit"] {
            background-color: #007bff; /* Blue button color */
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .login-form input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="login-form">
        <h2>Login</h2>
        <form action="logincheck" method="post">
            <label for="usname">Username:</label><br>
            <input type="text" id="usname" name="usname" required><br>

            <label for="password">Password:</label><br>
            <input type="text" id="password" name="password" required><br><br>

            <input type="submit" value="Sign In">
        </form>
    </div>
</body>
</html>



