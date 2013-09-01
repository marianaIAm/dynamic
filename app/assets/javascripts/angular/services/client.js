angular.module('clientServices', ['ngResource'])
  .factory('Client', function ($resource) {
    return $resource('/api/clients/:clientId');
  });