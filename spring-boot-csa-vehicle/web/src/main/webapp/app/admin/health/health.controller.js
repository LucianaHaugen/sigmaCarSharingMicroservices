(function() {
    'use strict';

    angular
        .module('csaApp')
        .controller('CsaHealthCheckController', CsaHealthCheckController);

    CsaHealthCheckController.$inject = ['CsaHealthService', '$uibModal'];

    function CsaHealthCheckController (CsaHealthService, $uibModal) {
        var vm = this;

        vm.updatingHealth = true;
        vm.getLabelClass = getLabelClass;
        vm.refresh = refresh;
        vm.showHealth = showHealth;
        vm.baseName = JhiHealthService.getBaseName;
        vm.subSystemName = CsaHealthService.getSubSystemName;

        vm.refresh();

        function getLabelClass (statusState) {
            if (statusState === 'UP') {
                return 'label-success';
            } else {
                return 'label-danger';
            }
        }

        function refresh () {
            vm.updatingHealth = true;
            CsaHealthService.checkHealth().then(function (response) {
                vm.healthData = CsaHealthService.transformHealthData(response);
                vm.updatingHealth = false;
            }, function (response) {
                vm.healthData =  CsaHealthService.transformHealthData(response.data);
                vm.updatingHealth = false;
            });
        }

        function showHealth (health) {
            $uibModal.open({
                templateUrl: 'app/admin/health/health.modal.html',
                controller: 'HealthModalController',
                controllerAs: 'vm',
                size: 'lg',
                resolve: {
                    currentHealth: function() {
                        return health;
                    },
                    baseName: function() {
                        return vm.baseName;
                    },
                    subSystemName: function() {
                        return vm.subSystemName;
                    }

                }
            });
        }

    }
})();
