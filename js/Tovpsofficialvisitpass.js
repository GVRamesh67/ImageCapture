//From Template Created by GV Ramesh :-)
function processSave() {
    var urlstr = "SERVLTTovpsofficialvisitpass?ACTION=1";
    $.ajax({type: "POST", url: urlstr, data: $("#FRM_TOVPS_OFFICIAL_VISIT_PASS").serialize(), async: false, success: function (data) {
        }});
}