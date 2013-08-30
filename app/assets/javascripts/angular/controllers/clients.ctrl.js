function ClientsCtrl ($scope, Client) {

  $scope.clients = Client.query();

  $scope.setActive('clients');

  $scope.currentClient = null;

  $scope.setClient = function (id) {
    $scope.currentClient = $scope.clients[id];
  };
}