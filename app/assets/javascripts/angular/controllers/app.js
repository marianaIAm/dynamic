function AppCtrl ($scope) {
  $scope.setActive = function (type) {
    $scope.clientsActive = '';
    $scope.workoutsActive = '';
    $scope.exercisesActive = '';

    $scope[type + 'Active'] = 'active';
  }
}