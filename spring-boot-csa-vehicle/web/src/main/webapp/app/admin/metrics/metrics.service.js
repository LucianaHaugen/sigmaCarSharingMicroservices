(function() {
    'use strict';

    angular
        .module('csaApp')
        .factory('CsaMetricsService', CsaMetricsService);

    CsaMetricsService.$inject = ['$rootScope', '$http'];

    function CsaMetricsService ($rootScope, $http) {
        var service = {
            getMetrics: getMetrics,
            threadDump: threadDump
        };

        return service;

        function getMetrics () {
            return $http.get('management/csa/metrics').then(function (response) {
                return response.data;
            });
        }

        function threadDump () {
            return $http.get('management/dump').then(function (response) {
                return response.data;
            });
        }
    }
})();
