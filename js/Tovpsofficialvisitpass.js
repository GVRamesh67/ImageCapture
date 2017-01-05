$('#idAdmin').addClass('display-none');
var divUserAuthenticated;
var divWhereVisit;
var errorMessage;
//From Template Created by GV Ramesh :-)
var ViewModal = function () {
    self = this;
    //Initializing all the KO Variables (The ones that are bound to DOM
    //Elements)
    divUserAuthenticated = ko.observable(false);
    divWhereVisit = ko.observable('P');
    errorMessage = ko.observable('');
};
ko.applyBindings(new ViewModal());
function processSave() {
    var urlstr = "SERVLTTovpsofficialvisitpass?ACTION=1";
    $.ajax({type: "POST", url: urlstr, data: $("#FRM_TOVPS_OFFICIAL_VISIT_PASS").serialize(), async: false, success: function (data) {
        }});
}
