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
                                                <label> <b> Chart : </b> </label>        
                                            </div>

                                            <div class="col-sm-10">
                                                
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

    <!-- Page level plugins -->
    <script src="<?php echo base_url('assets/vendor/chart.js/Chart.min.js')?>"></script>

    <!-- Page level custom scripts -->
    <script src="<?php echo base_url('assets/js/demo/chart-area-demo.js')?>"></script>
    <script src="<?php echo base_url('assets/js/demo/chart-pie-demo.js')?>"></script>

</body>

</html>