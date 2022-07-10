<?php

	$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
	$query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
	
	    		
?>
<?php
	if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangky']);
	} 
?>
<div class="menu">
	<p><a href="index.php"><img src="./images/logo.jpg" alt="Teams Logo" class="img-responsive" width="110px" height="90px"></a></p>
			<ul class="list_menu">
				<li><a href="index.php">TRANG CHỦ</a></li>
				<li><a href="../../webbanhang/admincp/login.php">QUẢN LÝ SẢN PHẨM</a></li>
				<li><a href="index.php?quanly=lienhe">LIÊN HỆ</a></li>
				<li><a href="index.php?quanly=giohang">GIỎ HÀNG</a></li>
			</ul>
		</div>
<div class="container text-center">

            <form action="index.php?quanly=timkiem" method="POST">
					<input type="text" placeholder="Tìm kiếm sản phẩm..." name="tukhoa">
					<input type="submit" name="timkiem" value="Tìm kiếm" class="btn btn-primary">
				</form>

        </div>