<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.label {
	font-weight: 600;
}
</style>
</head>

<body>

	<div class="container mt-5">

		<div class="card shadow">

			<div class="card-header bg-warning">
				<h4 class="mb-0">Edit User</h4>
			</div>

			<div class="card-body">

				<form action="updateUser" method="post">

					<!-- Hidden fields (NOT editable) -->
					<input type="hidden" name="userId" value="${user.userId}">
					<input type="hidden" name="createdAt" value="${user.createdAt}">
					<input type="hidden" name="email" value="${user.email}">

					<div class="row g-3">

						<div class="col-md-6">
							<label class="label">First Name</label>
							<input type="text" class="form-control"
								name="firstName" value="${user.firstName}" required>
						</div>

						<div class="col-md-6">
							<label class="label">Last Name</label>
							<input type="text" class="form-control"
								name="lastName" value="${user.lastName}" required>
						</div>

						<div class="col-md-6">
							<label class="label">Gender</label>
							<select name="gender" class="form-select" required>
								<option value="">-- Select --</option>
								<option value="Male"
									${user.gender == 'Male' ? 'selected' : ''}>Male</option>
								<option value="Female"
									${user.gender == 'Female' ? 'selected' : ''}>Female</option>
								<option value="Other"
									${user.gender == 'Other' ? 'selected' : ''}>Other</option>
							</select>
						</div>

						<div class="col-md-6">
							<label class="label">Contact Number</label>
							<input type="text" class="form-control"
								name="contactNum" value="${user.contactNum}">
						</div>

						<div class="col-md-6">
							<label class="label">City</label>
							<input type="text" class="form-control"
								name="city" value="${user.city}">
						</div>

						<div class="col-md-6">
							<label class="label">State</label>
							<input type="text" class="form-control"
								name="state" value="${user.state}">
						</div>

						<div class="col-md-6">
							<label class="label">Country</label>
							<input type="text" class="form-control"
								name="country" value="${user.country}">
						</div>

						<div class="col-md-6">
							<label class="label">Role</label>
							<select name="role" class="form-select">
								<option value="ADMIN"
									${user.role.equals("ADMIN") ? 'selected' : ''}>ADMIN</option>
								<option value="FACULTY"
									${user.role == 'USER' ? 'selected' : ''}>USER</option>
								 
							</select>
						</div>

						<div class="col-md-6">
							<label class="label">Active Status</label>
							<select name="active" class="form-select">
								<option value="true"
									${user.active ? 'selected' : ''}>Active</option>
								<option value="false"
									${!user.active ? 'selected' : ''}>Inactive</option>
							</select>
						</div>

					</div>

					<div class="mt-4 text-end">
						<button type="submit" class="btn btn-success">
							Update
						</button>
						<a href="listUser" class="btn btn-secondary">
							Cancel
						</a>
					</div>

				</form>

			</div>
		</div>

	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
