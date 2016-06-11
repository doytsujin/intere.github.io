angular.module 'intereGithubSite'
  .directive 'footer', ->

    FooterController = (moment) ->
      'ngInject'
      vm = this
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/footer/footer.html'
      controller: FooterController
      controllerAs: 'vm'
      bindToController: true
