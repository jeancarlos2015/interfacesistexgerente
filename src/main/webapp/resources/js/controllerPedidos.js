angular.module('appPedidos', [])
        .controller('controllerPedidos', function ($scope, $http) {
            $scope.pedido = {};
            $scope.salvarPedido = function () {
                $http.post('https://servicocontroleusuarios.herokuapp.com/pedido', $scope.pedido).
                        then(function (response) {
                            if (response.data) {
                                $scope.mensagemPedido = "Pedido cadastrado com sucesso!!!";
                            } else {
                                $scope.mensagemPedido = "Pedido não foi cadastrado!!!";
                            }

                        });
            };



          
            $scope.pedidos = [];
            $scope.listarProdutos = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/produto/size/3').
                        then(function (response) {
                            $scope.produtos = response.data;

                        });
            };

            $scope.produtos = [];
            $scope.nome = {};
            $scope.listarProdutosNome = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/produto/listar/', $scope.nome).
                        then(function (response) {
                            $scope.produtos = response.data;

                        });
            };


        });

