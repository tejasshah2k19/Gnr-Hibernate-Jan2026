<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.profile-pic {
	width: 120px;
	height: 120px;
	object-fit: cover;
	border-radius: 50%;
	border: 2px solid #0d6efd;
}
.label {
	font-weight: 600;
	color: #555;
}
</style>
</head>

<body>

	<div class="container mt-5">

		<div class="card shadow">

			<div class="card-header bg-primary text-white">
				<h4 class="mb-0">User Profile</h4>
			</div>

			<div class="card-body">

				<div class="row mb-4 text-center">
					<div class="col-12">
						<c:choose>
							<c:when test="${not empty user.profilePicURL}">
								<img src="${user.profilePicURL}" class="profile-pic">
							</c:when>
							<c:otherwise>
								<img src="https://via.placeholder.com/120"
									class="profile-pic">
							</c:otherwise>
						</c:choose>
					</div>
				</div>

				<div class="row g-3">
					<div class="col-md-6">
						<span class="label">First Name:</span> ${user.firstName}
					</div>

					<div class="col-md-6">
						<span class="label">Last Name:</span> ${user.lastName}
					</div>

					<div class="col-md-6">
						<span class="label">Gender:</span> ${user.gender}
					</div>

					<div class="col-md-6">
						<span class="label">Email:</span> ${user.email}
					</div>

					<div class="col-md-6">
						<span class="label">Contact Number:</span> ${user.contactNum}
					</div>

					<div class="col-md-6">
						<span class="label">Role:</span>
						<span class="badge bg-info">${user.role}</span>
					</div>

					<div class="col-md-6">
						<span class="label">City:</span> ${user.city}
					</div>

					<div class="col-md-6">
						<span class="label">State:</span> ${user.state}
					</div>

					<div class="col-md-6">
						<span class="label">Country:</span> ${user.country}
					</div>

					<div class="col-md-6">
						<span class="label">Created At:</span>
						${user.createdAt }
					</div>

					<div class="col-md-6">
						<span class="label">Status:</span>
						<c:choose>
							<c:when test="${user.active}">
								<span class="badge bg-success">Active</span>
							</c:when>
							<c:otherwise>
								<span class="badge bg-danger">Inactive</span>
							</c:otherwise>
						</c:choose>
					</div>
				</div>

			</div>

			<div class="card-footer text-end">
				<a href="editUser?userId=${user.userId}" class="btn btn-warning">
					Edit
				</a>
				<a href="listUser" class="btn btn-secondary">
					Back
				</a>
			</div>

		</div>

	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
