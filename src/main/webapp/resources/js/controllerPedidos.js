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
            $scope.listarPedidos = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/pedido').
                        then(function (response) {
                            $scope.produtos = response.data;

                        });
            };

            $scope.pedidos = [];
            $scope.cpf = "";
            $scope.listarPedidosPorCpf = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/pedido/listar/' + $scope.cpf).
                        then(function (response) {
                            $scope.pedidos = response.data;
                        });
            };

            $scope.cancelarPedido = function (pedido) {
                $http.delete('https://servicocontrolepedidos.herokuapp.com/pedido/' + pedido.idpedido).
                        then(function (response) {
                            indice = $scope.pedidos.indexOf(pedido);
                            $scope.pedidos.splice(indice, 1);
                        });
            };

            $scope.atribuirPedido = function (pedido,funcionario) {
                pedido.status = "Pendente";
                pedido.idfuncionario = funcionario.idfuncionario;
                $http.put('https://servicocontrolepedidos.herokuapp.com/pedido', pedido).
                        then(function (response) {
                            indice = $scope.pedidos.indexOf(pedido);
                            $scope.pedidos.splice(indice, 1);
                        });
            };
            $scope.pedidos=[];
            $scope.confirmarPedido = function (pedido,funcionario) {
                pedido.status = "Entregue";
                pedido.idfuncionario = funcionario.idfuncionario;
                $http.put('https://servicocontrolepedidos.herokuapp.com/pedido', pedido).
                        then(function (response) {
                            indice = $scope.pedidos.indexOf(pedido);
                            $scope.pedidos.splice(indice, 1);
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

            $scope.produto = {};
            $scope.buscarProduto = function (pedido) {
                $http.get('https://servicocontrolepedidos.herokuapp.com/produto/' + pedido.idproduto).
                        then(function (response) {
                            $scope.produto = response.data;
                        });
            };


        });

