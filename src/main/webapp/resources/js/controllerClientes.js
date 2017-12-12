angular.module('appCliente', [])
        .controller('controllerClientes', function ($scope, $http) {
            $scope.cliente = {};

            $scope.salvarCliente = function (cliente) {
                $scope.mensagemCliente = "Enviando...";
                $http.post('https://servicocontrolepedidos.herokuapp.com/cliente', cliente).
                        success(function (response) {
                            if (response.data) {
                                $scope.mensagemCliente = "Cliente cadastrado com sucesso!!!";
                            }

                        }).error(function (e) {
                    $scope.mensagemCliente = "Nenhuma operação foi feita!!!";
                });
            };
            $scope.cpf = "";
            $scope.clientes = [];
            $scope.buscarCliente = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/cliente/' + $scope.cpf).
                        then(function (response) {
                            $scope.clientes[0] = response.data;
                        });
            };


            $scope.alterarCliente = function (cliente) {
                $http.put('https://servicocontrolepedidos.herokuapp.com/cliente', cliente).
                        success(function (response) {
                            if (response.data) {
                                $scope.mensagemCliente = "Cliente Alterado com sucesso!!!";
                            }

                        }).error(function (response) {
                    $scope.mensagemCliente = "Nenhuma operação foi feita!!!";
                });
            };

            $scope.cpf = "";
            $scope.excluirCliente = function (cliente) {
                $http.delete('https://servicocontrolepedidos.herokuapp.com/cliente/' + cliente.idcliente).
                        success(function (response) {
                            $scope.cliente = response.data;
                            if (response.data) {

                                $scope.clientes[0] = {};
                                $scope.mensagemCliente = "Conta excluida com sucesso!!!";
                            }

                        }).error(function (response) {
                    $scope.mensagemCliente = "Nenhuma operação foi feita!!!";
                });
            };

            $scope.rg = "";
            $scope.buscarFuncionario = function () {
                $http.get('https://servicogerentefornecedor.herokuapp.com/funcionario/' + $scope.rg).
                        then(function (response) {
                            $scope.funcionario = response.data;
                        });
            };

        });
