<div class="pcoded-content">
    <div class="pcoded-inner-content">
        <!-- Main-body start -->
        <div class="main-body">
            <div class="page-wrapper">
                <!-- Page-header start -->
                <div class="page-header">
                    <div class="row align-items-end">
                        <div class="col-lg-7">
                            <div class="page-header-title">
                                <div class="d-inline">
                                    <h4>Bethany Doctors</h4>
                                    <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="page-header-breadcrumb">
                                <ul class="breadcrumb-title">
                                    <li class="breadcrumb-item">
                                        <a href="index-1.htm"> <i class="feather icon-home"></i> </a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">BHI-CMS Admin</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#!">Bethany Doctor</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Page-header end -->

                <!-- Page-body start -->
                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <!-- Scroll - Vertical, Dynamic Height table start -->
                            <div class="card">
                                <!-- <div class="card-header">
                                    <h5>Scroll - Vertical, Dynamic Height</h5>
                                    <span>This example shows a vertically scrolling DataTable that makes use of the CSS3 (vh) unit in order to dynamically resize the viewport based on the browser window height. The (vh) unit is effectively a percentage of the browser window height. So the (50vh) used in this example is 50% of the window height. The viewport size will update dynamically as the window is resized.</span>
                                </div> -->
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive">
                                        <!-- <div class="doc-toolbar"></div> -->
                                        <table id="doctor-list-table" class="table table-striped table-condensed table-bordered nowrap" role="grid" describedby="compact_info">
                                            <thead>
                                                <tr>
                                                    <th>Lastname</th>
                                                    <th>Firstname</th>
                                                    <th>Middlename</th>
                                                    <th>Specialty</th>
                                                    <th>Clinic Assigned</th>
                                                    <th>Area Assigned</th>
                                                    <th>Added By</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                foreach ($doctor as $doc) { ?>
                                                    <tr>
                                                        <td><?php echo $doc->docLname; ?></td>
                                                        <td><?php echo $doc->docFname; ?></td>
                                                        <td><?php echo $doc->docMname; ?></td>
                                                        <td><?php echo $doc->specialtyName; ?></td>
                                                        <td><?php echo $doc->clinicName; ?></td>
                                                        <td><?php echo $doc->areaName; ?></td>
                                                        <td><?php echo $doc->adminID; ?></td>
                                                        <td>
                                                            <button class="btn btn-sm btn-primary">
                                                                View
                                                            </button>
                                                            <button class="btn btn-sm btn-warning">
                                                                Edit
                                                            </button>
                                                            <button class="btn btn-sm btn-danger">
                                                                Delete
                                                            </button>
                                                        </td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Scroll - Vertical, Dynamic Height table end -->
                        </div>
                    </div>
                </div>
                <!-- Page-body end -->
            </div>
        </div>
        <!-- Main-body end -->
        <div id="styleSelector">

        </div>
    </div>
</div>
</div>