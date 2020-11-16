<?php
	/* php-html 연동 */
	$userID = $_POST["userID"];
	$userPASSWORD = $_POST["userPASSWORD"];
	// GET 방식의 보안성 문제로 POST 방식 사용
	
	echo "전달 받은 아이디 :" , $userID, "<br>";
	echo "전달 받은 비밀번호 :" , $userPASSWORD, "<br>"; 

	/* php-mysql 연동 */
	$con=mysqli_connect("localhost","TestUSER","1234") or die("MySQL 접속 실패");
	if(mysqli_connect_error($con)){
		echo "mysql 접속 실패" , "<br>";
		echo "오류 : " , mysqli_connect_error();
		exit();
	}
	echo "mysql 접속 성공";
    mysqli_close($con);
?>
