<%@ page pageEncoding="UTF-8" contentType="text/html; charset = UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset = UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="model.FootballFieldSchedule" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<html>
    <head>
        <meta charset="utf-8">
        <title>Sân Bóng FBK74</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--CSS Nhat-->
        <link rel="stylesheet" href="css/style_nam.css"/>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
            />
        
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Sân Bóng FBK74</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>
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
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
            // Khởi tạo Datepicker với định dạng dd/MM/yyyy
                $("#futureDate").datepicker({
                    dateFormat: "dd/mm/yy", // Định dạng ngày
                    changeMonth: true, // Cho phép thay đổi tháng
                    changeYear: true,  // Cho phép thay đổi năm
                    minDate: 0,        // Chỉ cho phép chọn ngày trong tương lai
                    autoclose: true,    // Đóng Datepicker sau khi chọn
                    todayHighlight: true
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
                                    <li class=""><a href="index.jsp" class="nav-link">Trang Chủ</a></li>
                                    <li class=""><a href="danhsachtimsan" class="nav-link">Tìm Sân</a></li>
                                    <li class="active">
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
            <br>
            <br>
            <br>
            <!-- End Navbar -->   


            <div class="row">
                <!-- Main content -->
                <div class="col-md-10">
                    <div class="tournament-title-container">
                        <a href="detail?id=${tournament.id}" class="tournament-title animate__animated animate__pulse">${tournament.name}</a>
                    </div>
                    <div class="row my-4">
                        <div class="col-md-4 text-center">
                            <a href="schedule?id=${id}" class="btn btn-outline-primary w-100">Lịch Thi Đấu</a>
                        </div>
                        <div class="col-md-4 text-center">
                            <a href="teams?id=${id}" class="btn btn-outline-primary w-100">Danh Sách Đội</a>
                        </div>
                        <div class="col-md-4 text-center">
                            <a href="result?id=${id}" class="btn btn-outline-primary w-100">Kết Quả</a>
                        </div>
                    </div>
                    <!--<div class="list">-->
                    <div class="team-list-container">
                        <c:if test="${teams != null && !teams.isEmpty()}">
                            <c:forEach items="${teams}" var="team" varStatus="stt">
                                <div class="item">
                                    <h2 class="team-list-title">Danh Sách Đội Bóng ${team.name}</h2>
                                    <table class="team-list-table">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Cầu Thủ</th>
                                                <th>Số Áo</th>
                                                <th>Số Điện Thoại</th>
                                                <th>Mô Tả</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${team.members}" var="loop" varStatus="stt">
                                                <tr>
                                                    <td>${stt.index + 1}</td>
                                                    <td>${loop.name}</td>
                                                    <td>${loop.number}</td>
                                                    <td>${loop.phone}</td>
                                                    <td>${loop.detail}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </c:forEach>
                        </c:if>

                        <c:if test="${team != null}">
                            <div class="item">
                                <h2 class="team-list-title">Danh Sách Đội Bóng ${team.name}</h2>
                                <table class="team-list-table">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Cầu Thủ</th>
                                            <th>Số Áo</th>
                                            <th>Số Điện Thoại</th>
                                            <th>Mô Tả</th>
                                            <th>Chỉnh Sửa</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${team.members}" var="loop" varStatus="stt">
                                            <tr>
                                                <td>${stt.index + 1}</td>
                                                <td>${loop.name}</td>
                                                <td>${loop.number}</td>
                                                <td>${loop.phone}</td>
                                                <td>${loop.detail}</td>

                                                <td>
                                                    <a href="EditMemberOfTeam?memberID=${loop.id}&IDTeam=${team.id}" >Chỉnh Sửa |</a>
                                                    <a href="DeleteMember?id=${loop.id}&IDTeam=${IDTeam}&tournamentID=${tournament.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa thành viên này khỏi đội')">Xóa</a>
                                                </td>

                                            </tr>
                                        </c:forEach>
                                        <a href="AddMember?IDTeam=${team.id}&tournamentID=${tournament.id}" >Thêm +</a>
                                    </tbody>
                                </table>
                            </div>
                        </c:if>           
                    </div>
                </div>
            </div>



            <script src="js/script.js"></script>
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
            
        
        


        <script>
            function toggleDetails(row) {
                const detailsCell = row.querySelector('.details');
                detailsCell.classList.toggle('collapsed');
            }
        </script>
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
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>