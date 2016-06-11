angular.module 'intereGithubSite'
  .directive 'navbar', ($rootScope, $log, $timeout) ->

    NavbarController = ($scope, moment) ->
      'ngInject'
      vm = this
      # "vm.creationDate" is available by directive option "bindToController: true"
      vm.relativeDate = moment(vm.creationDate).fromNow()

      $scope.isSelected = (name) ->
        return $rootScope.$state.current.name == name
      $scope.brand = $rootScope.brand

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope:
        creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
