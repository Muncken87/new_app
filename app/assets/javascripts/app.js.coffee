app = angular.module('shop', [ 'ngResource' ])

document.addEventListener 'turbolinks:load', ->
  angular.bootstrap document.body, [ 'shop' ]
  return

app.factory 'models', [
  '$resource'
  ($resource) ->
    orders_model = $resource('/orders/:id.json', id: '@id')
    products_model = $resource('/products/:id.json', id: '@id')
    x =
      orders: orders_model
      products: products_model
    x
]
app.controller 'OrdersCtrl', [
  '$scope'
  'models'
  ($scope, models) ->
    # Here will be all code belonging to this controller
    $scope.orders = models.orders.query()
    $scope.products = models.products.query()

    $scope.addOrder = ->
      if !$scope.newOrder.product_id or $scope.newOrder.total == ''
        return
      order = models.orders.save($scope.newOrder, ->
        recent_order = models.orders.get(id: order.id)
        $scope.orders.push recent_order
        $scope.newOrder = ''
        return
      )
      return

    $scope.deleteOrder = (order) ->
      models.orders.delete order
      $scope.orders.splice $scope.orders.indexOf(order), 1
      return

    return
]
app.run ($rootScope, $location) ->
  $rootScope.auth_url = 'http://localhost:3000'
  $rootScope.image_url = $rootScope.auth_url + '/assets/images/'
  return
