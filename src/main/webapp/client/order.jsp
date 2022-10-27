<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>Car Booking</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/linearicons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/jquery-ui.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/animate.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/main.css">
        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/jquery.seat-charts.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/stylechoosecar.css">
        <style>
            .gradient-custom {
                /* fallback for old browsers */
                background: #cd9cf2;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to top left, rgba(205, 156, 242, 1), rgba(246, 243, 255, 1));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to top left, rgba(205, 156, 242, 1), rgba(246, 243, 255, 1))
            }
        </style>
    </head>

    <body>
        <header id="header">
            <jsp:include page="menu.jsp"></jsp:include>
            </header><!-- #header -->

            <!-- start banner Area -->
            <section class="about-banner relative">
                <div class="overlay overlay-bg"></div>
                <div class="container">
                    <div class="row d-flex align-items-center justify-content-center">
                        <div class="about-content col-lg-12">
                            <h1 class="text-white">
                                Order
                            </h1>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End banner Area -->

            <!-- Start Order Area -->
            <section class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-10 col-xl-8">
                            <div class="card" style="border-radius: 10px;">
                                <div class="card-header px-4 py-5">
                                    <h5 class="text-muted mb-0">Thanks for your Order, <span style="color: #a8729a;">Stress Team</span>!</h5>
                                </div>
                                <div class="card-body p-4">
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <p class="lead fw-normal mb-0" style="color: #a8729a;">Receipt</p>
                                        <!-- <p class="small text-muted mb-0">Receipt Voucher : 1KAU9-84UIL</p> comment -->
                                    </div>
                                    <div class="card shadow-0 border mb-4">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <img src="https://w7.pngwing.com/pngs/255/160/png-transparent-tourist-bus-bus-cycling-tourism.png"
                                                         class="img-fluid" alt="Phone">
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0">${requestScope.TRIP.route.routeName}</p>
                                            </div>
                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                <p class="text-muted mb-0 small">${requestScope.TRIP.startTime}</p>
                                            </div>
                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                <p class="text-muted mb-0 small">${requestScope.TRIP.startDateTime}</p>
                                            </div>
                                        </div>
                                        <hr class="mb-4" style="background-color: #e0e0e0; opacity: 1;">
                                        <div class="row d-flex align-items-center">
                                            <div class="col-md-2">
                                                <p class="text-muted mb-0 small">Track Order</p>
                                            </div>
                                            <div class="col-md-10">
                                                <div class="progress" style="height: 6px; border-radius: 16px;">
                                                    <div class="progress-bar" role="progressbar"
                                                         style="width: 100%; border-radius: 16px; background-color: #a8729a;" aria-valuenow="65"
                                                         aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="d-flex justify-content-around mb-1">
                                                    <p class="text-muted mt-1 mb-0 small ms-xl-5">Out for delivary</p>
                                                    <p class="text-muted mt-1 mb-0 small ms-xl-5">Delivered</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-between pt-2">
                                    <p class="fw-bold mb-0">Order Details</p>

                                </div>

                                <!-- comment <div class="d-flex justify-content-between pt-2">
                                    <p class="text-muted mb-0">Invoice Number : 788152</p>
                                    <p class="text-muted mb-0"><span class="fw-bold me-4">Discount</span> $19.00</p>
                                </div>
                                -->
                                <div class="d-flex justify-content-between">
                                    <p class="text-muted mb-0">Price Before Tax</p>
                                    <p class="text-muted mb-0"><span class="fw-bold me-4">${requestScope.PRICE}</span></p>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <p class="text-muted mb-0">Invoice Date</p>
                                    <p class="text-muted mb-0"><span class="fw-bold me-4">${requestScope.ORDER.createDate}</span></p>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <p class="text-muted mb-0">Ticket Quantity </p>
                                    <p class="text-muted mb-0"><span class="fw-bold me-4">${requestScope.QUANTITY}</span></p>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <p class="text-muted mb-0">Taxes </p>
                                    <p class="text-muted mb-0"><span class="fw-bold me-4">${requestScope.PRICE * 0.1}</span></p>
                                </div>

                                <div class="d-flex align-items-center justify-content-between card-footer border-0 px-4 py-5">
                                    <div class="d-flex flex-column align-items-start">
                                        <!--//
                                        
                                        <button style="width: 200px; margin-bottom: 10px; background-color: white; padding: 5px; border-radius: 10px">
                                            <img width="100px" src="data:image/png;base64,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" alt="alt"/>
                                        </button>
                                        --> 
                                        <c:if test="${sessionScope.LOGIN_USER.accountBalance >= requestScope.PRICE}"> 
                                            <form action="${pageContext.request.contextPath}/book" method="POST">
                                                <button style="width: 200px; margin-bottom: 10px; border-radius: 10px; padding: 5px; background-color: white" type="submit" name="action" value="payingAccount">
                                                    <i class="fas fa-wallet"></i> AccountBalance
                                                </button><br>
                                                <a href="${pageContext.request.contextPath}/MoMoRequest?action=payMoMo&amount=${requestScope.PRICE + (requestScope.PRICE * 0.1)}" style="width: 200px; margin-bottom: 10px; background-color: #dc008a;
                                                        color: white; padding: 12px; border-radius:10px;">
                                                    <img width="30px;" src="https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png" alt="alt"/> 
                                                    Pay via MoMo
                                                </a>
                                                <input type="hidden" value="${requestScope.SEAT_LIST}" name="seatID">
                                                <input type="hidden" value="${requestScope.TRIP.tripID}" name="tripID">
                                                <input type="hidden" value="${requestScope.ORDER.orderID}" name="orderID">
                                                <input type="hidden" value="${requestScope.QUANTITY}" name="quantity">
                                                <input type="hidden" value="${requestScope.PRICE + (requestScope.PRICE * 0.1)}" name="totalPrice">
                                            </form>
                                        </c:if>
                                    </div>
                                    <h5 class="text-uppercase mb-0">Total
                                        paid: <span class="h2 mb-0 ms-2">${requestScope.PRICE + (requestScope.PRICE * 0.1)} VND</span></h5>
                                </div>
                            </div>
                            <div class="card-footer border-0 px-4 py-5"
                                 style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">Total
                                    paid: <span class="h2 mb-0 ms-2">${requestScope.PRICE + (requestScope.PRICE * 0.1)} VND</span></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Order Area -->

        <!-- start footer Area -->
        <footer class="footer-area section-gap">
            <div class="container">

                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>About Agency</h6>
                            <p>
                                The world has become so fast paced that people don’t want to stand by reading a page of
                                information, they would much rather look at a presentation and understand the message. It
                                has come to a point
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>Navigation Links</h6>
                            <div class="row">
                                <div class="col">
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Feature</a></li>
                                        <li><a href="#">Services</a></li>
                                        <li><a href="#">Portfolio</a></li>
                                    </ul>
                                </div>
                                <div class="col">
                                    <ul>
                                        <li><a href="#">Team</a></li>
                                        <li><a href="#">Pricing</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>Newsletter</h6>
                            <p>
                                For business professionals caught between high OEM price and mediocre print and graphic
                                output.
                            </p>
                            <div id="mc_embed_signup">
                                <form target="_blank"
                                      action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                      method="get" class="subscription relative">
                                    <div class="input-group d-flex flex-row">
                                        <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Email Address '" required="" type="email">
                                        <button class="btn bb-btn"><span class="lnr lnr-location"></span></button>
                                    </div>
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget mail-chimp">
                            <h6 class="mb-20">InstaFeed</h6>
                            <ul class="instafeed d-flex flex-wrap">
                                <li><img src="${pageContext.request.contextPath}/client/img/i1.jpg" alt=""></li>
                                <li><img src="${pageContext.request.contextPath}/client/img/i2.jpg" alt=""></li>
                                <li><img src="${pageContext.request.contextPath}/client/img/i3.jpg" alt=""></li>
                                <li><img src="${pageContext.request.contextPath}/client/img/i4.jpg" alt=""></li>
                                <li><img src="${pageContext.request.contextPath}/client/img/i5.jpg" alt=""></li>
                                <li><img src="${pageContext.request.contextPath}/client/img/i6.jpg" alt=""></li>
                                <li><img src="${pageContext.request.contextPath}/client/img/i7.jpg" alt=""></li>
                                <li><img src="${pageContext.request.contextPath}/client/img/i8.jpg" alt=""></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-sm-12 footer-text m-0">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is
                        made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                         target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                    <div class="col-lg-4 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End footer Area -->

        <script src="${pageContext.request.contextPath}/client/js/vendor/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/vendor/bootstrap.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
        <script src="${pageContext.request.contextPath}/client/js/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/easing.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/hoverIntent.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/superfish.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/jquery.ajaxchimp.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/jquery.magnific-popup.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/jquery.nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/mail-script.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/client/js/jquery.seat-charts.js"></script>
        <jsp:include page="/client/seat-script.jsp"></jsp:include>
    </body>

</html>
