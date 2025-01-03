<%@ page pageEncoding="UTF-8" contentType="text/html; charset = UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <style>
            .banner {
                background: url('img_nam/giaidaubanner.jpg') no-repeat center center;
                background-size: cover;
                height: 300px;
                position: relative;
            }
            .register-button {
                position: absolute;
                top: 50%;
                right: 15px;
                transform: translateY(-50%);
            }
            .tournament-item {
                margin-bottom: 30px;
            }
            .tournament-item img {
                width: 100%;
                height: 180px; /* Fixed height for uniformity */
                object-fit: cover; /* Ensures images cover the area nicely */
                border-radius: 5px;
            }
            .tournament-name {
                text-align: center;
                margin-top: 10px;
                font-weight: bold;
                font-size: 24px; /* Adjust the font size as desired */
                color: #007bff; /* Change the color if needed */
                padding: 5px;
                border-bottom: 2px solid #007bff; /* Adds an underline effect */
                display: inline-block;
            }
            .advert-banner {
                background-color: #f8f9fa; /* Placeholder color */
                border: 1px solid #ddd;
                height: 100vh; /* Full height of the viewport */
                position: sticky;
                top: 0;
            }
            /* Responsive adjustments */
            @media (max-width: 991.98px) {
                .advert-banner {
                    height: 300px; /* Adjust height for smaller screens */
                    margin-bottom: 20px;
                }
            }
            .tournament-info p {
                font-family: 'Nunito', sans-serif; /* Use the font you included */
                font-size: 16px; /* Adjust the font size as needed */
                line-height: 1.6; /* Gives a little more space between lines */
                color: #333; /* A dark grey that's softer than black */
                text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.1); /* A subtle text shadow for depth */
                margin-bottom: 10px; /* Spacing between paragraphs */
            }

            .tournament-info h3 {
                font-family: 'Rubik', sans-serif; /* Use the font you included */
                font-weight: 700; /* Makes the font bold */
                font-size: 28px; /* A larger font size for headings */
                color: #007bff; /* The primary color for headings */
                margin-bottom: 15px; /* Spacing after the heading */
            }
            .tournament-title-container {
                text-align: center;
                margin: 40px 0;
            }

            .tournament-title {
                display: inline-block;
                color: #2193b0; /* Đây là màu xanh dương đậm */
                font-size: 2.5rem;
                font-weight: bold;
                padding: 0.5em 1em;
                border-radius: 10px;
                box-shadow: 0px 0px 15px rgba(33, 147, 176, 0.7);
            }
            @keyframes textClip {
                to {
                    background-position: 200% center;
                }
            }
            .table-container {
                overflow-x: auto;
                margin-top: 20px;
            }

            .table {
                width: 100%;
                border-collapse: collapse;
                margin: 25px 0;
                font-size: 0.9em;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.03);
                border-radius: 10px;
                overflow: hidden;
            }

            /* Màu cho tiêu đề bảng */
            .table thead tr {
                background-color: #305A72; /* Màu xanh dương đậm */
                color: #FFFFFF;
                text-align: left;
                font-weight: bold;
            }

            /* Màu cho các hàng trong bảng */
            .table tbody tr {
                border-bottom: thin solid #dddddd;
            }

            .table tbody tr:nth-of-type(even) {
                background-color: #f3f3f3;
            }

            .table tbody tr:last-of-type {
                border-bottom: 2px solid #305A72;
            }

            /* Màu cho hàng được hover */
            .table tbody tr:hover {
                background-color: #f1f1f1;
            }

            /* Màu cho nút */
            .button {
                background-color: #4CAF50; /* Màu xanh lá */
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }

            /* Màu khi hover nút */
            .button:hover {
                background-color: #45a049;
            }

            /* Thêm hiệu ứng transition cho nút */
            .button {
                transition: all 0.3s ease;
            }
            .error-message {
                color: red;
                display: none;
            }
        </style>
    </head>

    <body>

        <!-- Navbar & Carousel End -->
        <!--Content start-->
        <div class="container-fluid">
            <div class="row">
                <!-- Left advertising banner -->
                <jsp:include page="quangcaotrai_nam.jsp"/>

                <!-- Main content -->
                <div class="col-md-10">
                    <div class="banner">
                        <form action="./HistoryServlet" method="get">
                            <input class="btn btn-primary register-button animate__animated animate__bounceIn" value="Giải đấu đã đăng ký" type="submit">
                        </form>
                    </div>
                    <!--onclick="redirectToPage()"-->
                    <script>
                        function redirectToPage() {
                            window.location.href = "giaidaudadangky_nam.jsp";
                        }
                    </script>
                    <div class="tournament-title-container">
                        <h2 class="tournament-title animate__animated animate__pulse">${name}</h2>
                    </div>

                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-md-6">
                                <img src="img_nam/${tournament.image}" alt="Ảnh Giải đấu" class="img-fluid">
                            </div>
                            <div class="col-md-6">
                                <form id="registrationForm" action="RegisterTournamentOfYear" method="post">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <th>Tên Đội Bóxmcnkdnzkxcng</th>
                                                <td><input name="teamName" type="text" required/></td>
                                            </tr>
                                            <tr>
                                                <th>Tên người đại diện</th>
                                                <td><input name="name" type="text" value="${user.name}" readonly/></td>
                                            </tr>
                                            <tr>
                                                <th>Số Điện Thoại</th>
                                                <td>
                                                    <input name="teamDetail" id="phoneNumber" type="text" required>
                                                    <div class="error-message">Số điện thoại không hợp lệ.</div>
                                                </td>
                                            </tr>
                                            <tr></tr>

                                        </tbody>
                                    </table>
                                    <input name="tournamentID" value="${tournamentID}" type="hidden"/>
                                    <input class="btn btn-primary" value="Xác Nhận" type="submit">
                                </form>


                                <!--<button class="btn btn-primary" onclick="confirmRegistration()">Xác Nhận</button>-->

                            </div>
                        </div>
                    </div>

                    <script>
                        function confirmRegistration() {
                            var confirmResult = confirm("Bạn đã chắc chắn xác nhận tham gia giải đấu?");
                            if (confirmResult) {
                                // Logic để xử lý xác nhận tham gia giải đấu
                                // Có thể là gửi dữ liệu đến server hoặc chuyển hướng người dùng đến trang khác
                                alert("Bạn đã xác nhận tham gia giải đấu.");
                            }
                        }
                    </script>
                    <script>
                        function validatePhoneNumber() {
                            var phoneNumberInput = document.getElementById('phoneNumber');
                            var phoneNumberError = document.getElementById('phoneNumber').nextElementSibling;

                            var phoneNumber = phoneNumberInput.value.trim();

                            // Regular expression for Vietnamese phone numbers
                            var phoneNumberPattern = /^([0-9]{9,10})$/;

                            if (!phoneNumberPattern.test(phoneNumber)) {
                                phoneNumberError.style.display = 'block';
                                return false;
                            } else {
                                phoneNumberError.style.display = 'none';
                                return true;
                            }
                        }

                        // Add form submission event listener
                        document.getElementById('registrationForm').addEventListener('submit', function (event) {
                            if (!validatePhoneNumber()) {
                                event.preventDefault(); // Prevent form submission if validation fails
                            }
                        });
                    </script>
                    <!-- Tournament image and introduction -->

                </div>
                <!-- Right advertising banner -->
                <jsp:include page="quangcaophai_nam.jsp"/>
            </div>
        </div>
        <script src="js/script.js"></script>
        <!--Content end-->
        


        <!-- Back to Top -->
        <a href="timsan_nhat.jsp" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


        <!-- JavaScript Libraries -->
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