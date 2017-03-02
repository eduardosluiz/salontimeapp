'use strict';

/**
 * @ngdoc service
 * @name salontimeApp.estabelecimentos
 * @description
 * # estabelecimentos
 * Service in the salontimeApp.
 */
angular.module('salontimeApp')
  .service('Servicos', function ($http, $routeParams) {
    var service = this;
    const API_URL = 'http://localhost:4002/api/v1';

    this.getEstabelecimentos = function(idServico, callback) {
      $http.get(API_URL + '/servicos/' + idServico + '/estabelecimentos')
      .then(function(response) {
        callback(null, response.data);
      }, function(error) {
        callback(error, null);
      });
    };
  });
