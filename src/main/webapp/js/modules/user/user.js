app.controller('user', ['$scope', '$http', '$window', function ($scope, $http){
  $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";

  $scope.arrayStatus = []
  $scope.rol = {}

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
      console.log(response)
    })
  }

}])