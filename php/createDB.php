<?php
	/* php-mysql 연동 */
	$con=mysqli_connect("localhost","TestUSER","1234") or die("MySQL 접속 실패");
	
	$DBname = $_POST["DBname"];	
	
	/* DataBase 생성 */
	$sql = "CREATE DATABASE"." ".$DBname;
	$ret = mysqli_query($con,$sql);
	if($ret){
		echo $DBname." "."DB 생성 성공","<br>";
		
		/* Using Session or Cookie for data transmission 
		 
			1. Session : store data in Server
				session_start();
				$_SESSION['NAME'] = $DBname;
		 
			2. Cookie : store data in Client 
				setcookie('NAME',variable);
		*/
		setcookie('DBname',$DBname);
		echo "<A HREF='createTB.php'>--테이블 만들기--</A>";	
	}
	else{
		echo $DBname."DB 생성 오류 : " , mysqli_error($con) , "<br>";
	}
	
    mysqli_close($con);
?>
