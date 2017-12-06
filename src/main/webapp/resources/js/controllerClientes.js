angular.module('appCliente', [])
        .controller('controllerClientes', function ($scope, $http) {
            $scope.cliente = {};
            $scope.salvarCliente = function () {
                $http.post('https://servicocontroleusuarios.herokuapp.com/cliente', $scope.cliente).
                        then(function (response) {
                            if (response.data) {
                                $scope.mensagemCliente = "Cliente cadastrado com sucesso!!!";
                            } else {
                                $scope.mensagemCliente = "Cliente não foi cadastrado!!!";
                            }

                        });
            };
            
            
            $scope.produtos = [];
            $scope.listarProdutos = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/produto').
                        then(function (response) {
                            $scope.produtos = response.data;

                        });
            };


        });
