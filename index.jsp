<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- From Template Created by GV Ramesh :-) -->
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta name="viewport" content="width=device-width"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="jquery/jquery-3.1.1.min.js"></script>
        <link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <script src="bootstrap/bootstrap.min.js"></script>
        <script src="ko/knockout-3.4.1.js"></script>
    </head>
    <body>
        <div id="bg-div" class="container">
            <div id="main-div">
                <header>
                    <div class="row">
                        <div class="col-md-12 heading"><h1>Gate Pass</h1></div>
                    </div>
                </header>
                <main>
                    <form id = "FRM_TOVPS_OFFICIAL_VISIT_PASS">
                        <div class="row row-box">
                            <h3>User Authentication</h3>
                            <div class="col-md-2 col-sm-6 col-xs-12">
                                <span class="input-label">Phone No:</span>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text"  name="NM_VISITOR_PHONE_NO" id="ID_VISITOR_PHONE_NO">
                            </div>
                            <div class="col-md-2 col-sm-6 col-xs-12">
                                <span class="input-label">OTP:</span>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text"  name="NM_OTP" id="ID_OTP">
                            </div>
                        </div>
                        <div class="row-box" data-bind="visible: divUserAuthenticated">
                            <div class="row">
                                <h3>Where to visit?</h3>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <input type="radio" name="NM_WHERE_VISIT" id="ID_WHERE_VISIT_P" value="P" data-bind="checked: divWhereVisit"><label for="P">Plant</label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <input type="radio" name="NM_WHERE_VISIT" id="ID_WHERE_VISIT_A" value="A" data-bind="checked: divWhereVisit"><label for="A">Admin</label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <input type="radio" name="NM_WHERE_VISIT" id="ID_WHERE_VISIT_B" value="B" data-bind="checked: divWhereVisit"><label for="B">Both</label>
                                </div>
                            </div>
                            <div class="row">
                                <h3>Whom to visit?</h3>
                                <div class="row row-box" data-bind="visible: ((divWhereVisit() === 'P') || (divWhereVisit() === 'B'))">
                                    <h4>Plant</h4>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Emp. No.</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_EMPNO" id="ID_EMPNO" ></div>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Mobile No.</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_EMP_CELL_NO" id="ID_EMP_CELL_NO"></div>
                                    <div class="col-md-12 col-sm-12 col-xs-12"><span class="input-label">Employee Name, Designation, etc. will be dipslayed here</span></div>
                                </div>
                                <div class="row row-box" data-bind="visible: ((divWhereVisit() === 'A') || (divWhereVisit() === 'B'))">
                                    <h4>Administration Building</h4>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Emp. No.</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_EMPNO2" id="ID_EMPNO2" ></div>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Mobile No.</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_EMP_CELL_NO2" id="ID_EMP_CELL_NO2"></div>
                                    <div class="col-md-12 col-sm-12 col-xs-12"><span class="input-label">Employee Name, Designation, etc. will be dipslayed here</span></div>
                                </div>
                            </div>
                            <div class="row">
                                <h3>Visit Location Details</h3>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12"><input type="text"  name="NM_VISIT_LOCATION" id="ID_VISIT_LOCATION"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row-box"  data-bind="visible: divUserAuthenticated">
                            <h3>Visitor Details</h3>
                            <div class="row row-box">
                                <div class="row">
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Name:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_VISITOR_NAME" id="ID_VISITOR_NAME"></div>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Gender:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_VISITOR_GENDER" id="ID_VISITOR_GENDER" ></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Age:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_VISITOR_AGE" id="ID_VISITOR_AGE"></div>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Organisation:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_ORGANISATION" id="ID_ORGANISATION"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Address:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_ADDRESS" id="ID_ADDRESS"></div>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Phone No:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_VISITOR_PHONE_NO" id="ID_VISITOR_PHONE_NO"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Vehicle Type:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_VEHICLE_TYPE" id="ID_VEHICLE_TYPE"></div>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Vehicle No:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_VEHICLE_NO" id="ID_VEHICLE_NO"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">No Of Visitors:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="text"  name="NM_NO_OF_VISITORS" id="ID_NO_OF_VISITORS"></div>
                                    <div class="col-md-2 col-sm-12 col-xs-12"><span class="input-label">Capture Photo:</span></div>
                                    <div class="col-md-4 col-sm-12 col-xs-12"><input type="file" accept="image/*" id="capture" capture="camera"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row-box" data-bind="visible: divUserAuthenticated">
                            <h3>Message</h3>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <span class="input-label" data-bind="text: errorMessage"></span>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div class="row" data-bind="visible: divUserAuthenticated">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <input type=button ID="id_ClearButton" value="Clear" class="float-right spl-button"/>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <input type=button ID="id_SaveButton" value="Save"  class="float-left spl-button" onClick="processSave()" />
                            </div>
                        </div>
                        <div class="display-none">
                            <table>                        
                                <tr><td>Passno: </td><td><input type="text"  name="NM_PASSNO" id="ID_PASSNO"  style="width: 200px;" ></td></tr>

                                <tr><td>Desig Desc: </td><td><input type="text"  name="NM_DESIG_DESC" id="ID_DESIG_DESC"  style="width: 200px;" ></td></tr>
                                <tr><td>Dept Cd: </td><td><input type="text"  name="NM_DEPT_CD" id="ID_DEPT_CD"  style="width: 200px;" ></td></tr>
                                <tr><td>Dept Desc: </td><td><input type="text"  name="NM_DEPT_DESC" id="ID_DEPT_DESC"  style="width: 200px;" ></td></tr>
                                <tr><td>Pass Dt: </td><td><input type="text"  name="NM_PASS_DT" id="ID_PASS_DT"  style="width: 200px;" ></td></tr>
                                <tr><td>Message: </td><td><span id="id_msg"></span></td> </tr>
                            </table>
                        </div>
                    </form>
                </main>
            </div>
        </div>
        <script src="js/Tovpsofficialvisitpass.js"></script>
    </body>
</html>

