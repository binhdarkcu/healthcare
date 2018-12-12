<?php get_header()?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px">

            <form id="yw0" ng-submit="setPage(1)" class="ng-pristine ng-valid ng-valid-maxlength">
                <div class="input-group" style="margin:auto;">
                    <input class="form-control ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength" type="text" maxlength="100" placeholder="Tìm kiếm bài viết" ng-model="searchText" style="width:300px; border-radius: 10px;" aria-invalid="false">

                    <div class="input-group-btn">
                        <div class="btn-group" role="group">

                            <div>
                                <!--<button name="submit" class="btn btn-primary pull-right" style="width: 34px;height:34px; background-color: rgba(255,255,255,.1);border-color: #cccccc;border-radius: 10px;" type="image" <img style=" width="30px"; height="30px;"" src="../../../assets/css/images/tim-kiem.png" ></button>"-->
                                <button name="submit" class="btn btn-primary pull-right" style="width: 34px;height:34px; background-color: rgba(15, 9, 206, 0.13);border-color: #cccccc;border-radius: 10px; padding: 0px 10px 0px; margin-right: 770px">
                                    <i class="fa fa-search" style="font-size: 15px;color:black;"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="conten col-md-8 col-sm-12 col-xs-12" style="margin-top:30px">

                <!----><div class="row wow fadeInDown" ng-repeat="item in Posts track by item.Id" style="">
                    <div class="col-md-4 catItemImageBlock">
                        <div class="news">
                            <div class="article">
                                <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/thu-vien-hinh-anh/khu-dieu-tri-trong-ngay/2387">
                                    <div class="thumb" style="background-image: url(http://cms.bvpnt.org.vn//Assets/images/Resources/dieu-tri-trong-ngay-1.jpg)"></div>
                                </a><!---->
                                <!---->
                                <div class="catItemDateCreated">
                                    <span class="day">Ngày 23</span>
                                    <span class="month">Tháng 11</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 post-list-right">
                        <h3>
                            <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/thu-vien-hinh-anh/khu-dieu-tri-trong-ngay/2387">Khu điều trị trong ngày</a><!---->
                            <!---->
                        </h3>
                        <p class="block-ellipsis-home-news-3line" style="height: 100%; -webkit-line-clamp: 5;"></p>
                    </div>
                    <div class="clearfix"></div>
                    <hr>
                </div><!----><div class="row wow fadeInDown" ng-repeat="item in Posts track by item.Id">
                    <div class="col-md-4 catItemImageBlock">
                        <div class="news">
                            <div class="article">
                                <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/thu-vien-hinh-anh/khoa-phu-c-ho-i-chu-c-nang-va-khu-ha-nh-chi-nh-khoa-ho-i-su-c-ca-p-cu-u/2307">
                                    <div class="thumb" style="background-image: url(http://cms.bvpnt.org.vn//Assets/images/Posts/20181029/phcn.jpeg)"></div>
                                </a><!---->
                                <!---->
                                <div class="catItemDateCreated">
                                    <span class="day">Ngày 29</span>
                                    <span class="month">Tháng 10</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 post-list-right">
                        <h3>
                            <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/thu-vien-hinh-anh/khoa-phu-c-ho-i-chu-c-nang-va-khu-ha-nh-chi-nh-khoa-ho-i-su-c-ca-p-cu-u/2307">Khoa Phục hồi chức năng và khu hành chính khoa Hồi sức cấp cứu</a><!---->
                            <!---->
                        </h3>
                        <p class="block-ellipsis-home-news-3line" style="height: 100%; -webkit-line-clamp: 5;"></p>
                    </div>
                    <div class="clearfix"></div>
                    <hr>
                </div><!----><div class="row wow fadeInDown" ng-repeat="item in Posts track by item.Id">
                    <div class="col-md-4 catItemImageBlock">
                        <div class="news">
                            <div class="article">
                                <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/khoa-ho-tro-lam-sang/khoa-dinh-duo-ng-tie-t-che-/2274">
                                    <div class="thumb" style="background-image: url(http://cms.bvpnt.org.vn//Assets/images/Resources/dinhduong1.jpg)"></div>
                                </a><!---->
                                <!---->
                                <div class="catItemDateCreated">
                                    <span class="day">Ngày 10</span>
                                    <span class="month">Tháng 10</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 post-list-right">
                        <h3>
                            <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/khoa-ho-tro-lam-sang/khoa-dinh-duo-ng-tie-t-che-/2274">Khoa Dinh Dưỡng - Tiết chế</a><!---->
                            <!---->
                        </h3>
                        <p class="block-ellipsis-home-news-3line" style="height: 100%; -webkit-line-clamp: 5;"></p>
                    </div>
                    <div class="clearfix"></div>
                    <hr>
                </div><!----><div class="row wow fadeInDown" ng-repeat="item in Posts track by item.Id">
                    <div class="col-md-4 catItemImageBlock">
                        <div class="news">
                            <div class="article">
                                <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/phong-chuc-nang/phong-tai-chinh-ke-toan/2220">
                                    <div class="thumb" style="background-image: url(http://cms.bvpnt.org.vn//Assets/images/Resources/no-image.jpg)"></div>
                                </a><!---->
                                <!---->
                                <div class="catItemDateCreated">
                                    <span class="day">Ngày 11</span>
                                    <span class="month">Tháng 06</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 post-list-right">
                        <h3>
                            <!----><a ng-if="item.ReferenceUrl == null || item.ReferenceUrl.length == 0" href="http://bvpnt.org.vn/phong-chuc-nang/phong-tai-chinh-ke-toan/2220">Phòng Tài chính Kế toán</a><!---->
                            <!---->
                        </h3>
                        <p class="block-ellipsis-home-news-3line" style="height: 100%; -webkit-line-clamp: 5;"></p>
                    </div>
                    <div class="clearfix"></div>
                    <hr>
                </div><!---->
                <div class="row">
                    <div class="pages">
                        <div class="modulepager">
                            <div class="pages">
                                <div class="modulepager">
                                    <!--<a class="ModulePager FirstPage" ng-class="{notActive : pager.currentPage === 1}" ng-click="setPage(1)" title="Trang đầu tiên">«</a>
                                    <a class="ModulePager BackPage" ng-class="{notActive : pager.currentPage === 1}" ng-click="setPage(pager.currentPage - 1)" title="Trang trước">‹</a>-->
                                    <!----><a class="ModulePager SelectedPage" ng-class="{SelectedPage : activeValue === page}" ng-repeat="page in pager.pages" ng-click="setPage(page)" title="Đến trang 1" style="">1</a><!----><a class="ModulePager" ng-class="{SelectedPage : activeValue === page}" ng-repeat="page in pager.pages" ng-click="setPage(page)" title="Đến trang 2" style="">2</a><!----><a class="ModulePager" ng-class="{SelectedPage : activeValue === page}" ng-repeat="page in pager.pages" ng-click="setPage(page)" title="Đến trang 3" style="">3</a><!----><a class="ModulePager" ng-class="{SelectedPage : activeValue === page}" ng-repeat="page in pager.pages" ng-click="setPage(page)" title="Đến trang 4" style="">4</a><!----><a class="ModulePager" ng-class="{SelectedPage : activeValue === page}" ng-repeat="page in pager.pages" ng-click="setPage(page)" title="Đến trang 5" style="">5</a><!----><a class="ModulePager" ng-class="{SelectedPage : activeValue === page}" ng-repeat="page in pager.pages" ng-click="setPage(page)" title="Đến trang 6" style="">6</a><!---->
                                    <!--<a class='ModulePager NextPage' ng-class="{notActive : pager.currentPage === pager.totalPages}" ng-click="setPage(pager.currentPage + 1)" title="Trang tiếp">&rsaquo;</a>
                                    <a class='ModulePager LastPage' ng-class="{notActive : pager.currentPage === pager.totalPages}" ng-click="setPage(pager.totalPages)" title="Trang cuối">&raquo;</a>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!----><div class="col-md-4 col-sm-12 col-xs-12" ng-include="'app/shared/template-include/quangcao-sidebar.template.html'" style="padding: 0px;"><div class="col-xs-12 cat-box sidebar">
        <div>
            <div class="row" ng-show="advertises != null" style="" aria-hidden="false">
                <h2 class="title-post1">Quảng cáo</h2>
                <div class="title-line"></div>
                <!----><div ng-repeat="item in advertises | limitTo: 10" class="expert-item">
                    <a href="#">
                        <img ng-src="<?php echo get_stylesheet_directory_uri(); ?>/assets/tai.jpg" style="width:100%; object-fit:cover;border-radius: 10px;" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/tai.jpg" align="middle">
                    </a>
                </div><!---->
            </div>
        </div>
    </section>

</div>
<?php get_footer();?>
