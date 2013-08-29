App.factory 'Trainer', ['$resource', ($resource) ->
  $resource '/api/trainers/:id', id: '@id'
]