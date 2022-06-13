<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Career Path - Upload </title>

    <!-- Custom fonts for this template-->
    <link href="<?php echo base_url('assets/vendor/fontawesome-free/css/all.min.css')?>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?php echo base_url('assets/css/sb-admin-2.min.css')?>" rel="stylesheet">

    <!-- Alert -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.28.1/sweetalert2.css">

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
                                    <h6 class="m-0 font-weight-bold text-primary"> Upload Role Skills</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">

                                    <!-- Alert -->
                                    <div class="flash-data-Success" data-flashdata="<?php echo $this->session->flashdata('success')?>">
                                        <?php if ($this->session->flashdata('success')) : ?>

                                        <?php endif; ?>
                                    </div>

                                    <div class="flash-data-Error" data-flashdata="<?php echo $this->session->flashdata('error')?>">
                                        <?php if ($this->session->flashdata('error')) : ?>

                                        <?php endif; ?>
                                    </div>


                                    <form method="POST" action="<?php echo base_url('Upload/import_excel')?>" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <label> Upload </label>        
                                                </div>

                                                <div class="col-sm-10">
                                                    <input type="file" name="Upload" id="upload" class="form-control" accept="xlsx">
                                                    <!-- <i style="color:red"> *only csv</i> -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Upload </button>
                                            </div>
                                        </div>
                                    </form>
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

    <!-- Alert -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.28.1/sweetalert2.all.min.js"></script>

    <script type="text/javascript">

    const flashDataSuccess = $('.flash-data-Success').data('flashdata');

    if (flashDataSuccess)
        {
           Swal({
              title : 'Success',
              text  : 'Import file excel berhasil ' + flashDataSuccess,
              type  : 'success',
           });
        }

    const flashDataError = $('.flash-data-Error').data('flashdata');

    if (flashDataError)
        {
           Swal({
              title : 'Error',
              text  : 'Import file ' + flashDataError,
              type  : 'error',
           });
        }

    </script>

</body>

</html>