<div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row ">
        <div class="col-lg">
        <?php if (validation_errors()) : ?>
            <div class="alert alert-danger" role="alert">
                <?= validation_errors(); ?>
            </div>
        <?php endif; ?>
        <?= 
        $this->session->flashdata('message');
        $getidsub = $_GET['id'];
         ?>
        </div>
    </div>

    <form action="<?= base_url('block/validation?id='.$_GET['id']); ?>" enctype="multipart/form-data" method="post">
    <div class="row"> 

        <div class="col-xl-4">
            <!--File -->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">File Project</div>
                <div class="card-body text-center center">
                    <!-- Profile picture image-->
                    <div class="dropzone">
                        <img class="py-4" src="http://100dayscss.com/codepen/upload.svg" class="upload-icon" />
                    </div>
                    <!-- Profile picture help block-->
                    <div class="small font-italic text-muted mb-4">DOC, XLS, PPT, JPG or PNG no larger than 5 MB</div>
                    <!-- Profile picture upload button-->
                    <label for="apply" class="btn-upload btn btn-primary"><input type="file" name="file" id="apply" accept="image/*,.pdf">Upload new FIle</label>
                </div>
                <div class="card-footer">
                    Hash = <?= $hash ?>
                </div>

            </div>
        </div>        
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">BIM Project</div>
                <div class="card-body">
                        <!-- Form Row-->
                        <input type="hidden" name="getidsub" value="<?= $getidsub?>">
                        <div class="form-group">
                            <label class=" mb-1" for="name">Project Name</label>
                            <input class="form-control" id="name" name="project_name" type="text" placeholder="Enter your project name" value="">
                        </div>
                        <div class="form-group">
                            <label class=" mb-1" for="type">Type</label>
                            <input class="form-control" id="type" name="type" type="text" placeholder="Type project name" value="">

                        </div>
                        <!-- Form Group (Roles)-->
                        <!-- <div class="form-group mb-3">
                            <label class=" mb-1">Role</label>
                            <select class="form-control" name="role" aria-label="Default select example">
                                <option selected="" disabled="">Select </option>
                                <?php foreach($role as $m) : ?>
                                    <option value="<?= $m['id']; ?>"><?= $m['role']; ?></option>
                                <?php endforeach; ?>

                            </select>
                        </div> -->
                        <!-- Submit button-->
                        <button class="btn btn-primary" type="submit">Validate</button>
                </div>
            </div>
        </div>

    </div>
    </form>

  </div>
</div>