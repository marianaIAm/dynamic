App.controller('ClientsCtrl', ['$scope', function($scope) {
    $scope.clients = [
        {
          id: 29,
          account_id: 62,
          trainer_id: 29,
          name_first: "Firsty",
          name_last: "Lasty",
          phone: "310-111-1111",
          created_at: "2013-08-29T08:55:35.884Z",
          updated_at: "2013-08-29T08:55:35.884Z"
        },
        {
          id: 30,
          account_id: 63,
          trainer_id: 29,
          name_first: "Mary",
          name_last: "Smith",
          phone: "310-222-2222",
          created_at: "2013-08-29T08:55:35.888Z",
          updated_at: "2013-08-29T08:55:35.888Z"
        }
    ]
    $scope.selectedClient = null

    $scope.showClient = function (client) {
      $scope.selectedClient = client
    }
}]);