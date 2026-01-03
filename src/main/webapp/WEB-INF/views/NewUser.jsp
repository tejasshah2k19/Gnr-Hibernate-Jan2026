<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card shadow">
                <div class="card-header bg-primary text-white text-center">
                    <h4>User Registration Form</h4>
                </div>

                <div class="card-body">
                    <form action="saveUser" method="post">

                        <!-- First Name -->
                        <div class="mb-3">
                            <label class="form-label">First Name</label>
                            <input type="text" name="firstName" class="form-control" required>
                        </div>

                        <!-- Last Name -->
                        <div class="mb-3">
                            <label class="form-label">Last Name</label>
                            <input type="text" name="lastName" class="form-control" required>
                        </div>

                        <!-- Gender -->
                        <div class="mb-3">
                            <label class="form-label">Gender</label>
                            <select name="gender" class="form-select" required>
                                <option value="">-- Select Gender --</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>

                        <!-- Password -->
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password" class="form-control" required>
                        </div>

                        <!-- Contact Number -->
                        <div class="mb-3">
                            <label class="form-label">Contact Number</label>
                            <input type="text" name="contactNum" class="form-control" required>
                        </div>

                        <!-- City -->
                        <div class="mb-3">
                            <label class="form-label">City</label>
                            <input type="text" name="city" class="form-control">
                        </div>

                        <!-- State -->
                        <div class="mb-3">
                            <label class="form-label">State</label>
                            <input type="text" name="state" class="form-control">
                        </div>

                        <!-- Country -->
                        <div class="mb-3">
                            <label class="form-label">Country</label>
                            <input type="text" name="country" class="form-control">
                        </div>

                        <!-- Role -->
                        <div class="mb-3">
                            <label class="form-label">Role</label>
                            <select name="role" class="form-select">
                                <option value="USER">USER</option>
                                <option value="ADMIN">ADMIN</option>
                            </select>
                        </div>

                        <!-- Profile Pic URL -->
                        <div class="mb-3">
                            <label class="form-label">Profile Picture URL</label>
                            <input type="text" name="profilePicURL" class="form-control">
                        </div>

                        <!-- Active -->
                        <div class="mb-3 form-check">
                            <input type="checkbox" name="active" value="true" class="form-check-input" checked>
                            <label class="form-check-label">Active</label>
                        </div>

                        <!-- Submit -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-success px-5">
                                Register
                            </button>
                        </div>

                    </form>
                </div>

            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
