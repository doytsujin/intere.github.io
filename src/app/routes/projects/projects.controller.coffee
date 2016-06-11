angular.module 'intereGithubSite'
  .controller 'ProjectsController', ($scope, $rootScope, $log) ->
    'ngInject'
    vm = this

    $scope.myProjects = $rootScope.projects

    $scope.printProjects = ->
      projects = JSON.stringify $rootScope.projects
      $log.info("Projects: " + projects)
      projects
    return
