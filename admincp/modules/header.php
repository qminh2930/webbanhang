<?php
	if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangnhap']);
		header('Location:login.php');
	}
?>
<section class="navbar">
        <div class="container">
            <div class="logo">
                <a href="#" title="Logo">
                    <img src="../../../webbanhang/images/logo.jpg" height="80" alt="Team Logo" class="img-responsive">
                </a>
            </div>

            <div class="menuu text-right">
                <ul>
                    <li>
                        <img src="../../../webbanhang/images/home.png" height="30"  >
                        <a href="../../../webbanhang/index.php">Trang chủ</a>
                    </li>
                    <li>
                        <img src="../../../webbanhang/images/logout.png" height="30" >
                        <a href="index.php?dangxuat=1">Đăng xuất</a>
                    </li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </section>
