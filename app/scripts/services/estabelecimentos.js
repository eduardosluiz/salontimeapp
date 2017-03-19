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
    const API_URL = 'http://localhost:4002/api/v1';

    this.getAgendamentos = function(callback) {
      //TODO Adicionar variavel de logado
      $http.get(API_URL + '/estabelecimentos/' + 1 + '/agendamentos')
      .then(function(response) {
        callback(null, response.data);
      }, function(error) {
        callback(error, null);
      });
    };

    this.getProfissionais = function(callback) {
      //TODO Adicionar variavel de logado
      $http.get(API_URL + '/estabelecimentos/' + 1 + '/profissionais')
      .then(function(response) {
        callback(null, response.data);
      }, function(error) {
        callback(error, null);
      });
    };

    this.getProfissionaisByServico = function(idEstabelecimento, idServico, callback) {
      $http.get(API_URL + '/estabelecimentos/' + idEstabelecimento + '/servicos/' + idServico + '/profissionais')
      .then(function(response) {
        callback(null, response.data);
      }, function(error) {
        callback(error, null);
      });
    };

    this.getPreco = function(idEstabelecimento, idServico, callback) {
      $http.get(API_URL + '/estabelecimentos/' + idEstabelecimento + '/servicos/' + idServico + '/precos')
      .then(function(response) {
        callback(null, response.data[0]);
      }, function(error){
        callback(error, null);
      });
    };

    this.getServicos = function(callback) {
      //TODO Adicionar variavel de logado
      $http.get(API_URL + '/estabelecimentos/' + 1 + '/servicos')
      .then(function(response) {
        callback(null, response.data);
      }, function(error) {
        callback(error, null);
      });
    }
  });
