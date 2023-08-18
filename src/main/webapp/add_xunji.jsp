<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学籍信息</title>
<style type="text/css">
	div{
  text-align: center;
  border-radius: 25px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 500px;
  height: 650px;
  margin-top: 0%;
  margin-left: 35%;
  opacity: 0.9;
}
input{
  width: 100%;
  padding: 12px 20px;
  margin: 3px 0;
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
input[type=result] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
</style>
<script type="text/javascript">
	function check(form){
		with(form){
			/* if(name.value == ""){
				alert("id名称不能为空");
				return false;
			} */
			if(xuehao.value == ""){
				alert("学号不能为空");
				return false;
			}
			 if(name1.value == ""){
				alert("姓名不能为空");
				return false;
			}
			if(sex.value==""){
				alert("性别不能为空");
				return false;
			}
			if(age.value==""){
				alert("年龄不能为空")；
				return false；
			}
			if(banji_id.value==""){
				alert("班级不能为空")；
				return false；
			}
			if(ruxueshijian.value==""){
				alert("入学时间不能为空")；
				return false；
			}
			if(biyeshijian.value==""){
				alert("毕业时间不能为空")；
				return false；
			}
			if(xuezhi.value==""){
				alert("年龄不能为空")；
				return false；
			}
			if(xuexiao.value==""){
				alert("学校不能为空")；
				return false；
			} 
			return true;
		}
	}
</script>
</head>
<body>
<div>
	<form action="addadd_xueji.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加学籍信息</h2>
					<hr>
				</td>
			</tr>
			
			<tr>
				<td align="right">学号</td>
				<td><input type="text" name="xuehao"/></td>
			</tr>
			<tr>
				<td align="right">姓名</td>
				<td><input type="text" name="name1"/></td>
			</tr>
			<tr>
				<td align="right">性别</td>
				<td><input type="text" name="sex"/></td>
			</tr>
			<tr>
				<td align="right">年龄</td>
				<td><input type="text" name="age"/></td>
			</tr>
			<tr>
				<td align="right">班级</td>
				<td><input type="text" name="banji_id"/></td>
			</tr>
			<tr>
				<td align="right">入学时间</td>
				<td><input type="text" name="ruxueshijian"/></td>
			</tr>
			<tr>
				<td align="right">毕业时间</td>
				<td><input type="text" name="biyeshijian"/></td>
			</tr>
			<tr>
				<td align="right">学制</td>
				<td><input type="text" name="xuezhi"/></td>
			</tr>
			<tr>
				<td align="right">学校</td>
				<td><input type="text" name="xuexiao"/></td>
			</tr>
		
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添　加">
					<input type="reset" value="重  置">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>