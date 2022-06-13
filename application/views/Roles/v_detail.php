<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Career Path - Detail </title>

    <!-- Custom fonts for this template-->
    <link href="<?php echo base_url('assets/vendor/fontawesome-free/css/all.min.css')?>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?php echo base_url('assets/css/sb-admin-2.min.css')?>" rel="stylesheet">

    <!-- Diagram -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/diagram/css/jquery.orgchart.css')?>">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php $this->load->view('Template/v_sidebar') ?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Navbar -->
                <?php $this->load->view('Template/v_navbar.php') ?>

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary"> <b> <?php echo $role->name_roles ?> </b> </h6>
                                    <a href="<?php echo base_url('Role')?>" class="col-sm-2 btn btn-danger form-control"><i class="fa fa-backspace"></i></a>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <label> <b> Requirement Skills : </b> </label>
                                            </div>

                                            <div class="col-sm-10">
                                                <table>
                                                    <?php
                                                        foreach ($lstDetail as $row) 
                                                            {
                                                    ?>
                                                    <tr>
                                                        <td> * <?php echo $row->name_skill ?> </td>
                                                    </tr>

                                                    <?php } ?>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <!-- <label> <b> Goal Roles : </b> </label> -->
                                            </div>

                                            <div class="col-sm-10">
                                                <!-- <table>
                                                    <?php
                                                        foreach ($lstGoal as $row2) 
                                                            {
                                                    ?>
                                                    <tr>
                                                        <td> * <?php echo $row2->goal_roles ?> </td>
                                                    </tr>

                                                    <?php } ?>
                                                </table> -->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <!-- <label> <b> Chart : </b> </label>         -->
                                            </div>

                                            <div class="col-sm-4">
                                                  <!-- <div id="diagram_container"></div> -->

                                                <!-- <ul id="tree-data" style="display:none">
                                                    <li id="root">
                                                        Direktorat Utama
                                                        <ul>
                                                            <li id="node1">
                                                               Direktorat Operasi
                                                            </li>
                                                            <li id="node2">
                                                               Direktorat Investasi
                                                            </li>
                                                            <li id="node3">
                                                               Direktorat Umum
                                                            </li>
                                                            <li id="node4">
                                                               Direktorat Keuangan
                                                            </li>
                                                            <li id="node5">
                                                               Direktorat Informasi
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                                
                                                <div id="tree-view"></div> -->
                                                <!-- <div id="chart_div"></div> -->

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- End Div Card -->
                        </div> <!-- End Div Col -->
                    </div> <!-- End Div Row -->
                </div> <!-- /.container-fluid -->
            </div> <!-- End of Main Content -->

            <!-- Footer -->
            <?php $this->load->view('Template/v_footer') ?>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="<?php echo base_url('assets/vendor/jquery/jquery.min.js')?>"></script>
    <script src="<?php echo base_url('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')?>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?php echo base_url('assets/vendor/jquery-easing/jquery.easing.min.js')?>"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?php echo base_url('assets/js/sb-admin-2.min.js')?>"></script>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


    <script>
        google.charts.load('current', {packages:["orgchart"]});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() 
        {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Name');
            data.addColumn('string', 'Manager');
            data.addColumn('string', 'ToolTip');

            // For each orgchart box, provide the name, manager, and tooltip to show.
            data.addRows([
              [{'v':'Mike', 'f':'Mike<div style="color:red; font-style:italic">President</div>'},
               '', 'The President'],
              [{'v':'Jim', 'f':'Jim<div style="color:red; font-style:italic">Vice President</div>'},
               'Mike', 'VP'],
              ['Alice', 'Mike', ''],
              ['Bob', 'Jim', 'Bob Sponge'],
              ['Carol', 'Bob', ''],
            ]);

            // Create the chart.
            var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
            // Draw the chart, setting the allowHtml option to true for the tooltips.
            chart.draw(data, {'allowHtml':true});
          }

    </script>       

</body>

</html>