<?= $this->extend('layout') ?>
<?= $this->section('content') ?>



<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Thêm mới sản phẩm</h1>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <?php if(isset($validation)) { ?>
        <div class="alert alert-danger">
            <ul>
                <?php foreach ($validation as $key => $obj) {
                    echo $obj."</br>";
                }?>
            </ul>
        </div>
     <?php } ?>
    <form action="" method="POST" enctype="multipart/form-data">
        <div class="card-body">
            <div class="row">     
                <div class="col-sm-2">
                    <label>Chọn trạng thái</label>
                </div>                          
                <div class="col-sm-10">
                    <div class="input-group input-group-sm mb-3">
                        <select name="status">
                            <option value="1">Active</option>
                            <option value="0">Inactive</option>
                        </select>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2">
                    <label>Nhập tên</label>
                </div>
                <div class="col-sm-10">
                    <div class="input-group input-group-sm mb-3">
                        <input type="text" name="name" value="" class="form-control">
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2">
                    <label>Nhập giá</label>
                </div>
                <div class="col-sm-10">
                    <div class="input-group input-group-sm mb-3">
                        <input type="text" name="price" class="form-control">
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2">
                    <label>Nhập detail</label>
                </div>
                <div class="col-sm-10">
                    <div class="input-group input-group-sm mb-3">
                        <textarea name="detail" class="form-control" rows="5" id="comment"></textarea>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2">
                    <label>Nhập description</label>
                </div>
                <div class="col-sm-10">
                    <div class="input-group input-group-sm mb-3">
                        <textarea name="description" class="form-control" rows="5" id="comment"></textarea>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2">
                    <label>Chọn hình</label>
                </div>
                <div class="col-sm-10">
                    <div class="">
                        <input type="file" name="image">
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <button type="submit" name="submit" class="btn btn-primary">Lưu</button>
                    <a href="<?=base_url()?>/public" class="btn btn-primary">Hủy bỏ</a>
                </div>
            </div>
        </form>
    </div>


<?= $this->endSection() ?>