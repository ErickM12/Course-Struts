<%--
  Created by IntelliJ IDEA.
  User: Erick
  Date: 10/06/2022
  Time: 01:20 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="CourseStruts" lang="es">
<head>
    <jsp:include page="/views/layout/head.jsp"/>
</head>
<body ng-controller="user">
<jsp:include page="/views/layout/slideBar.jsp"/>

<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <h1 class="text-center text-md-left">Gestión de Usuarios</h1>
            <hr class="bg-primary"/>
        </div>
        <div class="col-12 text-center text-md-right">
            <button class="btn  btn-outline-success" data-toggle="modal" data-target="#CreateUserModal">
                Registrar
            </button>
        </div>
    </div>
</div>

<jsp:include page="/views/components/user/Modal.jsp"/>
<jsp:include page="/views/layout/footer.jsp"/>
</body>
</html>
