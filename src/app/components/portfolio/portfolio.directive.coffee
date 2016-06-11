angular.module 'intereGithubSite'
  .directive 'portfolio', ->

    PortfolioController = (moment) ->
      'ngInject'
      vm = this
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/portfolio/portfolio.html'
      controller: PortfolioController
      controllerAs: 'vm'
      bindToController: true
