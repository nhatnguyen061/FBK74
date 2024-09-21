<%@ page pageEncoding="UTF-8" contentType="text/html; charset = UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="model.FootballFieldSchedule" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Sân Bóng FBK74</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="css/style.css">
        <!--CSS Nhat-->
        <link rel="stylesheet" href="css/style_nhat.css"/>
        <!-- Include jQuery library -->

        <!-- Include jQuery UI library with Datepicker widget -->
        <link rel="stylesheet"
            href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            $(document).ready(function () {
                // Kích hoạt Datepicker với định dạng dd/MM/yyyy
                $("#ngay").datepicker({
                    dateFormat: "dd/mm/yy",
                    changeMonth: true,
                    changeYear: true
                });
            });
            $(document).on("click", ".card", function () {
                var iD = $(this).attr("id");
                // Hiển thị modal
                $.ajax({
                    method: "GET",
                    url: "http://localhost:8080/FBK74/thongtinsanbong",
                    dataType: "JSON",
                    data: {id: iD}
                })
                        .done(function (msg) {
                            $("#tensan1").text(msg.FootballField.Name);
                            $("#loaisan1").text("Sân dành cho " + msg.FootballField.TypeofFootballField + "người/Đội");
                            $("#start1").text(msg.StartTime);
                            $("#end1").text(msg.EndTime);
                            $("#price1").text(msg.FootballField.Price + "VNĐ");
                            var imageUrl = "img_nhat/" + msg.FootballField.Image;
                            $(".imgne").css("background-image", "url('" + imageUrl + "')");
                            $("#myModal").modal("show");

                        });

            });
        </script>    
    </head>
    <body>
        <div class="site-wrap">
            <!-- Navbar -->
            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>        
            <header class="site-navbar py-4" role="banner">
                <div class="container">
                    <div class="d-flex align-items-center">
                        <div class="site-logo">
                            <a href="index.jsp">
                                <img src="images/logo.png" alt="Logo">
                            </a>
                        </div>
                        <div class="ml-auto">
                            <nav class="site-navigation position-relative text-right" role="navigation">
                                <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                                    <li class="active"><a href="index.jsp" class="nav-link">Trang Chủ</a></li>
                                    <li><a href="danhsachtimsan" class="nav-link">Tìm Sân</a></li>
                                    <li>
                                        <div class="nav-item dropdown">
                                            <a href="#" class="nav-link dropdown-toggle" style="color: #ee1e46" data-bs-toggle="dropdown">Tìm Đối Thủ</a>
                                            <div class="dropdown-menu m-0">
                                                <a href="regist-find-opponent?IDAccount=${sessionScope.account.IDAccount}" class="dropdown-item">Đăng ký làm đối thủ</a>
                                                <a href="find-opponent" class="dropdown-item">Tìm kiếm đối thủ</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nav-item dropdown">
                                            <a href="#" class="nav-link dropdown-toggle" style="color: #ee1e46" data-bs-toggle="dropdown">Giải Đấu</a>
                                            <div class="dropdown-menu m-0">
                                                <a href="tournaments" class="dropdown-item">Thông tin các giải đấu</a>
                                                <a href="HistoryServlet" class="dropdown-item">Giải đấu đã đăng ký</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="">
                                            <c:if test="${sessionScope.account==null}">
                                                <a href="login" style="color: #fff" class="nav-link">Login</a>                                                   
                                            </c:if>
                                            <c:if test="${sessionScope.account!=null}">
                                                <div class="nav-item dropdown">
                                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Profile</a>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                        <a class="dropdown-item" href="profile1">Update</a>
                                                        <a class="dropdown-item" href="lichsuhoadon">History</a>
                                                        <a class="dropdown-item" href="logout">Logout</a>                                                                
                                                    </div>
                                                </div>                                                        
                                            </c:if>
                                        </div>    
                                    </li>                                            
                                </ul>                                                        
                            </nav>
                            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right text-white"><span
                                class="icon-menu h3 text-white"></span></a>
                        </div>
                    </div>
                </div>
            </header>
            <!-- End Navbar -->        

            <div class="site-section bg-dark">
                <div class="container">
                    <div class="d-flex justify-content-center mt-4">
                        <form action="danhsachtimsan" method="get" class="mt-3 w-100" id="myForm">
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label for="ngay" class="labelform">Ngày:</label>
                                    <input type="text" value="${currentDate}" placeholder="${currentDate}" class="form-control" id="ngay" name="ngay" autocomplete="off" />
                                </div>
                                <div class="col-md-4">
                                    <label for="gio" class="labelform">Thời gian:</label>
                                    <select class="form-control" id="gio" name="gio">
                                        <c:forEach var="i" begin="6" end="23">
                                            <c:if test="${i+1 == 24}">
                                                <option style="color: #ee1e46;" ${i == currentHour ? 'selected' : ''} value="${i}:30">${i}:30 - ${0}:30</option>
                                            </c:if>
                                            <c:if test="${i+1 != 24}">
                                                <option style="color: #ee1e46;" ${i == currentHour ? 'selected' : ''} value="${i}:30">${i}:30 - ${i+1}:30</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="loaisan" class="labelform">Loại sân:</label>
                                    <select class="form-control" id="loaisan" name="loaisan">
                                        <option style="color: #ee1e46;" value="0">Tất cả</option>
                                        <option style="color: #ee1e46;" value="5">5 người</option>
                                        <option style="color: #ee1e46;" value="7">7 người</option>
                                    </select>
                                </div>
                            </div>
                            <div class="text-center mt-3">
                                <button type="submit" style="background-color: #ee1e46; color: #fff;" class="btn btn-primary px-5">Tìm kiếm</button>
                                <a href="sandadat" style="background-color: #ee1e46; color: #fff;" class="btn btn-primary px-5">Sân đã đặt</a>
                            </div>
                            <div class="text-center mt-3">
                                
                            </div>
                        </form>
                    </div>
            
                    <div class="row mb-md-4 mt-md-4">
                        <div class="col-md-12">
                            <!-- Bảng danh sách các sân tồn tại -->
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Thời gian</th>
                                            <th>Tên sân</th>
                                            <th>Loại sân</th>
                                            <th>Giá</th>
                                            <th>Trạng thái</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="footballschedule" items="${requestScope.currentPageData}">
                                            <fmt:formatDate value="${footballschedule[0].startTime}" pattern="HH:mm" var="formattedStartTime" />
                                            <fmt:formatDate value="${footballschedule[0].endTime}" pattern="HH:mm" var="formattedEndTime" />
                                            <tr>
                                                <td>${formattedStartTime} - ${formattedEndTime}</td>
                                                <td>${footballschedule[0].footballField.name}</td>
                                                <td>Sân ${footballschedule[0].footballField.typeofFootballField} người</td>
                                                <td>${footballschedule[0].footballField.price} VND/giờ</td>
                                                <td>
                                                    <c:if test="${sessionScope.listIDFFS.contains(footballschedule[0].IDFootballFieldSchedule)}">
                                                        <button class="btn btn-danger" disabled>Sân bận</button>
                                                    </c:if>
                                                    <c:if test="${!sessionScope.listIDFFS.contains(footballschedule[0].IDFootballFieldSchedule)}">
                                                        <a href="checkdatsan?ffsID=${footballschedule[0].IDFootballFieldSchedule}&ngay=${currentDate}" class="btn btn-success">Đặt sân</a>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
            
                    <!-- Nút "Sân đã đặt" được đặt dưới bảng -->
                    
                </div>
            </div>        

            <footer class="footer-section">
                <div data-wow-delay="0.1s">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 footer-about">
                            <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-4">
                                <div class="site-logo">
                                    <a href="index.jsp">
                                        <img src="images/logo.png" alt="Logo">
                                    </a>
                                </div>
                                <p class="mt-3 mb-4">Địa chỉ chuyên nghiệp dành cho mọi lứa tuổi, hãy cùng nhau trải nghiệm sân chơi đẳng cấp của chúng tôi ngay nhé.</p>
                                <form action="">
                                    <div class="input-group">
                                        <input type="text" class="form-control border-white p-3" placeholder="Your Email">
                                        <button class="btn btn-dark">Sign Up</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-6">
                            <div class="row gx-5">
                                <div class="col-lg-4 col-md-12 pt-5 mb-5">
                                    <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                        <h3 class="text-light mb-0">Get In Touch</h3>
                                    </div>
                                    <div class="d-flex mb-2">
                                        <i class="bi bi-geo-alt text-primary me-2"></i>
                                        <p class="mb-0">78 Bình Kỳ, Ngũ Hành Sơn, Đà Nẵng</p>
                                    </div>
                                    <div class="d-flex mb-2">
                                        <i class="bi bi-envelope-open text-primary me-2"></i>
                                        <p class="mb-0">fbk74@gmail.com</p>
                                    </div>
                                    <div class="d-flex mb-2">
                                        <i class="bi bi-telephone text-primary me-2"></i>
                                        <p class="mb-0">+012 345 67890</p>
                                    </div>                                
                                </div>
                                <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                                    <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                        <h3 class="text-light mb-0">Quick Links</h3>
                                    </div>
                                    <div class="link-animated d-flex flex-column justify-content-start">
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Trang Chủ</a>
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Tìm Sân</a>
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Tìm Đối Thủ</a>
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Giải Đấu</a>
                                        <!-- <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Khóa Học Bóng Đá</a> -->
                                        <a class="text-light" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Liên Hệ</a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                                    <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                        <h3 class="text-light mb-0">Social</h3>
                                    </div>
                                    <div class="link-animated d-flex flex-column justify-content-start">
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Twitter</a>
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Facebook</a>
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Instagram</a>
                                        <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Youtube</a>
                                        <!-- <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Khóa Học Bóng Đá</a> -->
                                        <a class="text-light" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Liên Hệ</a>
                                    </div>
                                </div>
                            </div>
                        </div>                    
                    </div>                
                </div>
            </div>
            </footer>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
        <script src="js/js_nhat.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </body>
</html>