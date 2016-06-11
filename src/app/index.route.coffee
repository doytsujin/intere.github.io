angular.module 'intereGithubSite'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/routes/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'

      .state 'about',
        url: '/about'
        templateUrl: 'app/routes/about/about.html'
        controller: 'AboutController'
        controllerAs: 'about'

      .state 'skills',
        url: '/skills'
        templateUrl: 'app/routes/skills/skills.html'
        controller: 'SkillsController'
        controllerAs: 'skills'

      .state 'projects',
        url: '/projects'
        templateUrl: 'app/routes/projects/projects.html'
        controller: 'ProjectsController'
        controllerAs: 'projects'

      .state 'project',
        url: '/project/:projectName'
        templateUrl: 'app/routes/project/project.html'
        controller: 'ProjectController'
        controllerAs: 'project'

    $urlRouterProvider.otherwise '/'

  .run ($rootScope, $state, $stateParams) ->
    $rootScope.$state = $state
    $rootScope.$stateParams = $stateParams
