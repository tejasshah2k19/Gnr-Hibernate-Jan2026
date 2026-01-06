<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

	<div class="container mt-5">

		<h3 class="mb-4">User List</h3>

		<table class="table table-bordered table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th>#</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Profile</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${users}" var="u" varStatus="s">
					<tr>
						<td>${s.index + 1}</td>
						<td>${u.firstName}</td>
						<td>${u.lastName}</td>
						<td>${u.email}</td>
						<td>${u.profilePicURL}</td>
						<td><a href="deleteUser?userId=${u.userId}">Delete</a> | 
							<a href="viewUser?userId=${u.userId}">View</a> |
							<a href="editUser?userId=${u.userId}">Edit</a> 
						</td>
					</tr>
				</c:forEach>

				<c:if test="${empty users}">
					<tr>
						<td colspan="5" class="text-center text-danger">
							No users found
						</td>
					</tr>
				</c:if>
			</tbody>
		</table>

	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
