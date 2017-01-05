$('#idAdmin').addClass('display-none');
//From Template Created by GV Ramesh :-)
var divUserAuthenticated;
var visitorPhoneNo;
var visitorOTP;
var divWhereVisit;
var message;
var messageVisible;
var firstCall = true;

var visitorCredentials = function (visitorPhoneNo_, visitorActualOTP_) {
    this.visitorPhoneNo = visitorPhoneNo_;
    this.visitorActualOTP = visitorActualOTP_;
    this.visitorEnteredOTP = '';
    this.divUserAuthenticated = false;
    this.authenticate = function () {
        if (this.visitorActualOTP === this.visitorEnteredOTP) {
            this.divUserAuthenticated = true;
        } else {
            this.divUserAuthenticated = false;
        }
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
    message = ko.observable('Authenticate by Clicking the button after entering your Phone No. & OTP');
    messageVisible = ko.observable(true);
    koVisitorCredentials(new visitorCredentials('9989121356', '123'));
    self.processAuthenticate = function () {
        koVisitorCredentials().authenticate();
        if (koVisitorCredentials().divUserAuthenticated) {
            message('User authenticated! Now, choose the Visit Location.');
            messageVisible(true);
        } else {
            message('Wrong Authentication!');
            messageVisible(true);
        }
        divUserAuthenticated(koVisitorCredentials().divUserAuthenticated);
        if (firstCall) {
            message('Authenticate by Clicking the button after entering your Phone No. & OTP');
            messageVisible(true);
        }
        firstCall = false;
    };
};
ko.applyBindings(new ViewModal());
function processSave() {
    var urlstr = "SERVLTTovpsofficialvisitpass?ACTION=1";
    $.ajax({type: "POST", url: urlstr, data: $("#FRM_TOVPS_OFFICIAL_VISIT_PASS").serialize(), async: false, success: function (data) {
        }});
}
