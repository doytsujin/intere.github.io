angular.module 'intereGithubSite'
  .controller 'AboutController', ($rootScope, $scope, $timeout) ->
    'ngInject'
    vm = this


    vm.parseDate = (dateString) ->
      moment dateString, 'YYYY-MM-DD'

    $scope.bio = $rootScope.resume.basics
    $scope.work = _.sortBy $rootScope.resume.work, (job) ->
      0 - vm.parseDate(job.startDate).unix()


    return
