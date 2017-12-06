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


        });
