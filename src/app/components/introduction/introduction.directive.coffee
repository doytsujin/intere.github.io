angular.module 'intereGithubSite'
  .directive 'introduction', ->

    IntroductionController = (moment) ->
      'ngInject'
      vm = this
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/introduction/introduction.html'
      controller: IntroductionController
      controllerAs: 'vm'
      bindToController: true
