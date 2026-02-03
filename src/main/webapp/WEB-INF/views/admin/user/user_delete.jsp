<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Delete User ${id}</title>

                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Bootstrap JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <!-- jQuery (không bắt buộc, nhưng giữ theo code bạn) -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">

                    <div class="row">
                        <div class="d-flex justify-content-between">
                            <h3>
                                Delete User ${id}
                            </h3>

                            <hr />

                            <div class="alert alert-danger">
                                Are you sure to delete this user ?
                            </div>

                            <form:form method="post" action="/admin/user/delete" modelAttribute="newUser">

                                <div class="mb-3">
                                    <label class="form-label">ID: </label>
                                    <form:input value="${id}" type="text" class="form-control" path="id" />
                                </div>
                                <button class="btn btn-danger">
                                    Confirm
                                </button>

                            </form:form>

                        </div>
                    </div>



                </div>

                <!-- Bootstrap JS -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>