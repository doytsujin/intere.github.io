angular.module 'intereGithubSite'
  .run ($log, $rootScope, DataService) ->
    'ngInject'

    # Load the Resume JSON
    DataService.getResume().then (result) ->
      $rootScope.resume = result.data
      # $log.info("Loaded Resume")
      # $log.info($rootScope.resume)

    # Load the Projects JSON
    DataService.getProjects().then (result) ->
      $rootScope.projects = result.data
      # $log.info("Loaded Projects")
      # $log.info($rootScope.projects)

    $log.debug 'runBlock end'
