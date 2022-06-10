<%--
  Created by IntelliJ IDEA.
  User: Erick
  Date: 09/06/2022
  Time: 12:31 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Modal para el registro de roles -->
<div class="modal fade" id="CreateRolModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registro de un nuevo rol</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label>Nombre: <span class="text-danger">*</span></label>
                                <input class="form-control" type="text" placeholder="Administrador" ng-model="rol.name" name="name" required min="2" maxlength="45" />
                            </div>

                            <div class="form-group" ng-init="findAllStatus()">
                                <label>Estado: <span class="text-danger">*</span></label>
                               <select class="form-control" name="status" ng-model="rol.status" ng-options="status.name for status in arrayStatus track by status.id" required>
                                   <option value="">Seleccione</option>
                               </select>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-outline-success" ng-click="createRol()">Registrar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal para el detalle de roles -->

<div class="modal fade" id="DeatailsRolModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalles del rol</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Nombre: <span class="text-danger">*</span></label>
                            <input class="form-control" type="text"  ng-model="detailRol.name" name="detailsName" required min="2" maxlength="45" disabled />
                        </div>

                        <div class="form-group" ng-init="findAllStatus()">
                            <label>Estado: <span class="text-danger">*</span></label>
                            <select class="form-control" name="detailsStatus" ng-model="detailRol.status" ng-options="status.name for status in arrayStatus track by status.id" disabled>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="UpdateRolModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modificar un rol</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label>Nombre: <span class="text-danger">*</span></label>
                            <input class="form-control" type="text"  ng-model="updateRolData.name" name="detailsName" required min="2" maxlength="45"/>
                        </div>

                        <div class="form-group" ng-init="findAllStatus()">
                            <label>Estado: <span class="text-danger">*</span></label>
                            <select class="form-control" name="detailsStatus" ng-model="updateRolData.status" ng-options="status.name for status in arrayStatus track by status.id" required>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-outline-success" ng-click="updateRol()">Guardar</button>
            </div>
        </div>
    </div>
</div>