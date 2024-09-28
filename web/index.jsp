<%@ page pageEncoding="UTF-8" contentType="text/html; charset = UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>      
        <meta charset="utf-8">
        <title>Sân Bóng FBK74</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <!-- Additional Stylesheets -->
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="css/aos.css">
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
                                            <a href="#" class="nav-link dropdown-toggle" style=" color: #ee1e46" data-bs-toggle="dropdown">Tìm Đối Thủ</a>
                                            <div class="dropdown-menu m-0">
                                                <a href="regist-find-opponent?IDAccount=${sessionScope.account.IDAccount}" class="dropdown-item">Đăng ký làm đối thủ</a>
                                                <a href="find-opponent" class="dropdown-item">Tìm kiếm đối thủ</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="nav-item dropdown" >
                                            <a href="#" class="nav-link dropdown-toggle" style=" color: #ee1e46"  data-bs-toggle="dropdown">Giải Đấu</a>
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

            <div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 ml-auto">
                            <h1 class="text-white">Football Fiels Booking</h1>
                            <p>Chuyên Nghiệp & Chất Lượng. 
                            Sân cỏ nhân tạo dành cho thi đấu bóng đá, thỏa sức cháy hết mình với đam mê</p>
                            <div id="date-countdown"></div>
                            <p>
                                <a href="danhsachtimsan" class="btn btn-primary py-3 px-4 mr-3">Đặt sân</a>
                                <a onclick="scrollToDiv()" class="more light">Thông tin</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">            
                <div class="row">
                    <div class="col-lg-12">
                        <div class="d-flex team-vs">
                            <span class="score">4-1</span>
                            <div class="team-1 w-50">
                                <div class="team-details w-100 text-center">
                                    <img src="images/logo_1.png" alt="Image" class="img-fluid">
                                    <h3>FPT University <span>(win)</span></h3>
                                    <ul class="list-unstyled">
                                        <li>Khanh Dat (7)</li>
                                        <li>Nhat Nguyen (12)</li>
                                        <li>Phi Hung (10)</li>
                                        <li>Quang Trieu (5)</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="team-2 w-50">
                                <div class="team-details w-100 text-center">
                                    <img src="images/logo_2.png" alt="Image" class="img-fluid">
                                    <h3>KTU University <span>(loss)</span></h3>
                                    <ul class="list-unstyled">
                                        <li>C. Ronaldo (7)</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                                                
            <br>
            <!-- About Start -->         
            <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="container py-5">
                    <div class="row g-5" id="divId">
                        <div class="col-lg-7">
                            <div class="section-title position-relative pb-3 mb-5">
                                <h5 class="fw-bold text-primary text-uppercase">Thông tin</h5>
                                <h1 class="mb-0">Sân bóng nhân tạo hàng đầu Đà Nẵng</h1>
                            </div>
                            <p class="mb-4">
                                Chào mừng bạn đến với trung tâm quản lý sân bóng đá nhân tạo FBK74 Đà Nẵng! Với hơn 10 năm kinh nghiệm, chúng tôi tự hào giới thiệu đến bạn một không gian chất lượng và hiện đại, đáp ứng đầy đủ nhu cầu cho mọi đội bóng và đấu trường thể thao.</p>
                            <div class="row g-0 mb-3">
                                <div class="col-sm-6 wow zoomIn" data-wow-delay="0.2s">
                                    <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i> CHẤT LƯỢNG KIỂM CHỨNG</h5>
                                    <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i> CƠ SỞ VẬT CHẤT HIỆN ĐẠI</h5>
                                </div>
                                <div class="col-sm-6 wow zoomIn" data-wow-delay="0.4s">
                                    <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i> ĐA DẠNG VÀ TIỆN NGHI</h5>
                                    <h5 class="mb-3"><i class="fa fa-check text-primary me-3"></i> DỊCH VỤ CHUYÊN NGHIỆP</h5>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-4 wow fadeIn" data-wow-delay="0.6s">
                                <div class="bg-primary d-flex align-items-center justify-content-center rounded" style="width: 50px; height: 50px;">
                                    <i class="fa fa-phone-alt text-white"></i>
                                </div>
                                <div class="ps-4">
                                    <h5 class="mb-2">  Liên Hệ Để Đuợc Tư Vấn</h5>
                                    <h4 class="text-primary mb-0">  +012 345 6789</h4>
                                </div>
                            </div>
                            <a href="find-opponent" class="btn btn-primary py-3 px-5 mt-3 wow zoomIn" data-wow-delay="0.9s">Tìm đối thử</a>
                        </div>
                        <div class="col-lg-5" style="min-height: 500px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded wow zoomIn" data-wow-delay="0.9s" src="images/2a362dc754b2d7c749f0e56202d6f90b.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About End -->

            <div class="site-section">
                <div class="container">
                  <div class="row">
                    <div class="col-6 title-section">
                      <h2 class="heading">Videos</h2>
                    </div>
                    <div class="col-6 text-right">
                      <div class="custom-nav">
                      <a href="#" class="js-custom-prev-v2"><span class="icon-keyboard_arrow_left"></span></a>
                      <span></span>
                      <a href="#" class="js-custom-next-v2"><span class="icon-keyboard_arrow_right"></span></a>
                      </div>
                    </div>
                  </div>
          
          
                  <div class="owl-4-slider owl-carousel">
                    <div class="item">
                      <div class="video-media">
                        <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                        <a href="" class="d-flex play-button align-items-center" data-fancybox>
                          <span class="icon mr-3">
                            <span class="icon-play"></span>
                          </span>
                          <div class="caption">
                            <h3 class="m-0">Dogba set for Juvendu return?</h3>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="item">
                      <div class="video-media">
                        <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                        <a href="" class="d-flex play-button align-items-center" data-fancybox>
                          <span class="icon mr-3">
                            <span class="icon-play"></span>
                          </span>
                          <div class="caption">
                            <h3 class="m-0">Kai Nets Double To Secure Comfortable Away Win</h3>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="item">
                      <div class="video-media">
                        <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                        <a href="" class="d-flex play-button align-items-center" data-fancybox>
                          <span class="icon mr-3">
                            <span class="icon-play"></span>
                          </span>
                          <div class="caption">
                            <h3 class="m-0">Romolu to stay at Real Nadrid?</h3>
                          </div>
                        </a>
                      </div>
                    </div>
          
                    <div class="item">
                      <div class="video-media">
                        <img src="images/img_1.jpg" alt="Image" class="img-fluid">
                        <a href="" class="d-flex play-button align-items-center" data-fancybox>
                          <span class="icon mr-3">
                            <span class="icon-play"></span>
                          </span>
                          <div class="caption">
                            <h3 class="m-0">Dogba set for Juvendu return?</h3>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="item">
                      <div class="video-media">
                        <img src="images/img_2.jpg" alt="Image" class="img-fluid">
                        <a href="" class="d-flex play-button align-items-center" data-fancybox>
                          <span class="icon mr-3">
                            <span class="icon-play"></span>
                          </span>
                          <div class="caption">
                            <h3 class="m-0">Kai Nets Double To Secure Comfortable Away Win</h3>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="item">
                      <div class="video-media">
                        <img src="images/img_3.jpg" alt="Image" class="img-fluid">
                        <a href="" class="d-flex play-button align-items-center" data-fancybox>
                          <span class="icon mr-3">
                            <span class="icon-play"></span>
                          </span>
                          <div class="caption">
                            <h3 class="m-0">Romolu to stay at Real Nadrid?</h3>
                          </div>
                        </a>
                      </div>
                    </div>
          
                  </div>
          
                </div>
              </div>            

            <!-- Features Start -->
            <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="container py-5">
                    <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 1000px;">
                        <h5 class="fw-bold text-primary text-uppercase">Tại sao bạn nên chọn chúng tôi</h5>
                        <h1 class="mb-0">Cỏ nhân tạo, trận đấu thực sự <br> Chúng tôi là lựa chọn của người chiến thắng!</h1>
                    </div>
                    <div class="row g-5">
                        <div class="col-lg-4">
                            <div class="row g-5">
                                <div class="col-12 wow zoomIn" data-wow-delay="0.2s">
                                    <div class="bg-primary rounded d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                        <i class="fa fa-cubes text-white"></i>
                                    </div>
                                    <h4>Sân cỏ tốt nhất</h4>
                                    <p class="mb-0">Sử dụng cỏ chuyên dụng, chăm sóc đặc biệt để đảm bảo độ chơi tốt nhất và an toàn cho cầu thủ</p>
                                </div>
                                <div class="col-12 wow zoomIn" data-wow-delay="0.6s">
                                    <div class="bg-primary rounded d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                        <i class="fa fa-award text-white"></i>
                                    </div>
                                    <h4>Đội ngũ nhân viên nhiệt tình, chuyên nghiệp</h4>
                                    <p class="mb-0">Sẵn sàng hỗ trợ và giải đáp mọi thắc mắc khách hàng cần, chăm sóc khách hàng mọi lúc mọi nơi </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4  wow zoomIn" data-wow-delay="0.9s" style="min-height: 350px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded wow zoomIn" data-wow-delay="0.1s" src="img/anh5.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="row g-5">
                                <div class="col-12 wow zoomIn" data-wow-delay="0.4s">
                                    <div class="bg-primary rounded d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                        <i class="fa fa-users-cog text-white"></i>
                                    </div>
                                    <h4>Cơ sở vật chất hiện đại</h4>
                                    <p class="mb-0">Đảm bảo cơ sở vật chất hiện đại hàng đầu, an toàn dành cho mọi người chơi</p>
                                </div>
                                <div class="col-12 wow zoomIn" data-wow-delay="0.8s">
                                    <div class="bg-primary rounded d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                                        <i class="fa fa-phone-alt text-white"></i>
                                    </div>
                                    <h4>Hỗ trợ 24/7 </h4>
                                    <p class="mb-0">Mọi vấn đề đều được giải quyết nhanh chóng và sớm nhất</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Features Start -->

            <!-- Full Screen Search Start -->
            <div class="modal fade" id="searchModal" tabindex="-1">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content" style="background-color: #fff">
                        <div class="modal-header border-0">
                            <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body d-flex align-items-center justify-content-center">
                            <div class="input-group" style="max-width: 600px;">
                                <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                                <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Full Screen Search End -->

            <div class="latest-news">
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center position-relative pb-3 mb-5 mx-auto" style="max-width: 600px;">
                            <h5 class="fw-bold text-primary text-uppercase">Huấn luyện viên</h5>
                            <h1 class="mb-0">Đội ngũ huấn luyện viên trẻ vô cùng chuyên nghiệp</h1>
                        </div>    
                    </div>
                    <div class="row no-gutters">
                        <div class="col-md-4">
                            <div class="post-entry">
                                <a href="#">
                                    <img src="images/gettyimages-662707148-612x612.jpg" alt="Image" class="img-fluid">
                                </a>
                                <div class="caption">
                                    <div class="caption-inner">
                                        <h3 class="mb-3">Park Hang Seo</h3>
                                        <div class="author d-flex align-items-center">
                                            <div class="img mb-2 mr-3">
                                                <img src="images/Fabrizio.jpg" alt="">
                                            </div>
                                            <div class="text">
                                                <h4>Fabrizio Romano</h4>
                                                <span>Oct 19, 2024 &bullet; Sports</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post-entry">
                                <a href="#">
                                    <img src="images/gettyimages-1085431430-612x612.jpg" alt="Image" class="img-fluid">
                                </a>
                                <div class="caption">
                                    <div class="caption-inner">
                                        <h3 class="mb-3">Chu Dinh Nghiem</h3>
                                        <div class="author d-flex align-items-center">
                                            <div class="img mb-2 mr-3">
                                                <img src="images/Fabrizio.jpg" alt="">
                                            </div>
                                            <div class="text">
                                                <h4>Fabrizio Romano</h4>
                                                <span>Dec 23, 2024 &bullet; Sports</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post-entry">
                                <a href="#">
                                    <img src="images/can.jpg" alt="Image" class="img-fluid">
                                </a>
                                <div class="caption">
                                    <div class="caption-inner">
                                        <h3 class="mb-3">Carlo Ancelotti</h3>
                                        <div class="author d-flex align-items-center">
                                            <div class="img mb-2 mr-3">
                                                <img src="images/Fabrizio.jpg" alt="">
                                            </div>
                                            <div class="text">
                                                <h4>Fabrizio Romano</h4>
                                                <span>Nov 4, 2024 &bullet; Sports</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section bg-dark">
                <div class="container">
                    <div class="row">                    
                        <div class="col-lg-6">
                            <div class="widget-next-match">
                                <div class="widget-title">
                                    <h3>Next Match</h3>
                                </div>
                                <div class="widget-body mb-3">
                                    <div class="widget-vs">
                                        <div
                                            class="d-flex align-items-center justify-content-around justify-content-between w-100">
                                            <div class="team-1 text-center">
                                                <img src="images/logo_1.png" alt="Image">
                                                <h3>Football League</h3>
                                            </div>
                                            <div>
                                                <span class="vs"><span>VS</span></span>
                                            </div>
                                            <div class="team-2 text-center">
                                                <img src="images/logo_2.png" alt="Image">
                                                <h3>Soccer</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center widget-vs-contents mb-4">
                                    <h4>World Cup League</h4>
                                    <p class="mb-5">
                                        <span class="d-block">December 20th, 2020</span>
                                        <span class="d-block">9:30 AM GMT+0</span>
                                        <strong class="text-primary">New Euro Arena</strong>
                                    </p>

                                    <div id="date-countdown2" class="pb-1"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">

                            <div class="widget-next-match">
                                <table class="table custom-table">
                                    <thead>
                                        <tr>
                                            <th>P</th>
                                            <th>Team</th>
                                            <th>W</th>
                                            <th>D</th>
                                            <th>L</th>
                                            <th>PTS</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><strong class="text-white">Football League</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><strong class="text-white">Soccer</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><strong class="text-white">Juvendo</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><strong class="text-white">French Football League</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><strong class="text-white">Legia Abante</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td><strong class="text-white">Gliwice League</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td><strong class="text-white">Cornika</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td><strong class="text-white">Gravity Smash</strong></td>
                                            <td>22</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>140</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div> <!-- .site-section -->   

            
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
        
        <!-- .site-wrap -->
        <script>
            function scrollToDiv() {
                var element = document.getElementById("divId");
                element.scrollIntoView({ behavior: 'smooth' });
            }
        </script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.mb.YTPlayer.min.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>