function ClientsCtrl ($scope) {

  $scope.setActive('clients');

  $scope.currentClient = null;

  $scope.setClient = function (id) {
    $scope.currentClient = $scope.clients[id];
  };
}