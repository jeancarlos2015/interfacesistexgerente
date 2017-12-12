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
                $http.get('https://servicocontrolepedidos.herokuapp.com/produto/listar/' + $scope.nome).
                        then(function (response) {
                            $scope.produtos1 = response.data;

                        });
            };

            $scope.rg = "";
            $scope.buscarFuncionario = function () {
                $http.get('https://servicogerentefornecedor.herokuapp.com/funcionario/' + $scope.rg).
                        then(function (response) {
                            $scope.funcionario = response.data;
                        });
            };

            $scope.pedidos = [];
            $scope.pedido = {};
            $scope.buscarPedidos = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/pedido/listar/' + $scope.cpf).
                        then(function (response) {
                            $scope.pedidos = response.data;
                        });
            };
            
            $scope.pedidosNovos = [];
            $scope.pedido = {};
            $scope.listarPedidosAtuaisNovos = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/pedido/listaratuais/Novo').
                        then(function (response) {
                            $scope.pedidosNovos = response.data;
                        });
            };
            $scope.pedidosPendentes = [];
            $scope.pedido = {};
            $scope.listarPedidosAtuaisPendentes = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/pedido/listaratuais/Pendente').
                        then(function (response) {
                            $scope.pedidosPendentes = response.data;
                        });
            };
            
            $scope.listarPedidosAtuaisEntregues = function () {
                $http.get('https://servicocontrolepedidos.herokuapp.com/pedido/listaratuais/Entregue').
                        then(function (response) {
                            $scope.pedidosEntregues = response.data;
                        });
            };
            
            $scope.funcionario={};
            $scope.produto = {};
            $scope.produto.idfornecedor = 0;
            $scope.produto.idpedido = 0;
            $scope.salvarProduto = function (funcionario) {
                $scope.produto.idfuncionario = funcionario.idfuncionario;
                $http.post('https://servicocontrolepedidos.herokuapp.com/produto', $scope.produto).
                        then(function (response) {
                            if(response.data){
                                $scope.mensagemProduto = "Produto Cadastrado com sucesso!!!";
                            }
                        });
            };
            
             $scope.cancelarPedido = function (pedido) {
                $http.delete('https://servicocontrolepedidos.herokuapp.com/pedido/' + pedido.idpedido).
                        then(function (response) {
                            indice = $scope.pedidos.indexOf(pedido);
                            $scope.pedidos.splice(indice, 1);
                        });
            };

            $scope.atribuirPedido = function (pedido, funcionario) {
                pedido.status = "Pendente";
                pedido.idfuncionario = funcionario.idfuncionario;
                $http.put('https://servicocontrolepedidos.herokuapp.com/pedido', pedido).
                        then(function (response) {
                            indice = $scope.pedidos.indexOf(pedido);
                            $scope.pedidos.splice(indice, 1);
                        });
            };
            $scope.pedidos=[];
            $scope.confirmarPedido = function (pedido, funcionario) {
                pedido.status = "Entregue";
                pedido.idfuncionario = funcionario.idfuncionario;
                $http.put('https://servicocontrolepedidos.herokuapp.com/pedido', pedido).
                        then(function (response) {
                            indice = $scope.pedidos.indexOf(pedido);
                            $scope.pedidos.splice(indice, 1);
                        });
            };

        });

