angular.module('dynamicBuild', ['clientServices'])
  .config(clientRouter);

function clientRouter ($routeProvider) {
  $routeProvider
    .when('/clients', {templateUrl: 'partials/client_details.html',
      controller: 'ClientsCtrl'})
    .when('/trainers', {templateUrl: 'partials/trainer_details.html',
      controller: 'TrainersCtrl'})
    .when('/exercises', {template: '<h3>Exercises</h3> {{clients | json}}',
      controller: 'ExercisesCtrl'});
}