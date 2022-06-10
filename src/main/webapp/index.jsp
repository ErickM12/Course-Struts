<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html ng-app="CourseStruts" lang="es">
<head>
    <jsp:include page="/views/layout/head.jsp"/>
</head>
<body ng-controller="user">
<jsp:include page="/views/layout/slideBar.jsp"/>
<div class="container-fluid">
    <div class="row ">
        <div class="col-12">
            <h1 class="text-center text-md-left">Gestión de roles</h1>
            <hr class="bg-primary"/>
        </div>
        <div class="col-12 text-center text-md-right">
            <button class="btn  btn-outline-success" data-toggle="modal" data-target="#CreateRolModal">
                Registrar
            </button>
        </div>
        <div class="container">
            <div class="col-12 table-responsive">
                <table class="table table-hover" ng-init="findAllRoles()">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Estado</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="rol in arrayRoles | orderBy:'status.name'">
                       <td ng-bind="$index + 1"></td>
                        <td ng-bind="rol.name"></td>
                        <td ng-bind="rol.status.name" ng-class="rol.status.name === 'Activo' ? 'text-success' : 'text-danger'"></td>
                        <td class="text-center">
                            <button class="btn btn-outline-info" ng-click="detailsRolModal(rol)">Detalle</button>
                            <button class="btn btn-outline-warning" ng-click="updateRolModal(rol)">Modificar</button>
                            <button class="btn btn-outline-danger">Eliminar</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>

<jsp:include page="/views/components/roles/Modal.jsp"/>
<jsp:include page="/views/layout/footer.jsp"/>
</body>
</html>