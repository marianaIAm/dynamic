// angular.module('dynamicBuild', ['clientServices', 'ui.bootstrap'])
angular.module('dynamicBuild', ['clientServices'])
  .config(clientRouter);

function clientRouter ($routeProvider) {
  $routeProvider
    .when('/', {templateUrl: 'partials/client_details.html',
      controller: 'ClientsCtrl'})
    .when('/workouts', {template: '<h3>Workouts</h3> {{clients | json}}',
      controller: 'WorkoutsCtrl'})
    .when('/exercises', {template: '<h3>Exercises</h3> {{clients | json}}',
      controller: 'ExercisesCtrl'});
}