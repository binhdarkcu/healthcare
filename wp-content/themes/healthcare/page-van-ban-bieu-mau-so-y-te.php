<?php get_header()?>
<div ng-init="loadData()">
    <div class="container container-bd" style="padding-top:30px;">
        <div class="row">
            <div class="post-7839 page type-page status-publish hentry">

                <div>
                    <h3 class="column-title" style="text-transform:uppercase">
                        Thông tin  từ sở y tế tp. hồ chí minh
                    </h3>
                </div>
                <!----><div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1496193399697" ng-repeat="item in rss " style="">
                    <!-- Column lịch công tác-->
                    <div class="col-md-4">
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h2>
                                        <a class="rss_title" href="http://bvpnt.org.vn/">Thư mời từ sở</a>

                                    </h2>
                                    <div class="feedzy-rss" ng-init="limit = limitPresent = 2; textMore=&#39;Hiển thị thêm&#39;; textLess=&#39;Hiển thị ít hơn&#39;;">
                                        <!----><ul ng-repeat="it in item.contents | limitTo:limitPresent ">
                                            <li class="rss_item">
                                                <span class="title">
                                                    <a href="http://medinet.gov.vn/thu-moi/hoi-nghi-pho-bien-thong-tu-so-482017tt-byt-ngay-28122017-va-thong-tu-so-502017t-c1082-10482.aspx" target="_blank">Hội nghị phổ biến Thông tư số 48/2017/TT-BYT ngày 28/12/2017 và Thông tư số 50/2017/TT-BYT ngày 29/12/2017 của Bộ trưởng Bộ Y tế. - Văn Phòng Sở</a>
                                                </span>
                                                <div class="rss_content" style="color:brown">
                                                    <small>11/30/2018 12:00:00 AM</small>
                                                </div>
                                            </li>
                                        </ul><!----><ul ng-repeat="it in item.contents | limitTo:limitPresent ">
                                            <li class="rss_item">
                                                <span class="title">
                                                    <a href="http://medinet.gov.vn/thu-moi/hoi-nghi-pho-bien-nghi-dinh-1462018nd-cp-ngay-17102018-cua-chinh-phu-quy-dinh-c-c1082-10481.aspx" target="_blank">Hội nghị phổ biến Nghị định 146/2018/NĐ-CP ngày 17/10/2018 của Chính phủ quy định chi tiết và hướng dẫn biện pháp thi hành một số điều của Luật bảo hiểm y tế. - Văn Phòng Sở</a>
                                                </span>
                                                <div class="rss_content" style="color:brown">
                                                    <small>11/30/2018 12:00:00 AM</small>
                                                </div>
                                            </li>
                                        </ul><!---->
                                        <div class="col-md-12 text-center">
                                            <a class="btn btn-sm btn-viewmore-down" ng-click="limitPresent = item.contents.length" ng-show="item.contents.length &gt; limitPresent" style="color:white" aria-hidden="false">Hiển thị thêm</a>
                                            <a class="btn btn-sm btn-viewmore-up ng-hide" ng-click="limitPresent = limit" ng-show="limitPresent == item.contents.length" style="color:white" aria-hidden="true">Hiển thị ít hơn</a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column văn bản-->

                </div><!----><div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1496193399697" ng-repeat="item in rss " style="">
                    <!-- Column lịch công tác-->
                    <div class="col-md-4">
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h2>
                                        <a class="rss_title" href="http://bvpnt.org.vn/">Văn bản sở y tế</a>

                                    </h2>
                                    <div class="feedzy-rss" ng-init="limit = limitPresent = 2; textMore=&#39;Hiển thị thêm&#39;; textLess=&#39;Hiển thị ít hơn&#39;;">
                                        <!----><ul ng-repeat="it in item.contents | limitTo:limitPresent ">
                                            <li class="rss_item">
                                                <span class="title">
                                                    <a href="http://medinet.gov.vn/van-ban-cua-so-y-te/vv-tap-huan-ve-to-chuc-xay-dung-va-van-hanh-trang-thong-tin-dien-tu-so-y-te-tp-c4639-5728.aspx" target="_blank">V/v Tập huấn về tổ chức, xây dựng và vận hành trang thông tin điện tử - Sở Y tế TP. Hồ Chí Minh</a>
                                                </span>
                                                <div class="rss_content" style="color:brown">
                                                    <small>6/1/2018 12:00:00 AM</small>
                                                </div>
                                            </li>
                                        </ul><!----><ul ng-repeat="it in item.contents | limitTo:limitPresent ">
                                            <li class="rss_item">
                                                <span class="title">
                                                    <a href="http://medinet.gov.vn/van-ban-cua-so-y-te/vv-thong-bao-thoi-gian-thi-ly-thuyet-hoi-thi-dieu-duong-truong-gioi-cap-thanh-p-c4639-5674.aspx" target="_blank">V/v Thông báo thời gian thi lý thuyết Hội thi Điều dưỡng trưởng giỏi cấp Thành phố mở rộng lần thứ 5 năm 2018.   - Sở Y tế TP. Hồ Chí Minh</a>
                                                </span>
                                                <div class="rss_content" style="color:brown">
                                                    <small>5/23/2018 12:00:00 AM</small>
                                                </div>
                                            </li>
                                        </ul><!---->
                                        <div class="col-md-12 text-center">
                                            <a class="btn btn-sm btn-viewmore-down" ng-click="limitPresent = item.contents.length" ng-show="item.contents.length &gt; limitPresent" style="color:white" aria-hidden="false">Hiển thị thêm</a>
                                            <a class="btn btn-sm btn-viewmore-up ng-hide" ng-click="limitPresent = limit" ng-show="limitPresent == item.contents.length" style="color:white" aria-hidden="true">Hiển thị ít hơn</a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column văn bản-->

                </div><!----><div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1496193399697" ng-repeat="item in rss ">
                    <!-- Column lịch công tác-->
                    <div class="col-md-4">
                        <div class="wpb_wrapper">
                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <h2>
                                        <a class="rss_title" href="http://bvpnt.org.vn/">Thông báo sở y tế</a>

                                    </h2>
                                    <div class="feedzy-rss" ng-init="limit = limitPresent = 2; textMore=&#39;Hiển thị thêm&#39;; textLess=&#39;Hiển thị ít hơn&#39;;">
                                        <!----><ul ng-repeat="it in item.contents | limitTo:limitPresent ">
                                            <li class="rss_item">
                                                <span class="title">
                                                    <a href="http://medinet.gov.vn/thong-bao/lich-truc-ung-pho-bao-so-9-ngay-24-25112018-so-y-te-tp-ho-chi-minh-c1013-10373.aspx" target="_blank">Lịch trực ứng phó bão Số 9 (ngày 24-25/11/2018) - Sở Y tế TP. Hồ Chí Minh</a>
                                                </span>
                                                <div class="rss_content" style="color:brown">
                                                    <small>11/24/2018 12:00:00 AM</small>
                                                </div>
                                            </li>
                                        </ul><!----><ul ng-repeat="it in item.contents | limitTo:limitPresent ">
                                            <li class="rss_item">
                                                <span class="title">
                                                    <a href="http://medinet.gov.vn/thong-bao/thong-bao-so-7371syt-nvd-ngay-15112018-ve-viec-thong-tu-so-292018-cua-bo-y-te-q-c1081-10174.aspx" target="_blank">Thông báo số 7371/SYT-NVD ngày 15/11/2018 về việc Thông tư số 29/2018 của Bộ Y tế quy định về thử thuốc trên lâm sàng. - Văn Phòng Sở</a>
                                                </span>
                                                <div class="rss_content" style="color:brown">
                                                    <small>11/15/2018 12:00:00 AM</small>
                                                </div>
                                            </li>
                                        </ul><!---->
                                        <div class="col-md-12 text-center">
                                            <a class="btn btn-sm btn-viewmore-down" ng-click="limitPresent = item.contents.length" ng-show="item.contents.length &gt; limitPresent" style="color:white" aria-hidden="false">Hiển thị thêm</a>
                                            <a class="btn btn-sm btn-viewmore-up ng-hide" ng-click="limitPresent = limit" ng-show="limitPresent == item.contents.length" style="color:white" aria-hidden="true">Hiển thị ít hơn</a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column văn bản-->

                </div><!---->
                <div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1496183090201">
                    <div class="wpb_column vc_column_container vc_col-sm-6 vc_custom_1496183074666">
                        <div class="wpb_wrapper">
                            <div class="wpb_single_image wpb_content_element vc_custom_1496202454553 vc_align_left">
                                <div class="wpb_wrapper">
                                    <a href="https://pddt.medinet.org.vn/" target="_blank">
                                        <div class="vc_single_image-wrapper   vc_box_border_grey"></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div><div class="wpb_column vc_column_container vc_col-sm-6 vc_custom_1496183059615">
                        <div class="wpb_wrapper">
                            <div class="wpb_single_image wpb_content_element vc_custom_1496202475004 vc_align_left">
                                <div class="wpb_wrapper">

                                    <a href="https://lienthongvanban.tphcm.gov.vn/" target="_blank">
                                        <div class="vc_single_image-wrapper   vc_box_border_grey"></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><div class="mt_style_row " style="text-align:left;"></div>
                <div class="wpb_column vc_column_container vc_col-sm-12"><div class="wpb_wrapper"></div></div>
                <div class="wpb_text_column wpb_content_element ">
                    <div class="wpb_wrapper">

                    </div>
                </div>
                <div class="sharedaddy sd-sharing-enabled">
                    <div class="clear"></div>

                </div>
            </div>
        </div>
    </div>
</div>
<style>
.feedzy-rss a {
color: #666;
}
</style>
<?php get_footer();?>
