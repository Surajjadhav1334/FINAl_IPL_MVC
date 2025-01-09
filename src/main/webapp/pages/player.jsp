<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Players, Teams, and Matches</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .actions a {
            margin: 0 5px;
            text-decoration: none;
            color: #007bff;
        }

        .actions a:hover {
            text-decoration: underline;
        }

        .nav-links {
            margin: 20px auto;
            text-align: center;
        }

        .nav-links a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            margin: 0 15px;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="nav-links">
        <a href="/players/getallplayers">Player List</a>
        <a href="/teams/allteams">Team List</a>
        <a href="/matches/allmatches">Match List</a>
    </div>

</body>
</html>
