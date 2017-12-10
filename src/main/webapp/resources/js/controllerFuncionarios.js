angular.module('appFuncionario', [])
        .controller('controllerFuncionarios', function ($scope, $http) {
            $scope.funcionario={};
    
            $scope.salvarFuncionario = function (funcionario) {
                $http.post('https://servicogerentefornecedor.herokuapp.com/funcionario', funcionario).
                        then(function (response) {
                            if(response.data){
                                $scope.mensagemFuncionario = "Funcionário Cadastrado com sucesso!!!";
                            }
                        });
            };
            $scope.rg="";
            $scope.buscarFuncionario = function (rg) {
                $http.get('https://servicogerentefornecedor.herokuapp.com/funcionario/'+rg).
                        then(function (response) {
                            $scope.funcionario = response.data;
                        });
            };
            
            $scope.pedidos = [];
            $scope.pedido={};
            $scope.buscarPedidos = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/pedido/listar/'+$scope.cpf).
                        then(function (response) {
                            $scope.pedidos = response.data;
                        });
            };

        });
