function TrainersCtrl ($scope, $routeParams, Client, Trainer) {

  $scope.trainer = Trainer.get({trainerId: 9});
  $scope.clients = Client.query();
  
  $scope.currentClient = null;

  $scope.toggleClientList = function(id) {
    $scope.showHideClientAccess =!$scope.showHideClientAccess;
    $scope.showHideClients = !$scope.showHideClients;
    $scope.currentClient = null;
  }

  $scope.setCurrentClient = function (id) {
    $scope.showHideClients =!$scope.showHideClients;
    $scope.showHideClientAccess =!$scope.showHideClientAccess;
    $scope.currentClient = Client.get({clientId: id});
    $scope.currentWorkout = null;
  };

  $scope.setCurrentClientWorkout = function (id) {
    $scope.currentClientWorkout = $scope.currentClient.workouts[id];
  };
}