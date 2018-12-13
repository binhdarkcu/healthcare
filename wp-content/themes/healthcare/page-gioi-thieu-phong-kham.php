<?php get_header()?>
<div ng-init="loadData()">
    <div ng-show="isShow" ng-init="queryView()" aria-hidden="false" class="" style="">
        <div class="container container-bd" style="padding-top: 50px">
            <!---->
            <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12 wow fadeInRight postDetail conten">
                    <!----><div ng-if="!isRequiredLogin(post.PostInternal)">
                        <h3 class="column-title">Phòng khám GOLDEN</h3>
                        <span style="font-size: 12px; display: block;margin-bottom: 5px; text-transform: uppercase; color: #45aed6;">04-12-2017</span>
                        <!--<p style="font-weight: bold">{{post.DescriptionTrans}}</p>-->
                        <div class="posts">
                            <div ng-bind-html="post.Detail | trusted"><p>&nbsp; &nbsp; &nbsp; Phòng khám GOLDEN là bệnh viện hạng I trực thuộc Sở Y tế thành phố Hồ Chí Minh. Theo Quyết định phân công công tác chỉ đạo tuyến trong lĩnh vực khám, chữa bệnh, ban hành kèm theo Quyết định số 4026 /QĐ-BYT ngày 20 tháng 10 năm 2010 của Bộ trưởng Bộ Y tế, Phòng khám GOLDEN là bệnh viện đầu nghành, phụ trách chỉ đạo tuyến trong lĩnh vực khám, chữa bệnh cho chuyên khoa Lao và Bệnh Phổi các tỉnh/thành phố Miền Nam.</p>
                            <p>&nbsp; &nbsp; &nbsp; Phòng khám GOLDEN có: 09 Phòng chức năng(PĐD, TCCB, CTXH, TCKT, HCQT, CĐT, VTTTB, KHTH, QLCL),&nbsp;04 Khoa cận lâm sàng (Chẩn đoán hình ảnh, Vi sinh, Sinh hoá huyết học, Giải phẫu bệnh), khu A là khu bệnh phổi gồm các khoa A3, A4, A5, A6 tổng cộng 212 giường bệnh,&nbsp;khu B là khu lao gồm các khoa B1, B2, B3, B4 tổng cộng 191 giường bệnh,&nbsp;khu C là khu bệnh phổi gồm các khoa C4, C5, C6 tổng cộng 78 giường bệnh, khoa Dịch vụ điều trị bệnh phổi có 24 giường bệnh,&nbsp;01 Khoa Nhi tổng cộng 33 giường bệnh + 05 giường Điều trị trong ngày,&nbsp;01 Khoa Cấp cứu Ngoại chẩn có 110 giường bệnh,&nbsp;01 Khoa Cấp cứu - Hồi sức tích cực – Chống độc tổng cộng 66 giường bệnh, khoa Hóa trị Ung thư có 93 giường bệnh, khoa Gây mê Hồi sức có 15 giường bệnh, khoa Ngoại lồng ngực 1 có 47 giường bệnh, khoa Ngoại lồng ngực 2 có 42 giường bệnh,&nbsp;01 Khoa Khám: trung bình một ngày có 1.200 lượt bệnh nhân đến khám, khu điều trị ban ngày có 16 giường bệnh,&nbsp;01 Khoa Kiểm soát nhiễm khuẩn,&nbsp;01 Khoa Phục hồi Chức năng,&nbsp;01 Khoa Dược.</p>
                            <p>&nbsp; &nbsp; &nbsp; Bệnh viện là nơi hoạt động của một tập thể các nhân viên y tế có tay nghề cao cả nội và ngoại khoa trong lĩnh vực lao và bệnh phổi, đặc biệt là trong lĩnh vực phẫu thuật lồng ngực, chẩn đoán và hoá trị ung thư phế quản phổi, bệnh phổi không lao và lao.</p>
                            <h3><strong>Nhiệm vụ</strong></h3>
                            <p>&nbsp; &nbsp; &nbsp; - Tiếp nhận khám, chẩn đoán, điều trị, theo dõi quản lý bệnh nhân mắc các bệnh hô hấp không lao và bệnh lao.</p>
                            <p>&nbsp; &nbsp; &nbsp; - Phụ trách chỉ đạo tuyến trong lĩnh vực khám, chữa bệnh cho chuyên khoa Lao và Bệnh Phổi các tỉnh/thành phố Miền Nam theo Quyết định phân công công tác chỉ đạo tuyến trong lĩnh vực khám, chữa bệnh, ban hành kèm theo Quyết định số 4026 /QĐ-BYT ngày 20 tháng 10 năm 2010 của Bộ trưởng Bộ Y tế.</p>
                            <h3><strong>Cấp cứu</strong></h3>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;Tiếp nhận tất cả các bệnh nhân đang ở trong tình trạng cấp cứu, đặc biệt liên quan đến bệnh hô hấp và bệnh lao.</p>
                            <h3><strong>Khám chữa bệnh</strong></h3>
                            <p>&nbsp; &nbsp; &nbsp; - Tiếp nhận khám, chẩn đoán, điều trị, theo dõi quản lý bệnh nhân mắc các bệnh phổi không lao (hen suyễn, bệnh phổi tắc nghẽn mạn tính, viêm phế quản, viêm phổi không lao, dãn phế quản, kén khí phổi, tràn khí màng phổi, tràn mủ màng phổi, dày màng phổi, u phổi, u trung thất, phổi biệt trí…), bệnh phổi nghề nghiệp và bệnh lao:</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Do bệnh nhân tự đến hay tuyến dưới chuyển đến.</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Theo yêu cầu người bệnh và thân nhân bệnh nhân, theo yêu cầu các cơ quan, xí nghiệp trong và ngoài nước.</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Theo yêu cầu của Hội Đồng Giám Định Y Khoa, và của Ban Bảo vệ Sức khoẻ Thành uỷ.</p>
                            <h3><strong>Đào tạo Cán bộ Y tế</strong></h3>
                            <p>&nbsp; &nbsp; &nbsp; * Là cơ sở thực hành của Đại học Y Dược TP.HCM, Đại học Y khoa , Học viện Quân Y, Khoa Y Đại Học Quốc Gia, Khoa Y Đại học Tân Tạo, Cao đẳng Phương Nam, Cao đẳng Nguyễn Tất Thành, Đại học Hồng Bàng, Đại học Miền Nam...</p>
                            <p>&nbsp; &nbsp; &nbsp; * Tổ chức đào tạo liên tục cho các thành viên trong và ngoài bệnh viện mạng lưới chống lao tuyến Quận- Huyện.</p>
                            <p>&nbsp; &nbsp; &nbsp; * Các chương trình đào tạo gồm:</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Xét nghiệm:</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;+ Soi đàm trực tiếp</p>
                            <p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;+ Nuôi cấy vi trùng lao</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;+ Xpert MTB/RIF</p>
                            <p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;+ Nuôi cấy tạp trùng – Định danh</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;+ Kháng sinh đồ lao</p>
                            <p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;+ FNA hạch đọc chẩn đoán</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;+ Giải phẫu bệnh</p>
                            <p><strong>&nbsp;&nbsp; &nbsp; &nbsp;</strong>- Hồi sức cấp cứu:</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;+ Hồi sức cấp cứu hô hấp</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; + Vận hành – sử dụng máy giúp thở</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; + Chăm sóc bệnh nhân tại khoa HSCC (Điều dưỡng)</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Chẩn đoán hình ảnh:</p>
                            <p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;+ Kỹ thuật chụp X-quang phổi thường quy</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; + Sinh thiết xuyên thành dưới hướng dẫn của CT</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; + Đọc và nhận định kết quả X Quang phổi</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Ngoại khoa và Nội soi phế quản:</p>
                            <p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;+ Nội soi màng phổi</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; + Sinh thiết màng phổi mù</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; + dẫn lưu màng phổi</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; + Sinh thiết hạch</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; + Nội soi phế quản</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; + Phẫu thuật lồng ngực</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; + Gây mê hồi sức</p>
                            <p><strong>&nbsp;</strong> &nbsp;&nbsp; &nbsp;- Thăm dò chức năng hô hấp:</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;+ Thăm dò chức năng hô hấp</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; + Chẩn đoán và quản lý bệnh nhân Hen – COPD</p>
                            <p>&nbsp; &nbsp; &nbsp; * Các lớp đào tạo liên tục đã thực hiện trong năm 2017:</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Vai trò dinh dưỡng trong cải thiện chất lượng điều trị</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Cập nhật chẩn đoán và điều trị bệnh lý tắc nghẽn đường dẫn khí nhỏ</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Các kỹ thuật lâm sàng cơ bản trong chẩn đoán và điều trị bệnh hô hấp</p>
                            <p>&nbsp;&nbsp; &nbsp; &nbsp;- Chẩn đoán và điều trị lao</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Các kỹ thuật nội soi phế quản</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Chẩn đoán và điều trị Bệnh phổi tắc nghẽn mạn tính</p>
                            <h3><strong>Nghiên cứu khoa học</strong></h3>
                            <p>&nbsp; &nbsp; &nbsp; - Thực hiện nghiên cứu các đề tài cấp cơ sở và cấp bộ về phát triển kỹ thuật chẩn đoán mới, nghiên cứu thử nghiệm lâm sàng trong chẩn đoán và điều trị các bệnh hen, bệnh phổi tắt nghẽn mãn tính, bệnh lao, bệnh lao kháng thuốc, lao siêu kháng thuốc và lao/HIV.</p>
                            <p>&nbsp; &nbsp; &nbsp; - Thực hiện các nghiên cứu cơ bản khảo sát kiểu gien của người bệnh để tìm mối tương quan giữa kiểu gien của người bệnh với khả năng mắc bệnh lao hoặc lao kháng thuốc.</p>
                            <p>&nbsp; &nbsp; &nbsp; - Nghiên cứu dịch tễ học ứng dụng trong công tác chỉ đạo tuyến liên quan đến các bệnh lao và bệnh phổi không lao.</p>
                            <p>&nbsp; &nbsp; &nbsp; - Tham gia Điều tra dịch tễ về lao và lao kháng thuốc do Dự án phòng chống lao Quốc gia triển khai</p>
                            <h3><strong>Chỉ đạo tuyến dưới</strong></h3>
                            <h5>&nbsp; &nbsp; &nbsp; <strong>1. Chỉ đạo tuyến công tác khám, chữa bệnh:</strong></h5>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Khảo sát đánh giá năng lực chuyên môn và nhu cầu đào tạo của tuyến dưới.</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Hướng dẫn và tạo điều kiện cho tuyến dưới nâng cao chất lượng khám bệnh, chữa bệnh, thực hiện đúng tuyến kỹ thuật; thông báo kịp thời các sai sót về chuyên môn kỹ thuật.</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Kiểm tra việc thực hiện quy chế chuyên môn, quy trình kỹ thuật của đơn vị tuyến dưới.</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Hỗ trợ kỹ thuật tuyến dưới khi có yêu cầu.</p>
                            <p>&nbsp;&nbsp; &nbsp; &nbsp;- Tổ chức thực hiện công tác đào tạo lại, đào tạo liên tục cho cán bộ của các đơn vị tuyến dưới về chuyên môn kỹ thuật tại bệnh viện hoặc tại cơ sở.</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Tiếp nhận cán bộ chuyên môn của tuyến dưới về học tập thực hành, nâng cao tay nghề.</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Tổ chức thực hiện công tác nghiên cứu khoa học- công nghệ.</p>
                            <p>&nbsp;&nbsp; &nbsp; &nbsp;- Thực hiện nghiên cứu khoa học về chỉ đạo tuyến.</p>
                            <h5><strong>&nbsp; &nbsp; &nbsp; 2. Triển khai công tác hướng về cộng đồng:</strong></h5>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Cùng với tuyến dưới, hướng về cộng đồng thực hiện chăm sóc sức khoẻ ban đầu, tham gia phòng chống lao và bệnh phổi.</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Tham gia phối hợp với Dự án phòng chống lao Quốc gia – Bệnh viện Phổi Trung ương chỉ đạo tuyến trong việc thực hiện các nội dung hoạt động về Chương trình chống lao (CTCL) tại Khu vực được phân công (Quyết định số 4026/QĐ-BYT ngày 20/10/2010 của Bộ Y tế về Quy định phân công công tác chỉ đạo tuyến trong lĩnh vực khám, chữa bệnh).</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Tại các tỉnh thành phía Nam: chỉ đạo CTCL các tỉnh thành phía Nam, triển khai thực hiện các chỉ tiêu hoạt động chống lao hàng năm của tỉnh theo đúng đường hướng của Trung Ương. Nhiệm vụ cụ thể bao gồm công tác kiểm tra giám sát hàng quý và đột xuất, lượng giá công tác đã thực hiện, tập hợp báo cáo quý, năm để gởi về Trung Ương, đào tạo cán bộ, giáo dục truyền thông, điều tra dịch tể, nghiên cứu khoa học và phân phối tiếp liệu nhận được của&nbsp; CTCLQG cho các tỉnh.</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Tại TP.Hồ Chí Minh: Chỉ đạo kỹ thuật các Tổ chống lao quận huyện triển khai thực hiện các hoạt động chống lao hàng năm theo chỉ tiêu, đường hướng của Trung Ương và Sở Y Tế.&nbsp; Nhiệm vụ cụ thể bao gồm các công tác sau: Chỉ đạo tổ chức triển khai các biện pháp phòng chống lao tại quận huyện, phường xã, kiểm tra giám sát, lượng giá công tác đã thực hiện, đạo tạo cán bộ, giáo dục truyền thông, kế hoạch tiếp liệu và điều tra dịch tể, nghiên cứu khoa học.</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Hàng năm tổ chức tổng kết việc thực hiện công tác chỉ đạo tuyến theo kế hoạch và báo cáo kết quả với Sở Y tế thành phố Hồ Chí Minh cũng như Dụ án phòng, chống lao Quốc gia.</p>
                            <h3><strong>Hợp tác quốc tế</strong></h3>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;Hợp tác với <em>Đơn vị nghiên cứu lâm sàng Đại học Oxford</em>&nbsp;tại Việt Nam (OUCRU: Oxford University Clinical Research Unit), <em>Cơ quan nghiên cứu quốc gia</em>&nbsp;về HIV/AIDS và viêm gan của Pháp (<em>ANRS: National Agency</em>&nbsp;for Research on AIDS and Hepatitis), Hội bệnh phổi Pháp Việt (AFVP: <em>Association Franco-Vietnamienne de Pneumologie), Hội chống lao Hoàng gia Hà Lan</em>(<em>KNCV</em>), Tổ chức Sức khoẻ Gia đình Thế giới (FHI: family health international), Tổ chức phát triển các kỹ thuật chẩn đoán mới – Hoa kỳ(FIND-US: Foundation for&nbsp;<em>Innovative</em>&nbsp;New&nbsp;<em>Diagnostics-US)</em>, <em>Chương trình kỹ thuật</em>&nbsp;thích hợp trong y tế (PATH: Program for Appropriate Technology in Health), Tổ chức Sáng kiến Tiếp cận Dịch vụ Y tế (CHAI: Clinton Health Access Initiative), Quỹ toàn cầu (Global Fund), <em>Cơ quan Phát triển Quốc tế</em>&nbsp;của&nbsp;<em>Hoa Kỳ</em>&nbsp;(<em>USAID</em>: United States Agency for International Development, viết tắt), <em>Hiệp hội</em>&nbsp;Bài&nbsp;<em>lao và Bệnh phổi quốc tế</em> (IUATLD: International union&nbsp;<em>against tuberculosis</em>&nbsp;and&nbsp;<em>lung disease</em>), Đơn vị thử nghiệm lâm sàng của Hội đồng nghiên cứu Y khoa – Anh Quốc (MRC-CTU), Trung tâm kiểm soát và phòng ngừa dịch bệnh&nbsp;<em>Hoa Kỳ</em>&nbsp;(CDC:&nbsp; Centers for&nbsp;<em>Disease Control</em>&nbsp;and Prevention), &nbsp;Viện nghiên cứu Y khoa Woolcock - Đại Học Sydney. … các trường đại học, các tổ chức phi chính phủ, các cá nhân ở nước ngoài để tranh thủ sự giúp đỡ hỗ trợ trong nghiên cứu, trong kiểm tra giám sát, trong đào tạo cán bộ, phương tiện, thuốc men trang thiết bị theo đúng quy định của nhà nước.</p>
                            <h3><strong>Quản lý kinh tế</strong></h3>
                            <p>&nbsp; &nbsp; &nbsp; - Có biện pháp, kế hoạch sử dụng hiệu quả kinh phí giường bệnh và kinh phí chương trình chống lao.</p>
                            <p>&nbsp; &nbsp; &nbsp; - Thực hiện nghiêm chỉnh việc thu chi ngân sách theo luật tài chính. Đảm bảo tiết kiệm chống lãng phí, chống tiêu cực tham ô trong bệnh viện.</p>
                            <p>&nbsp; &nbsp; &nbsp; - Tạo thêm nguồn kinh phí từ các dịch vụ y tế, tổ chức thu viện phí, tổ chức khám bệnh ngoài giờ, tổ chức thực hiện hợp đồng kiểm tra phát hiện hàng loạt bằng phim theo yêu cầu cơ quan, xí nghiệp.</p>
                            <p>&nbsp; &nbsp; &nbsp; - Quản lý kinh phí hợp tác nghiên cứu với nước ngoài.</p>
                            <h3><strong>Thành tích</strong></h3>
                            <p>&nbsp; &nbsp; &nbsp; - Huân chương Lao động hạng 3 năm 2002, Huân chương lao động hạng 2 năm 2006, Bằng khen của Thủ tướng chính phủ năm 2009, Cờ thi đua xuất sắc của Bộ Y tế năm 2009, 2017, Bằng khen của Bộ Y tế trong 20 năm công tác phòng chống HIV/AIDS, Bằng khen của Bộ Y tế về thực hiện Đề án 1816 giai đoạn 2008-2010 và nhiều Bằng khen khác của các cấp bộ nghành.</p>
                            <p>&nbsp; &nbsp; &nbsp; - 8 năm liên tiếp đạt Danh hiệu “Bệnh viện xuất sắc toàn diện”</p>
                            <h5><strong>&nbsp; &nbsp; &nbsp; 1. Danh hiệu thi đua</strong></h5>
                            <table>
                            <tbody>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2012</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="193">
                            <p>Tập thể lao động xuất sắc</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="406">
                            <p>QĐ số 958/QĐ-UBND ngày 26/02/2013</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2013</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="193">
                            <p>Tập thể lao động xuất sắc</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="406">
                            <p>Quyết định số 750/QĐ-UBND ngày 19/02/2014</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2014</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="193">
                            <p>Tập thể lao động xuất sắc</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="406">
                            <p>Quyết định số 715/QĐ-UBND ngày 13/02/2015</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2015</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="193">
                            <p>Tập thể lao động xuất sắc</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="406">
                            <p>Quyết định số 748/QĐ-UBND ngày 25/02/2016</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2016</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="193">
                            <p>Tập thể lao động xuất sắc</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="406">
                            <p>Quyết định số 3563/QĐ-UBND ngày 07/7/2017</p>
                            </td>
                            </tr>
                            </tbody>
                            </table>
                            <h5><strong>&nbsp; &nbsp; &nbsp; 2. Hình thức khen thưởng</strong></h5>
                            <table width="650">
                            <tbody>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2002</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Huân chương Lao động hạng Ba</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định 602/2001/QĐ-CTN&nbsp; ngày 20/09/2002 của Chủ tịch nước Cộng hòa Xã hội Chủ nghĩa Việt Nam</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2006</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Huân chương Lao động hạng Nhì</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định số 124/2006/ QĐ-CTN&nbsp; ngày 19/01/2006 của Chủ tịch nước Cộng hòa Xã hội Chủ nghĩa Việt Nam</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2012</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Bằng khen&nbsp; hoàn thành xuất sắc nhiệm vụ 02 năm 2011-2012</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định số 960/QĐ-UBND ngày 26/02/2013 của Chủ tịch UBND thành phố</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2013</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Cờ thi đua thành phố</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định số 749/QĐ-UBND ngày 19/02/2014 của Chủ tịch UBND thành phố</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2014</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Bằng khen&nbsp; hoàn thành xuất sắc nhiệm vụ 02 năm 2013-2014</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định số 2725/QĐ-UBND ngày 09/6/2015 của Chủ tịch UBND thành phố</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2015</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Bằng khen&nbsp; thành tích thực hiện dự án phòng chống bệnh phổi tắc nghẽn mãn tính năm 2012-2015</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định số 5393/QĐ-BYT ngày 17/12/2015 của Bộ trưởng Bộ Y tế</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2015</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Bằng khen thành tích xây dựng cơ sở không khói thuốc lá năm 2010-2015</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định số 5422/QĐ-BYT ngày 21/12/2015 của Bộ trưởng Bộ Y tế</p>
                            </td>
                            </tr>
                            <tr>
                            <td style="border: 1px solid; padding: 5px;" width="50">
                            <p>2016</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="260">
                            <p>Bằng khen&nbsp; hoàn thành xuất sắc nhiệm vụ 02 năm 2015-2016</p>
                            </td>
                            <td style="border: 1px solid; padding: 5px;" width="340">
                            <p>Quyết định số 3564/QĐ-UBND ngày 07/7/2017 của Chủ tịch UBND thành phố</p>
                            </td>
                            </tr>
                            </tbody>
                            </table>
                            <h3><strong>Thành tựu</strong></h3>
                            <p>&nbsp; &nbsp; &nbsp; - Hệ thống phòng xét nghiệm đạt chuẩn quốc tế ISO 15189</p>
                            <p>&nbsp; &nbsp; &nbsp; - Ứng dụng các kỹ thuật mới và hiện đại trong chẩn đoán và điều trị:</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Xét nghiệm GeneXpert (Xpert MTB/RIF) giúp phát hiện sớm bệnh lao và lao kháng thuốc</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Hain test (MTBDRplus) giúp phát hiện sớm bệnh lao và lao kháng thuốc</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Kháng sinh đồ vi khuẩn lao trên môi trường lỏng đối với thuốc lao hàng 1 và thuốc lao hàng 2</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Định danh và kháng sinh đồ vi khuẩn bằng hệ thống tự động</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Xét nghiệm Quantiferon (QTF) giúp tầm soát nhiễm lao</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Nội soi chẩn đoán và sinh thiết phổi dưới hướng dẫn của CT</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Kỹ thuật chẩn đoán đột biến gien EGFR và đột biến gien ALK trong ung thư phổi không tế bào nhỏ</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Kỹ thuật chẩn đoán đột biến ALK trong ung thư phổi không tế bào nhỏ</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Xét ngiệm đo men tim tại giường&nbsp; giúp chẩn đoán nhanh các trường hợp có nhồi máu cơ tim</p>
                            <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+ Điều trị INH dự phòng mắc lao cho trẻ em và người lớn</p>
                            <h5><strong>&nbsp; &nbsp; &nbsp; Các dịch vụ chất lượng cao (bao gồm cả khám theo yêu cầu và khám đích danh):</strong></h5>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Chẩn đoán và điều trị và quản lý bệnh lao và lao kháng thuốc</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Chẩn đoán, điều trị và theo dõi bệnh hen và bênh phổi tắt nghẽn mạn tính</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Dịch vụ điều trị bệnh phổi</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Tái khám bệnh nhân sau xuất viện theo yêu cầu</p>
                            <p>&nbsp; &nbsp; &nbsp;&nbsp;- Khám phát hiện và điều trị bệnh ung thư phổi, ung thư trung thất</p>
                            <p>&nbsp;&nbsp; &nbsp; &nbsp;- Nội soi phế quản</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Phẫu thuật lồng ngực, phổi</p>
                            <h5><strong>&nbsp; &nbsp; &nbsp; Các hoạt động tương tác giữa bệnh nhân và nhân viên y tế:</strong></h5>
                            <p>&nbsp;&nbsp; &nbsp; &nbsp;- Bộ phận chăm sóc khách hàng đặt tại khoa khám hoạt động hiệu quả</p>
                            <p>&nbsp;&nbsp; &nbsp; &nbsp;- Hệ thống thông tin truyền thông tại khoa khám và các khoa lâm sàng luôn được cập nhật thông tin</p>
                            <p>&nbsp; &nbsp;&nbsp; &nbsp;- Thường xuyên tổ chức các buổi nói chuyện chuyên đề về bệnh lao và các bệnh phổi khác vào thứ 7 hàng tháng</p>
                            <p>&nbsp;&nbsp; &nbsp; &nbsp;- Họp Hội đồng bệnh nhân để phổ biến các nội quy, quy định của bệnh viện và giải quyết các thắc mắc của bệnh nhân/thân nhân trong thời gian nằm viện.</p></div>
                            <p style="font-weight: bold; text-align: right; margin-top:20px; margin-bottom:40px;"><strong>Phòng khám GOLDEN</strong></p>
                        </div>
                    </div><!---->
                    <!---->
                </div>

                <div class="col-md-4 col-sm-12 col-xs-12" style="position: sticky;top: 0;">
                    <div class="col-xs-12 cat-box">
                        <div ng-show="Categories.length != 0" aria-hidden="true" class="ng-hide" style="">
                            <h4 class="column-title">CHUYÊN MỤC</h4>
                            <!---->
                            <div style="height: 50px;"></div>
                        </div>
                        <h4 class="column-title">TIN TỨC MỚI NHẤT</h4>
                        <!----><ul ng-repeat="item in posts3 | limitTo: 3" class="post-list">
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="http://bvpnt.org.vn/tin-benh-vien/bo-truong-bo-y-te-xuong-tham-va-tang-qua-cho-benh-nhan-ngay-1122018/2394">Bộ trưởng Bộ Y tế xuống thăm và tặng quà cho bệnh nhân ngày 1/12/2018</a></li>
                        </ul><!----><ul ng-repeat="item in posts3 | limitTo: 3" class="post-list">
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="http://bvpnt.org.vn/danh-muc-ky-thuat/danh-muc-dich-vu-ky-thuat-thuc-hien-tai-benh-vien-pham-ngoc-thach/2390">Danh mục dịch vụ kỹ thuật thực hiện tại Phòng khám GOLDEN</a></li>
                        </ul><!----><ul ng-repeat="item in posts3 | limitTo: 3" class="post-list">
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="http://bvpnt.org.vn/thong-bao/quyet-dinh-phe-duyet-bo-sung-danh-muc-ky-thuat-trong-kham-chua-benh-tai-benh-vien-pham-ngoc-thach/2388">Quyết định phê duyệt bổ sung danh mục kỹ thuật trong khám, chữa bệnh tại Phòng khám GOLDEN</a></li>
                        </ul><!---->
                        <h4 class="column-title">BÀI VIẾT LIÊN QUAN</h4>
                        <!----><ul ng-repeat="post in listPosts | limitTo: 3" class="post-list" style="">
                            <!--<li><i class="fa fa-angle-right" aria-hidden="true"></i> <a href="javascript:void(0)" ng-click="viewDetail(post.Id)">{{post.TitleTran}}</a></li>-->
                            <li><i class="fa fa-angle-right" aria-hidden="true"></i><a href="http://bvpnt.org.vn/tong-quan-benh-vien/benh-vien-pham-ngoc-thach/1043">Phòng khám GOLDEN</a></li>
                        </ul><!---->
                        <a href="http://bvpnt.org.vn/tin-tuc-lien-quan/54"><!----></a>
                        <!--<div style="height: 50px;"></div>
                                <h4 class="column-title">THẺ</h4>
                       <div ng-repeat="tag in listTag" class="tag">
                                <span>{{tag}}</span>
                       </div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<?php get_footer();?>
