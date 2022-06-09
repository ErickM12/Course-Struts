<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html ng-app="CourseStruts" lang="es">
<head>
    <jsp:include page="/views/layout/head.jsp"/>
</head>
<body ng-controller="user">
<jsp:include page="/views/layout/slideBar.jsp"/>
<div class="container-fluid">
    <div class="row  bg-light">
     <div class="col-12">
        <h1 class="text-center text-md-left">Gestión de roles</h1>
         <hr class="bg-primary" />
     </div>
        <div class="col-12 text-center text-md-right">
            <button class="btn  btn-outline-success" data-toggle="modal" data-target="#CreateRolModal">
                Registrar
            </button>
        </div>
    </div>
</div>

<jsp:include page="/views/components/roles/Modal.jsp"/>
<jsp:include page="/views/layout/footer.jsp"/>
</body>
</html>