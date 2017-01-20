// (function() {

//   "use strict";

//   angular.module("app".controller("cardCtrl", function($scope, $http) {

//     $scope.setup = function() {
//       $http.get('<%= ENV['API_URL'] %>').then(function(response) {
//         $scope.cards = response.data;
//       });
//     };
//   });

// })();