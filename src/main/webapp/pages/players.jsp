<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Players List</title>
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
	margin-bottom: 20px;
}

.nav-links a {
	text-decoration: none;
	color: #007bff;
	font-weight: bold;
	margin-right: 15px;
}

.nav-links a:hover {
	color: #0056b3;
}
</style>
</head>
<body>
	<h2 style="text-align: center;">Players List</h2>

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Team</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="player" items="${allPlayers}">
				<tr>
					<td>${player.id}</td>
					<td>${player.name}</td>
					<td>${player.age}</td>
					<td>${player.team.name}</td>
					<td class="actions"> 
					<a href="${pageContext.request.contextPath}/players/add">Add</a>					
						<a
						href="${pageContext.request.contextPath}/players/deleteplayer/${player.id}"
						onclick="return confirm('Are you sure you want to delete this player?');">Delete</a>
					</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div style="text-align: center;">
		<a href="${pageContext.request.contextPath}/allplayers/new"
			style="font-size: 16px; text-decoration: none; color: #28a745;">Add
			New Player</a>
	</div>
</body>
</html>
