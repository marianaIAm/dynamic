App.controller 'TrainersCtrl', ['$scope', 'Trainer', ($scope, Trainer) ->
  $scope.trainers = Trainer.query()
  $scope.selectedTrainer = null

  $scope.showTrainer = (trainer) ->
    $scope.selectedTrainer = trainer
]