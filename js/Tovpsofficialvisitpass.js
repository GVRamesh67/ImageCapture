$('#idAdmin').addClass('display-none');
//From Template Created by GV Ramesh :-)
var divUserAuthenticated;
var visitorPhoneNo;
var visitorOTP;
var divWhereVisit;
var errorMessage;

var visitorCredentials = function (visitorPhoneNo_, visitorActualOTP_) {
    this.visitorPhoneNo = visitorPhoneNo_;
    this.visitorActualOTP = visitorActualOTP_;
    this.visitorEnteredOTP = '';
    this.divUserAuthenticated = false;
    this.setEnteredOTP = function (visitorEnteredOTP_) {
        this.visitorEnteredOTP = visitorEnteredOTP_;
    };
    this.authenticate = function () {
        if (this.visitorActualOTP === this.visitorEnteredOTP) {
            this.divUserAuthenticated = true;
        } else {
            this.divUserAuthenticated = false;
        }
        divUserAuthenticated(this.divUserAuthenticated);
    };
};
var koVisitorCredentials;
var ViewModal = function () {
    self = this;
    //Initializing all the KO Variables (The ones that are bound to DOM
    //Elements)
    divUserAuthenticated = ko.observable(false);
    koVisitorCredentials = ko.observable();
    divWhereVisit = ko.observable('P');
    errorMessage = ko.observable('');
    koVisitorCredentials(new visitorCredentials('9989121356', '123'));
};
ko.applyBindings(new ViewModal());
function processSave() {
    var urlstr = "SERVLTTovpsofficialvisitpass?ACTION=1";
    $.ajax({type: "POST", url: urlstr, data: $("#FRM_TOVPS_OFFICIAL_VISIT_PASS").serialize(), async: false, success: function (data) {
        }});
}