<?php get_header()?>
<div ng-init="loadData()">
    <section id="contact" style="margin-bottom:80px;height:700px">
        <div id="google-map" style="height:650px" data-latitude="52.365629" data-longitude="4.871331">

        </div>
        <div class="container-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div ng-bind-html="contact.GoogleMap | trusted"><iframe src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;coord=10.7768128,106.6320116&amp;q=L%C5%A9y%20B%C3%A1n%20B%C3%ADch%2C%20T%C3%A2n%20Ph%C3%BA%2C%20H%E1%BB%93%20Ch%C3%AD%20Minh%2C%20Vietnam+(HealthCare)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" style="border:0;  width:100%; height:564px; margin-top:50px; border:2px solid #ccc;" allowfullscreen=""></iframe></div>
                        <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.7082773570987!2d106.6622853145632!3d10.756951392334763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752efa8f7ecc25%3A0xe68b14f82698f12e!2sPham+Ngoc+Thach+Hospital!5e0!3m2!1sen!2s!4v1507092081256" frameborder="0" style="border:0;  width:100%; height:564px; margin-top:50px; border:2px solid #ccc;" allowfullscreen></iframe>-->
                    </div>
                    <div class="col-sm-4">
                        <div class="contact-form">
                            <h3>Góp ý xây dựng</h3>
                            <address>
                                <strong>Bệnh viện Phạm Ngọc Thạch</strong><br>
                                120 Hồng Bàng, Phường 12, Quận 5, TP. Hồ Chí Minh<br>
                                <abbr title="Phone">Điện thoại:</abbr> 028 3855 0207<br>
                                <abbr title="Fax">Fax:</abbr> 028 3855 0207<br>
                                <abbr title="Hotline">Đường dây nóng:</abbr> 028 3855 0207<br>
                            </address>

                            <form id="main-contact-form" name="contactForm" ng-submit="makeOfferAdvise(OfferAdvise)" class="ng-pristine ng-invalid ng-invalid-required ng-valid-email">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" placeholder="Họ tên" ng-model="OfferAdvise.Name" required="" aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control ng-pristine ng-untouched ng-empty ng-valid-email ng-invalid ng-invalid-required" placeholder="Email" ng-model="OfferAdvise.Email" required="" aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" placeholder="Chủ đề" ng-model="OfferAdvise.Status" required="" aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <textarea name="message" class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" rows="8" placeholder="Nội dung" ng-model="OfferAdvise.Detail" required="" aria-invalid="true"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Gửi tin nhắn</button>
                                <div class="block" style="padding-top: 20px">
                                    <!---->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<?php get_footer();?>
