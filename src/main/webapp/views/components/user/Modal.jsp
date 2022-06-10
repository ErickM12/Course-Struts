<%--
  Created by IntelliJ IDEA.
  User: Erick
  Date: 10/06/2022
  Time: 01:32 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="CreateUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registro de un nuevo usuario</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-12">
                            <h4>Datos personales</h4>
                            <hr class="bg-primary" />
                            <div class="form-group">
                                <label>Nombre: <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" placeholder="erick" ng-model="user.person.name" name="name" required min="2" maxlength="45" />
                            </div>

                            <div class="form-group">
                                <label>Primer apellido: <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" placeholder="Mireles" ng-model="user.person.surname" name="surname" required min="2" maxlength="45" />
                            </div>

                            <div class="form-group">
                                <label>Segundo apellido: <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" placeholder="Merchant" ng-model="user.person.lastname" name="lastname" min="2" maxlength="45" />
                            </div>

                            <div class="form-group">
                                <label>Teléfono: <span class="text-danger">*</span></label>
                                <input class="form-control" type="phone" placeholder="7773799346" ng-model="user.person.phone" name="phone" min="2" maxlength="11" />
                            </div>

                            <div class="form-group">
                                <label>Fecha de nacimiento: <span class="text-danger">*</span></label>
                                <input class="form-control" type="date" ng-model="user.person.birthday" name="birthday"/>
                            </div>
                            <h4>Datos del usuario</h4>
                            <hr class="bg-primary" />

                            <div class="form-group">
                                <label>Correo electrónico: <span class="text-danger">*</span></label>
                                <input class="form-control" type="email" placeholder="erickmireles@utez.edu.mx" ng-model="user.email" name="email" required />
                            </div>

                            <div class="form-group">
                                <label>Contraseña: <span class="text-danger">*</span></label>
                                <input class="form-control" type="password" placeholder="*******" ng-model="user.password" name="password" required />
                            </div>

                            <div class="form-group" ng-init="findAllStatus()">
                                <label>Estado: <span class="text-danger">*</span></label>
                                <select class="form-control" name="status" ng-model="user.status" ng-options="status.name for status in arrayStatus track by status.id" required>
                                    <option value="">Seleccione</option>
                                </select>
                            </div>

                            <h4>Asignación de roles</h4>
                            <hr class="bg-primary" />
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-12 col-md-6 table-responsive">
                                <table class="table table-hover" ng-init="findAllRoles()">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nombre</th>
                                        <th class="text-center">Asignar</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr ng-repeat="rol in arrayRoles | orderBy:'name'">
                                        <td ng-bind="$index + 1"></td>
                                        <td ng-bind="rol.name"></td>
                                        <td class="text-center">
                                            <button class="btn btn-outline-success" ng-click="selectRol(rol)"> > </button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>


                            <div class="col-12 col-md-6 table-responsive">
                                <table class="table table-hover" ng-init="findAllRoles()">
                                    <thead>
                                    <tr>
                                        <th>Acciones</th>
                                        <th>Nombre</th>
                                        <th class="text-center">#</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr ng-repeat="rol in arrayRolesSelected | orderBy:'name'">
                                        <td class="text-center">
                                            <button class="btn btn-outline-danger" ng-click="deleteRol(rol)"> < </button>
                                        </td>
                                        <td ng-bind="rol.name"></td>
                                        <td ng-bind="$index + 1"></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-outline-success" ng-   click="createUser()">Registrar</button>
            </div>
        </div>
    </div>
</div>