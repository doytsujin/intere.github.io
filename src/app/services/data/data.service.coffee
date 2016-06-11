angular.module 'intereGithubSite'
  .service 'DataService', ['$http', '$log', ($http, $log) ->
    'ngInject'

    @getResume = ->
      $http.get '/assets/resume.json'

    @getProjects = ->
      $http.get '/assets/projects.json'

    return
]
