'use strict';

/**
 * @ngdoc service
 * @name salontimeApp.estabelecimentos
 * @description
 * # estabelecimentos
 * Service in the salontimeApp.
 */
angular.module('salontimeApp')
  .service('Estabelecimentos', function ($http, $routeParams) {
    var service = this;
    const API_URL = 'https://salontime.herokuapp.com/api/v1';

    this.getProfissionais = function(idEstabelecimento, idServico, callback) {
      $http.get(API_URL + '/estabelecimentos/' + idEstabelecimento + '/servicos/' + idServico + '/profissionais')
      .then(function(response) {
        callback(null, response.data);
      }, function(error) {
        callback(error, null);
      });
    };
  });
