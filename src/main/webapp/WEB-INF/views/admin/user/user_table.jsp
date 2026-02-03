<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User List</title>

                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Bootstrap JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <!-- jQuery (không bắt buộc, nhưng giữ theo code bạn) -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">

                    <!-- Title + Create button -->
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h3>User List</h3>
                        <a href="/admin/user/create" class="btn btn-primary">
                            Create User
                        </a>

                    </div>

                    <!-- User table -->
                    <table class="table table-bordered table-hover align-middle text-center">
                        <thead>
                            <tr>

                                <th>ID</th>
                                <th>Email</th>
                                <th>Full Name</th>
                                <th width="220">Actions</th>

                            </tr>
                        </thead>
                        <!-- Truyền dữ liệu từ Controller sang View -->
                        <tbody>

                            <c:forEach var="user" items="${users1}">
                                <tr>
                                    <th>${ user.id } </th>
                                    <td>${ user.email } </td>
                                    <td>${ user.fullName } </td>
                                    <td>
                                        <a href="/admin/user/${user.id}" class="btn btn-sm btn-info text-white">View</a>
                                        <a href="/admin/user/update/${user.id}"
                                            class="btn btn-sm btn-warning">Update</a>
                                        <a href="/admin/user/delete/${user.id}" class="btn btn-sm btn-danger">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>

                </div>

                <!-- Bootstrap JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>