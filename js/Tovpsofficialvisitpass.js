$('#idAdmin').addClass('display-none');
var divWhereVisit;
var errorMessage;
//From Template Created by GV Ramesh :-)
var ViewModal = function () {
    self = this;
    //Initializing all the KO Variables (The ones that are bound to DOM
    //Elements)    
    divWhereVisit = ko.observable('P');
    errorMessage = ko.observable('');
    self.plantDivVisible = function () {
        return (checkDivVisible('P'));
    };
    self.adminDivVisible = function () {
        return (checkDivVisible('A'));
    };
};
ko.applyBindings(new ViewModal());
function processSave() {
    var urlstr = "SERVLTTovpsofficialvisitpass?ACTION=1";
    $.ajax({type: "POST", url: urlstr, data: $("#FRM_TOVPS_OFFICIAL_VISIT_PASS").serialize(), async: false, success: function (data) {
        }});
}

function checkDivVisible(whichDiv) {
    var result = false;
    var whereVisit = divWhereVisit();
    if (whichDiv === 'P') {
        if ((whereVisit === 'P') || (whereVisit === 'B')) {
            result = true;
        } else {
            result = false;
        }
    } else {
        if ((whereVisit === 'A') || (whereVisit === 'B')) {
            result = true;
        } else {
            result = false;
        }
    }
    return result;
}
