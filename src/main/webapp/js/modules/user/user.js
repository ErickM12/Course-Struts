app.controller('user', ['$scope', '$http', '$window', function ($scope, $http){
  $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";

  $scope.arrayStatus = []
  $scope.arrayRoles = []
  $scope.arrayRolesSelected = []
  $scope.rol = {}
  $scope.user = {}

  $scope.findAllStatus = () => {
    $http({
      method: 'POST',
      url: 'Course-Struts/findAllStatus'
    }).then(function (response){
      const {data: {listStatus}} = response
      $scope.arrayStatus = listStatus
    })
  }

  $scope.createRol = () =>{
    $http({
      method: 'POST',
      url: 'Course-Struts/createRol',
      data: `data=${angular.toJson($scope.rol)}`
    }).then((response) =>{
      $scope.findAllRoles()
      $('#CreateRolModal').modal('hide')
    })
  }

  $scope.findAllRoles = () => {
    $http({
      method: 'POST',
      url: 'Course-Struts/findAllRoles'
    }).then(function (response){
      const {data: {listRoles}} = response
      $scope.arrayRoles = listRoles
    })
  }

  $scope.detailsRolModal= (rol) =>{
    $scope.detailRol = angular.copy(rol)
    $('#DeatailsRolModal').modal('toggle')
  }

  $scope.updateRolModal= (rol) =>{
    $scope.updateRolData = angular.copy(rol)
    $('#UpdateRolModal').modal('toggle')
  }

  $scope.updateRol = () =>{
    $http({
      method: 'POST',
      url: 'Course-Struts/updateRol',
      data: `data=${angular.toJson($scope.updateRolData)}`
    }).then((response) =>{
      $scope.findAllRoles()
      $('#UpdateRolModal').modal('hide')
    })
  }

  $scope.selectRol = (rol) =>{
    $scope.arrayRolesSelected.push(rol)
    $scope.arrayRoles.splice($scope.arrayRoles.indexOf(rol), 1)
  }

  $scope.deleteRol = (rol) =>{
    $scope.arrayRoles.push(rol)
    $scope.arrayRolesSelected.splice($scope.arrayRolesSelected.indexOf(rol), 1)
  }

  $scope.createUser = () =>{
    $scope.user.roles = $scope.arrayRolesSelected
    console.log("usuario",$scope.user)
  }



}])