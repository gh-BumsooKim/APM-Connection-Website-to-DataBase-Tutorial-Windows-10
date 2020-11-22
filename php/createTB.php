<?php
	/* php-mysql 연동 */
	$con=mysqli_connect("localhost","TestUSER","1234") or die("MySQL 접속 실패");
	
	/* Using Session or Cookie for data receive 
		 
		1. Session : store data in Server
			session_start();
			echo $_SESSION['NAME'];
		 
		2. Cookie : store data in Client 
			echo $_COOKIE['NAME']; 
	*/
	echo $_COOKIE['DBname'];
	
	mysqli_close($con);
?>