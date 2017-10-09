(function() {
    'use strict';

    angular
        .module('csaApp')
        .controller('CsaConfigurationController', JhiConfigurationController);

    JhiConfigurationController.$inject = ['$filter','CsaConfigurationService'];

    function CsaConfigurationController (filter,CsaConfigurationService) {
        var vm = this;

        vm.allConfiguration = null;
        vm.configuration = null;

        CsaConfigurationService.get().then(function(configuration) {
            vm.configuration = configuration;
        });
        CsaConfigurationService.getEnv().then(function (configuration) {
            vm.allConfiguration = configuration;
        });
    }
})();
