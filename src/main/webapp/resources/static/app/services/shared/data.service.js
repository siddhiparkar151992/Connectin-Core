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
require("rxjs/add/operator/toPromise");
var restapi_service_1 = require("./restapi.service");
var DataService = (function () {
    function DataService(http, restApi, conf) {
        this.http = http;
        this.conf = conf;
        this.restApi = restApi;
        this.config = conf;
    }
    DataService.prototype.getLoanCertificate = function (params) {
        return this.restApi.getLoanCertificate(params);
    };
    DataService.prototype.getLoanStatement = function (params) {
        return this.restApi.getLoanStatement(params);
    };
    DataService.prototype.getFutureDetails = function (params) {
        return this.restApi.getFutureDetails(params);
    };
    DataService.prototype.linkAdharCard = function (params) {
        return this.restApi.linkAdharCard(params);
    };
    DataService.prototype.listActivity = function (params) {
        return this.restApi.listActivity(params);
    };
    DataService.prototype.getActivityTypes = function () {
        return this.restApi.getActivityTypes();
    };
    DataService.prototype.clearingCheque = function (params) {
        return this.restApi.clearingCheque(params);
    };
    DataService.prototype.cardlessCashStatementRequest = function (params) {
        return this.restApi.cardlessCashStatementRequest(params);
    };
    DataService.prototype.cardlessCashCancelRequest = function (params) {
        return this.restApi.cardlessCashCancelRequest(params);
    };
    DataService.prototype.cardlessCashRequest = function (params) {
        return this.restApi.cardlessCashRequest(params);
    };
    DataService.prototype.get32DigitAccNum = function (params) {
        return this.restApi.get32DigitAccNum(params);
    };
    DataService.prototype.otpSuccessMesage = function (params) {
        return this.restApi.generateOTP(params);
    };
    DataService.prototype.chequeBookRequest = function (params) {
        return this.restApi.chequeBookRequest(params);
    };
    DataService.prototype.stopChequePayment = function (params) {
        return this.restApi.stopChequePayment(params);
    };
    DataService.prototype.chequeStatusRequest = function (params) {
        return this.restApi.chequeStatusRequest(params);
    };
    DataService.prototype.chequePositivePay = function (params) {
        return this.restApi.chequePositivePay(params);
    };
    DataService.prototype.transact = function (params) {
        return this.restApi.transact(params);
    };
    DataService.prototype.generatePDF = function (params) {
        return this.restApi.generatePDF(params);
    };
    DataService.prototype.deletePDF = function (params) {
        this.restApi.deletePDF(params);
    };
    DataService.prototype.generateOTP = function (params) {
        return this.restApi.generateOTP(params);
    };
    DataService.prototype.validateOTP = function (params) {
        return this.restApi.validateOTP(params);
    };
    DataService.prototype.getBankDetails = function (params) {
        return this.restApi.getBankDetails(params);
    };
    DataService.prototype.getCustDetails = function (params) {
        return this.restApi.getCustDetails(params);
    };
    DataService.prototype.updateSession = function () {
        return this.restApi.updateSession();
    };
    DataService.prototype.forgotPassword = function (userID, cr) {
        return this.restApi.forgotPassword(userID, cr);
    };
    DataService.prototype.changePassword = function (userId, oldPwd, newPwd, pwdType) {
        return this.restApi.changePassword(userId, oldPwd, newPwd, pwdType);
    };
    DataService.prototype.getUserData = function () {
        return this.restApi.getUserData();
    };
    DataService.prototype.getAccountList = function (params) {
        return this.restApi.getAccountList(params);
    };
    DataService.prototype.getAcctSummary = function (params) {
        return this.restApi.getAcctSummary(params);
    };
    DataService.prototype.getAcctTransaction = function (params) {
        return this.restApi.getAcctTransaction(params);
    };
    DataService.prototype.getFundTransferList = function (params) {
        return this.restApi.getFundTransferList(params);
    };
    DataService.prototype.getLoanDtls = function (params) {
        return this.restApi.getLoanDtls(params);
    };
    DataService.prototype.authFundTrans = function (params) {
        return this.restApi.authFundTrans(params);
    };
    DataService.prototype.authOTPFundTransfer = function (params) {
        return this.restApi.authOTPFundTransfer(params);
    };
    DataService.prototype.linkAccount = function (params) {
        return this.restApi.linkAccount(params);
    };
    DataService.prototype.authOTPlinkAcct = function (params) {
        return this.restApi.authOTPlinkAcct(params);
    };
    DataService.prototype.impsPersonToPerson = function (params) {
        return this.restApi.impsPersonToPerson(params);
    };
    DataService.prototype.handleError = function (error) {
        console.error('An error occurred', error);
        return Promise.reject(error.message || error);
    };
    DataService.prototype.authTransPwd = function (params) {
        return this.restApi.authFundTrans(params);
    };
    DataService.prototype.getChallengeRes = function () {
        return this.restApi.getChallengeRes();
    };
    DataService.prototype.addPayeeDetails = function (params) {
        return this.restApi.addPayeeDetails(params);
    };
    DataService.prototype.updatePayee = function (params) {
        return this.restApi.updatePayee(params);
    };
    DataService.prototype.getIbFundLimits = function (params) {
        return this.restApi.getIbFundLimits(params);
    };
    DataService.prototype.updateEmailId = function (params) {
        return this.restApi.updateEmailId(params);
    };
    DataService.prototype.fundTransToOwnAcc = function (params) {
        return this.restApi.fundTransToOwnAcc(params);
    };
    DataService.prototype.fundTransToSameBank = function (params) {
        return this.restApi.fundTransToSameBank(params);
    };
    DataService.prototype.fundTransToOtherBank = function (params) {
        return this.restApi.fundTransToOtherBank(params);
    };
    return DataService;
}());
DataService = __decorate([
    core_1.Injectable(),
    __param(1, core_1.Inject(restapi_service_1.RestAPI))
], DataService);
exports.DataService = DataService;
