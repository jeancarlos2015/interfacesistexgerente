angular.module('appFuncionario', [])
        .controller('controllerFuncionarios', function ($scope, $http) {
            $scope.funcionario = {};
            $scope.salvarFuncionario = function () {
                $http.post('https://servicogerentefornecedor.herokuapp.com/funcionario', $scope.funcionario).
                        then(function (response) {
                            if (response.data) {
                                $scope.mensagemFuncionario = "Funcionário cadastrado com sucesso!!!";
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
