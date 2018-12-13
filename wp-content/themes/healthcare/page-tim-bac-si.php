<?php get_header()?>
<div ng-init="loadData()">
    <div class="content container">
        <div class="row">
            <div class="content-bg">
                <div class="col-md-12">
                    <h1>Tìm bác sĩ</h1>
                    <div class="searchcontrols row col-lg-12">
                        <div class="col-md-3">
                            <input class="searchinputm ng-pristine ng-untouched ng-valid ng-empty" type="text" title="Nhập tên bác sỹ" placeholder="Nhập tên bác sỹ" ng-model="searchDoctor" aria-invalid="false">
                        </div>
                        <div class="col-md-4" style="padding-left:0px;">
                            <div class="dropdown dropdown-lg col-md-10" style="padding:0px;">
                                <select class="searchinputm ng-pristine ng-untouched ng-valid ng-empty" ng-model="chooseDepartment" ng-init="chooseDepartment = item.Id" ng-options="item.Id as item.Name for item in departments " style="border-radius: 10px;" aria-invalid="false"><option value="" id="defaultDepartment" selected="selected">Chọn Chuyên Khoa</option><option label="Bệnh Phổi" value="number:11">Bệnh Phổi</option></select>
                            </div>
                            <div class="col-md-2" style="padding-left:0px;">
                                <button type="submit" class="fa fa-search searchbuttonm" ng-click="searchData()"></button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="doctors-grid col-md-12">
                    <!---->
                </div>
            </div>
        </div>
    </div>

</div>
<style>
    .searchbuttonm {
        background: none;
        border: 0;
    }
    .searchinputm {
        border-radius: 12px;
        background: #d8e8d8;
        border: none;
        padding-left: 10px;
        outline: none;
        height: 30px;
        width: 100%;
        margin-bottom: 30px;
    }
    h1{
        text-align:center;
        color:#2698d6;
        margin-bottom:50px;
        border-bottom: 1px solid black;
        padding-bottom:15px;
    }
    table tr th{
        text-align: center;
        background-color: #0060af;
        color: white;
    }
</style>
<?php get_footer();?>
