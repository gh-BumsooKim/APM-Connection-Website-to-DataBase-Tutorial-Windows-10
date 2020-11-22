<?php
	/* php-mysql 연동 */
	$con=mysqli_connect("localhost","TestUSER","1234") or die("MySQL 접속 실패");
	if(mysqli_connect_error($con)){
		echo "mysql 접속 실패" , "<br>";
		echo "오류 : " , mysqli_connect_error() , "<br>";
		exit();
	}
	
	$DBname = $_POST["DBname"];
	
	/* DataBase 생성 */
	$sql = "CREATE DATABASE"." ".$DBname;
	$ret = mysqli_query($con,$sql);
	if($ret){
		echo "TestDB 생성" , "<br>";
	}
	else{
		echo "오류 : " , mysqli_error($con) , "<br>";
	}
	
    mysqli_close($con);
?>
