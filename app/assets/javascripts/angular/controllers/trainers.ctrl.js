function TrainersCtrl ($scope, $routeParams, Client) {

  $scope.clients = Client.query();

  $scope.setActive('trainers');

  $scope.currentClient = null;

  $scope.setClient = function (id) {
   $scope.currentClient = Client.get({clientId: id});
   $scope.currentWorkout = null;
  };

  $scope.setCurrentClientWorkout = function (id) {
    $scope.currentClientWorkout = $scope.currentClient.workouts[id];
  };
}