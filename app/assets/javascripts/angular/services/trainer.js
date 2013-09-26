angular.module('trainerServices', ['ngResource'])
  .factory('Trainer', function ($resource) {
    return $resource('/api/trainers/:trainerId');
  });