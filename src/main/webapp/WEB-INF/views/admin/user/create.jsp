<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Create User</title>

                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Bootstrap JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <!-- jQuery (không bắt buộc, nhưng giữ theo code bạn) -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body class="bg-light">

                <div class="container mt-5">
                    <div class="row justify-content-center">
                        <div class="col-md-6 col-lg-5">
                            <div class="card shadow">
                                <div class="card-body">
                                    <h3 class="text-center mb-4">Create User</h3>

                                    <form:form method="post" action="/admin/user/create" modelAttribute="newUser">
                                        <div class="mb-3">
                                            <label class="form-label">Email address</label>
                                            <form:input type="email" class="form-control" placeholder="Enter email"
                                                path="email" />
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Password</label>
                                            <form:password path="password" class="form-control"
                                                placeholder="Enter password" />
                                        </div>


                                        <div class=" mb-3">
                                            <label class="form-label">Phone</label>
                                            <form:input type="text" class="form-control" placeholder="Enter phone"
                                                path="phone" />
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Full Name</label>
                                            <form:input type="text" class="form-control" placeholder="Enter full name"
                                                path="fullName" />
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Address</label>
                                            <form:input type="text" class="form-control" placeholder="Enter address"
                                                path="address" />
                                        </div>

                                        <button type="submit" class="btn btn-primary w-100">
                                            Create
                                        </button>
                                    </form:form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </body>

            </html>