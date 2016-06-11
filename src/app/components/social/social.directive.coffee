angular.module 'intereGithubSite'
  .directive 'social', ->

    SocialController = (moment) ->
      'ngInject'
      vm = this
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/social/social.html'
      controller: SocialController
      controllerAs: 'vm'
      bindToController: true
