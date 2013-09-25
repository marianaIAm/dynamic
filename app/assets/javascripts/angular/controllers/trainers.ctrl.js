function TrainersCtrl ($scope, $routeParams, Client) {

  $scope.clients = Client.query();

  $scope.currentClient = null;

  $scope.toggleClientList = function(id) {
    $scope.showHideClients = !$scope.showHideClients;
    $scope.currentClient = null;
  }

  $scope.setCurrentClient = function (id) {
    $scope.showHideClients=!$scope.showHideClients;
    $scope.currentClient = Client.get({clientId: id});
    $scope.currentWorkout = null;
  };

  $scope.setCurrentClientWorkout = function (id) {
    $scope.currentClientWorkout = $scope.currentClient.workouts[id];
  };
}