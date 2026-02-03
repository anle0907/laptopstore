<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Dashboard - SB Admin</title>
            <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
            <link href="/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />

            <div id="layoutSidenav">
                <jsp:include page="../layout/sidebar.jsp" />
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">User Details</h1>

                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item">
                                    <a href="/admin">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active">User Details</li>
                            </ol>

                            <div class="row justify-content-center mt-4">
                                <div class="col-lg-6 col-md-8">
                                    <div class="card shadow-sm border-0">

                                        <!-- Card Header -->
                                        <div class="card-header bg-primary text-white">
                                            <h5 class="mb-0">
                                                <i class="fa-solid fa-user me-2"></i>
                                                User Information
                                            </h5>
                                        </div>

                                        <!-- Card Body -->
                                        <div class="card-body p-4">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span class="fw-semibold">ID</span>
                                                    <span>${user.id}</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span class="fw-semibold">Email</span>
                                                    <span>${user.email}</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span class="fw-semibold">Phone</span>
                                                    <span>${user.phone}</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span class="fw-semibold">Full Name</span>
                                                    <span><strong
                                                            style="color: yellowgreen;">${user.fullName}</strong></span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span class="fw-semibold">Address</span>
                                                    <span>${user.address}</span>
                                                </li>
                                            </ul>
                                        </div>

                                        <!-- Card Footer -->
                                        <div class="card-footer text-end bg-light">
                                            <a href="/admin/user" class="btn btn-outline-secondary">
                                                <i class="fa-solid fa-arrow-left me-1"></i>
                                                Back to User List
                                            </a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>

                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="js/scripts.js"></script>
        </body>

        </html>