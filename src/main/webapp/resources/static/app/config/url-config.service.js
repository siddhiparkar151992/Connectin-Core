"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("angular2/core");
var UrlConfigService = (function () {
    function UrlConfigService() {
        this.httpUrl = 'http://';
        this.port = 9091;
        this.host = "localhost";
        this.apiBaseUrl = "/connectin/api/";
        this.userFeedUrl = "user/feed/";
        this.baseUrl = this.httpUrl + this.host + ':' + this.port + this.apiBaseUrl;
    }
    UrlConfigService.prototype.getUserFeedUrl = function () {
        return this.baseUrl + this.userFeedUrl;
    };
    return UrlConfigService;
}());
UrlConfigService = __decorate([
    core_1.Injectable()
], UrlConfigService);
exports.UrlConfigService = UrlConfigService;
