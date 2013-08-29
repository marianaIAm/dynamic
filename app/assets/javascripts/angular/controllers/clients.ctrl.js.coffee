App.controller 'ClientsCtrl', ['$scope', 'Client', ($scope, Client) ->
  $scope.clients = Client.query()
  $scope.selectedClient = null

  $scope.showClient = (client) ->
    $scope.selectedClient = client
]