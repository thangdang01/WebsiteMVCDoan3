﻿


var app = angular.module('AdminSPApp', ['angularUtils.directives.dirPagination']);


app.service('CrudService', function ($http) {
    var urlGet = '';
    this.post = function (apiRoute, Model) {
        var request = $http({
            method: "post",
            url: apiRoute,
            data: Model
        });
        return request;
    }
    this.put = function (apiRoute, Model) {
        var request = $http({
            method: "put",
            url: apiRoute,
            data: Model
        });
        return request;
    }
    this.delete = function (apiRoute) {
        var request = $http({
            method: "delete",
            url: apiRoute
        });
        return request;
    }
    this.getAll = function (apiRoute) {
        urlGet = apiRoute;
        return $http.get(urlGet);
    }
    this.getbyID = function (apiRoute, Loaisp_id)
    {
        urlGet = apiRoute + '/' + Loaisp_id;
        return $http.get(urlGet);
    }
});