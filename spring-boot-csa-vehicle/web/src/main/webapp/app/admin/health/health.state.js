(function() {
    'use strict';

    angular
        .module('csaApp')
        .config(stateConfig);

    stateConfig.$inject = ['$stateProvider'];

    function stateConfig($stateProvider) {
        $stateProvider.state('csa-health', {
            parent: 'admin',
            url: '/health',
            data: {
                authorities: ['ROLE_ADMIN'],
                pageTitle: 'health.title'
            },
            views: {
                'content@': {
                    templateUrl: 'app/admin/health/health.html',
                    controller: 'CsaHealthCheckController',
                    controllerAs: 'vm'
                }
            },
            resolve: {
                translatePartialLoader: ['$translate', '$translatePartialLoader', function ($translate, $translatePartialLoader) {
                    $translatePartialLoader.addPart('health');
                    return $translate.refresh();
                }]
            }
        });
    }
})();
