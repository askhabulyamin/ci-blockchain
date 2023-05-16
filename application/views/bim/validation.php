<div class="container-fluid">
    <div class="row"> 
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">File</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <img src="http://localhost/ci-blockchain/assets/img/profile/default.jpg" class="card-img">
                </div>
                <div class="card-footer text-center">
                    <p>Hast = 235rwfssafb3535vq325vecqc3535cwrc</p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Meta Data</h6>
                </div>

            <!-- Card Body -->
                <div class="card-body">
				
                    <?= $this->session->flashdata('message'); ?>
                    <form action="http://localhost/ci-blockchain/block/save" enctype="multipart/form-data" method="post" accept-charset="utf-8">

                    <div class="form-group row">  
                        <label for="email" class="col-sm-2 col-form-label">Type</label>
                        <div class="col-sm-10"> 
                            <input name="email" type="text" class="form-control" id="email" value="ahmad.askhabulyamin@gmail.com" readonly="">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="username" class="col-sm-2 col-form-label">Full name</label>
                        <div class="col-sm-10">
                            <input autocomplete="off" autofocus="" name="username" type="text" class="form-control" id="username" value="yamin2w">
                            <!-- error message -->
                                                </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-2">Picture</div>
                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img src="http://localhost/ci-blockchain/assets/img/profile/default.jpg" class="img-thumbnail">
                                </div>
                                <div class="col-sm-9">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" name="image" id="image">
                                        <label class="custom-file-label" for="image">Choose file</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row justify-content-end">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="card-footer text-center">
                    <a target="_blank" class="btn btn-primary  btn-block" rel="nofollow" href="https://undraw.co/">Open →</a>
                </div>
            </div>
        </div>
    </div>
  </div>
</div>