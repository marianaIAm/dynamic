function ClientsCtrl ($scope, $routeParams, Client) {

  $scope.clients = Client.query();

  $scope.setActive('clients');

  $scope.currentClient = null;

  $scope.setClient = function (id) {
   // $scope.currentClient = $scope.clients[id];
   $scope.currentClient = Client.get({clientId: id});
  };
}