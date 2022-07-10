<?php

$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
$query_danhmuc = mysqli_query($mysqli, $sql_danhmuc);


?>
<?php
if (isset($_GET['dangxuat']) && $_GET['dangxuat'] == 1) {
	unset($_SESSION['dangky']);
}
?>
<div id="admin-heading-panel">
	<div class="contai">
		<div class="left-panel">
			<i class="fas fa-envelope"></i> nhom6@gmail.com -
			<i class="fas fa-phone-alt"></i> 0962427xxx
		</div>
		<div class="right-panel">
			<i class="user fas fa-user"></i>
			<?php
			if (isset($_SESSION['dangky'])) {

			?>
				<a href="index.php?dangxuat=1">Đăng xuất</a>
				<a href="index.php?quanly=thaydoimatkhau">Thay đổi mật khẩu</a>
			<?php
			} else {
			?>
				<a href="index.php?quanly=dangky">Đăng ký /</a>
				<a href="index.php?quanly=dangnhap">Đăng nhập</a>
			<?php
			}
			?>
		</div>
	</div>
</div>