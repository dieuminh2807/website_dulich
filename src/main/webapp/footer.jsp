<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>Tour hot</h3>
                    <ul>
                        <c:forEach items="${requestScope.tourlist2}" var="tour" begin = "0" end = "2">
                        <li> <a href="/xemchitiettour?matour=${tour.maTourdb}"> ${tour.tenTour}</a> </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Khuyến mãi </h3>
                    <ul>
                        <c:forEach items="${requestScope.tourlist3}" var="tour" begin = "0" end = "2">
                            <li> <a href="/xemchitiettour?matour=${tour.maTourdb}"> ${tour.tenTour}</a> </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Tour mới </h3>
                    <ul>
                        <c:forEach items="${requestScope.tourlist1}" var="tour" begin = "0" end = "2">
                            <li> <a href="/xemchitiettour?matour=${tour.maTourdb}"> ${tour.tenTour}</a> </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Kết nối </h3>
                    <ul>
                        <li> <a href="#"> Kết nối Marketing </a> </li>
                        <li> <a href="#"> Kết nối Sales </a> </li>
                        <li> <a href="#"> Kết nối HR </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> Đăng ký kênh chúng tôi </h3>
                    <ul>
                        <li>
                            <div class="input-append subscribe-btn text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  btn-success" type="button"> Đăng ký <i class="fa fa-save"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="#"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row-->
        </div>
        <!--/.container-->
    </div>
    <!--/.footer-->

    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright 2018 Đăng ký bản quyền </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                    <li>Chúng tôi chấp nhận:  </li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-visa"></i></li>
                </ul>
            </div>
        </div>
    </div>
    <!--/.footer-bottom-->
</footer>