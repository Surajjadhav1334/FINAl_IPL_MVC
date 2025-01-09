<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Match List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
            font-size: 18px;
        }

        td {
            font-size: 16px;
        }

        .action-links {
            font-weight: bold;
        }

        .action-links a {
            color: #007bff;
            text-decoration: none;
        }

        .action-links a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

    <h2 style="text-align: center;">List of Matches</h2>

    <table>
        <thead>
            <tr>
                <th>Match ID</th>
                <th>Match Date</th>
                <th>Location</th>
                <th>Team 1</th>
                <th>Team 2</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Iterate over the list of matches -->
            <c:forEach var="match" items="${allmatches}">
                <tr>
                    <td>${match.id}</td>
                    <td>${match.matchDate}</td> 
                    <td>${match.location}</td> 
                    <td>${match.team1.name}</td> 
                    <td>${match.team2.name}</td> 
                    <td class="action-links">
                        <!-- Add appropriate links for view, edit, and delete actions -->
                        <a href="/matches/${match.id}">View</a> | 
                        <a href="/matches/updatematch?id=${match.id}">Edit</a> | 
                        <a href="/matches/deletematch/${match.id}" onclick="return confirm('Are you sure you want to delete this match?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
