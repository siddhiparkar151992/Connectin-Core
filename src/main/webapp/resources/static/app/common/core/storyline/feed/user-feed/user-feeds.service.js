"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
var core_1 = require("angular2/core");
var http_1 = require("angular2/http");
var url_config_service_1 = require("../../../../../config/url-config.service");
var UserFeedService = (function () {
    function UserFeedService(http, urlConfig) {
        this.http = http;
        this.urlConfig = urlConfig;
        this.urlConfigService = urlConfig;
        this.headers = new http_1.Headers();
        this.headers.append('Content-Type', 'application/json');
        this.headers = new http_1.Headers({ 'Content-Type': 'application/json' });
        this.options = new http_1.RequestOptions({ headers: this.headers });
    }
    UserFeedService.prototype.extractData = function (res) {
        var body = res.json();
        return body.data || {};
    };
    //   private handleErrorPromise (error: Response | any) {
    // console.error(error.message || error);
    // return Promise.reject(error.message || error);
    //   }
    UserFeedService.prototype.getUserFeeds = function (userId) {
        return this.http.get(this.urlConfig.getUserFeedUrl() + '?userId=' + userId, '', { headers: this.headers });
        // .then(this.extractData)
        // .catch(this.handleErrorPromise);
    };
    return UserFeedService;
}());
UserFeedService = __decorate([
    core_1.Injectable(),
    __param(1, core_1.Inject(url_config_service_1.UrlConfigService))
], UserFeedService);
exports.UserFeedService = UserFeedService;
