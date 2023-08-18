<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
<style>
div{
  text-align: center;
  border-radius: 25px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 500px;
  height: 500px;
  margin-top: 8%;
  margin-left: 60%;
  opacity: 0.9;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}	
    body {
        background-image: url('image/wallhaven1.png');
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<script type="text/javascript">
function validateForm() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var role = document.getElementById("role").value;
    if (username == "" || password == "") {
        document.getElementById("error-message").innerHTML = "账号和密码不能为空";
        return false;
    }
    if (role == "teacher") {
        window.location.href = "index_teacher.jsp?role=teacher";
    } else if (role == "student") {
        window.location.href = "index_student.jsp?role=student";
    }
    return false;
}
</script>
</head>
<body>

<div class="login" >
		<h1>登录页面</h1>
	<form id="login-form" onsubmit="return validateForm()" action="login_handler.jsp" method="post">
		<label for="username">账号:</label>
		<input type="text" id="username" name="username"><br><br>
		<label for="password">密码:</label>
		<input type="password" id="password" name="password"><br><br>
		<label for="role">身份选择:</label>
		<select id="role" name="role" class="role">
			<option value="teacher">老师</option>
			<option value="student">学生</option>
		</select><br><br>
		<input type="submit" value="登录">
	</form>
	<span id="error-message"></span>
</div>
</body>
</html>