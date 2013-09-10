function ClientsCtrl ($scope, $routeParams, Client) {
  var idParam = $routeParams.clientId;
  $scope.currentClient = Client.get({clientId: idParam});
}