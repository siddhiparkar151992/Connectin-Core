import { Injectable}    from 'angular2/core';

@Injectable()
export class UrlConfigService{
	
	public httpUrl='https://';
	public baseUrl;
	public port = 8080;
	public host ="//connectin-social.herokuapp.com";
	public apiBaseUrl="/connectin/api/";
	public userFeedUrl ="user/feed/";	

	constructor() {

//		this.baseUrl = this.httpUrl +this.host+':'+this.port+this.apiBaseUrl;
		this.baseUrl = this.host+this.apiBaseUrl;

	}

	getUserFeedUrl(){
		return this.baseUrl+this.userFeedUrl;
	}
}