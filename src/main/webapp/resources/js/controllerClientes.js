angular.module('appCliente', [])
        .controller('controllerClientes', function ($scope, $http) {
            $scope.cliente = {};

            $scope.salvarCliente = function (cliente) {
                $http.post('https://servicocontrolepedidos.herokuapp.com/cliente', cliente).
                        then(function (response) {
                            if (response.data) {
                                $scope.mensagemCliente = "Cliente cadastrado com sucesso!!!";
                            }

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
                        then(function (response) {
                            if (response.data) {
                                $scope.mensagemCliente = "Cliente Alterado com sucesso!!!";
                            }

                        });
            };

            $scope.cpf = "";
            $scope.excluirCliente = function (cliente) {
                $http.delete('https://servicocontrolepedidos.herokuapp.com/cliente/' + cliente.idcliente).
                        then(function (response) {
                            $scope.cliente = response.data;
                            if (response.data) {
                                
                                $scope.clientes[0]={};
                                $scope.mensagemCliente = "Conta excluida com sucesso!!!";
                            }

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
