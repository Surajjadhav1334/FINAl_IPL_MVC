<!DOCTYPE html>
<html>
<head>
    <title>Add Player</title>
</head>
<body>
    <h1>Add New Player</h1>
    <form action="${pageContext.request.contextPath}/players/add" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required><br><br>

        <label for="team">Team:</label>
        <input type="text" id="team" name="team" required><br><br>

        <button type="submit">Add Player</button>
    </form>
</body>
</html>
