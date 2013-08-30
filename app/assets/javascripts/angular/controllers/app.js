function AppCtrl ($scope) {
  $scope.setActive = function (type) {
    $scope.clientsActive = '';
    $scope.workoutsActive = '';
    $scope.exercisesActive = '';

    $scope[type + 'Active'] = 'active';
  }

  $scope.clients = {
  "29": {
      id: 29,
      account_id: 62,
      trainer_id: 29,
      name_first: "Firsty",
      name_last: "Lasty",
      phone: "310-111-1111",
      created_at: "2013-08-29T08:55:35.884Z",
      updated_at: "2013-08-29T08:55:35.884Z",
      "workouts": [
        "Monday Workout",
        "Tuesday Workout"
      ]
    },
    "30": {
      id: 30,
      account_id: 63,
      trainer_id: 29,
      name_first: "Mary",
      name_last: "Smith",
      phone: "310-222-2222",
      created_at: "2013-08-29T08:55:35.888Z",
      updated_at: "2013-08-29T08:55:35.888Z",
      "workouts": [
        "Wednesday Workout",
        "Thurseday Workout"
      ]
    }
  };
}