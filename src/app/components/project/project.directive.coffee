angular.module 'intereGithubSite'
  .directive 'project', ($rootScope, $log, $timeout) ->

    ProjectController = ($scope) ->
      'ngInject'
      vm = this

      $scope.project = vm.project
      $scope.index = vm.index
      $scope.selectedCarousel = 0

      return vm


    directive =
      restrict: 'E'
      templateUrl: 'app/components/project/project.html'
      scope:
        project: '='
        index: '='
        autoscroll: '='
      controller: ProjectController
      controllerAs: 'vm'
      bindToController: true
