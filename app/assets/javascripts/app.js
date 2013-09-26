angular.module('dynamicBuild', ['clientServices', 'trainerServices'])
  .config(clientRouter);

function clientRouter ($routeProvider) {
  $routeProvider
    .when('/clients/:clientId', {templateUrl: 'partials/client_details.html',
      controller: 'ClientsCtrl'})
    .when('/trainers', {templateUrl: 'partials/trainer_details.html',
      controller: 'TrainersCtrl'})
}
