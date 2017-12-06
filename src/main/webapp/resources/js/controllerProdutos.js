angular.module('appProduto', [])
        .controller('controllerProdutos', function ($scope, $http) {
          
            $scope.produtos = [];
            $scope.listarProdutos = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/produto/size/2').
                        then(function (response) {
                            $scope.produtos = response.data;

                        });
            };

            $scope.produtos1 = [];
            $scope.nome = "";
            $scope.listarProdutosNome = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/produto/listar/'+$scope.nome).
                        then(function (response) {
                            $scope.produtos1 = response.data;

                        });
            };

        });

