(function() {
    'use strict';

    angular
        .module('csaApp')
        .config(localStorageConfig);

    localStorageConfig.$inject = ['$localStorageProvider'];

    function localStorageConfig($localStorageProvider) {
        $localStorageProvider.setKeyPrefix('csa-');
    }
})();
