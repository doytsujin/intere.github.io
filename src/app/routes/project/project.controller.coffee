angular.module 'intereGithubSite'
  .controller 'ProjectController', ($scope, $rootScope, $stateParams, $log) ->
    'ngInject'
    vm = this
    $rootScope.projects

    projectName = $stateParams['projectName']

    for project in $rootScope.projects
      if project.name == projectName
        $scope.selectedProject = project
        vm.selectedProject = project

    $log.info 'Selected Project:'
    $log.info $scope.selectedProject

    return
