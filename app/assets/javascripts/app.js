angular.module('dynamicBuild', ['clientServices', 'trainerServices'])
  .config(clientRouter);

function clientRouter ($routeProvider) {
  $routeProvider
    .when('/', {templateUrl: 'partials/main.html',
      controller: 'MainCtrl'})
    .when('/clients/:clientId', {templateUrl: 'partials/client_details.html',
      controller: 'ClientsCtrl'})
    .when('/trainers/:trainerId', {templateUrl: 'partials/trainer_details.html',
      controller: 'TrainersCtrl'})
}
