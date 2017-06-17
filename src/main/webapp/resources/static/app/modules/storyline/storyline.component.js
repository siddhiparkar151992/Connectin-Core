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
var story_component_1 = require("./components/story/story.component");
var news_component_1 = require("../news/news.component");
var dropdown_component_1 = require("../../modules/components/dropdown/dropdown.component");
var user_feeds_service_1 = require("../../common/core/storyline/feed/user-feed/user-feeds.service");
var url_config_service_1 = require("../../config/url-config.service");
var StorylineComponent = (function () {
    function StorylineComponent(userFeedServ) {
        this.userFeedServ = userFeedServ;
        this.userFeedService = userFeedServ;
    }
    StorylineComponent.prototype.ngOnInit = function () {
        var that = this;
        this.userFeedService.getUserFeeds(1).subscribe(function (response) {
            response = response.json();
            that.userFeed = response.data;
        });
    };
    return StorylineComponent;
}());
StorylineComponent = __decorate([
    core_1.Component({
        selector: 'storyline',
        templateUrl: '/resources/static/app/modules/storyline/storyline.component.html',
        directives: [story_component_1.StoryComponent, news_component_1.NewsComponent, dropdown_component_1.DropdownComponent],
        providers: [user_feeds_service_1.UserFeedService, url_config_service_1.UrlConfigService],
        styleUrls: ['resources/styles/css/storyline/storyline.css']
    }),
    __param(0, core_1.Inject(user_feeds_service_1.UserFeedService))
], StorylineComponent);
exports.StorylineComponent = StorylineComponent;
