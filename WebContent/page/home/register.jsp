<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
	<div class="container" style="margin-top: 60px">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-plus"></span>&nbsp;注册
						</h3>
					</div>
					<div class="panel-body">
						<fieldset>
							<div class="form-group">
								<label for="input_name"><span
									class="glyphicon glyphicon-user"></span>&nbsp;账号</label> <input
									type="text" class="form-control input" placeholder="" autofocus
									name="userName" id="userName" onblur="checkUserName(this)" maxlength="15">
								<span id="tip" style="color: red; font-weight: bold"></span>
							</div>
							<div class="form-group">
								<label for="input_email"><span
									class="glyphicon glyphicon-lock"></span>&nbsp;密码 </label> <input
									type="password" class="form-control" placeholder="" name="password"
									id="password" maxlength="20">
							</div>
							<div class="form-group">
								<label for="input_email"><span
									class="glyphicon glyphicon-lock"></span>&nbsp;确认密码 </label> <input
									type="password" class="form-control" placeholder=""
									name="pwd_sure" id="pwd_sure" maxlength="20">
							</div>
							<div class="form-group">
								<label for="input_phone"><span
									class="glyphicon glyphicon-phone"></span>&nbsp;手机号</label> <input
									class="form-control" placeholder="" name="phone" type="text"
									id="phone" maxlength="11">
							</div>
							<div class="form-group">
								<label for="input_password"><span
									class="glyphicon glyphicon-lock"></span>&nbsp;验证码</label>
								<div class="input-group">
									<input type="text" class="form-control" placeholder=""
										id="codeInput" maxlength="6"> <span class="input-group-addon">
										<input
										type="button" value="获取验证码" onclick="sendCode(this)" style="border:none"></span>
								</div>
							</div>
								<div class="form-group">
								<label for="input_password"></label>
									已有账号，请直接<a href="<%=path%>/page/home/login.jsp">登录</a>！
								</div>
							<div class="col-md-12">
								<input type="submit" value="注册"
									class="btn btn-log btn-primary btn-block" onclick="register();">
							</div>
							
						</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous">
	
</script>
<script>
var code = "";
var nameIsOk = false;
var codeIsOK = false;
	//检查账号是否已经存在
	function checkUserName(input) {
		//alert(input.value);
		var name = input.value;
		$.post("<%=path%>/checkUserName.action", {
			userName : name
		}, function(data) {
			//alert(data);
			if (data == 1) {
				$('#tip').html("当前账号已经存在！");
				nameIsOk = false;
			} else {
				$('#tip').html("");
				nameIsOk = true;
			}
		});
	}
	//生成随机验证码
	function createCode(sum) {
		code = "";
		for (var i = 0; i <sum; i++) {
			var num = parseInt(Math.random() * 10) % 10;
			code += num;
		}
		return code;
	}
	//发送随机验证码给短信服务商
	function sendCode(input) {
		var phone = $("#phone").val();
		var pattern = /^1[34578]\d{9}$/;
		if(phone==""||phone==null||!pattern.test(phone)){
			alert("手机号为空或格式错误!");
			return;
		}else{
			input.setAttribute("disabled", "disabled");
			var count = 60;
			var time = setInterval(function(){
				input.value=count+"s";
				count--;
				if(count<0){
					input.removeAttribute("disabled");
					clearInterval(time);
					input.value="发送";
				}
			},1000);
			//生成6位验证码
			var code = createCode(6);
			//alert(code);
			$.post("<%=path%>/sendCode.action", {
				phone : phone,
				code : code
			}, function(data) {

			});
		}
	}
	//注册功能实现
	function register() {
		var userName = $("#userName").val();
		var password = $("#password").val();
		var pwd_sure = $("#pwd_sure").val();
		var phone = $("#phone").val();
		var codeInput = $("#codeInput").val();
		var pattern = /^1[34578]\d{9}$/;
		if($.trim(userName)==""||userName==null){
			alert("用户名不能为空！");
			return;
		}else if(password==""||password==null){
			alert("密码不能为空！");
			return;
		}else if(password.length<6){
			alert("密码至少6位！");
			return;
		}
		else if(pwd_sure==""){
			alert("确认密码不能为空!");
			return;
		}
		else if(password != pwd_sure){
			alert("两次输入密码不一致！");
			return;
		}else if(phone==""||phone==null){
			alert("手机号码不能为空!");
			return;
		}
		else if(!pattern.test(phone)){
			alert("手机号格式不正确！");
			return;
		}else if(codeInput==""||codeInput==null){
			alert("验证码不能为空！");
			return;
		}
		if(code == codeInput){
			//alert("验证码输入正确！");
			codeIsOK = true;
			//alert(codeIsOK);
		}else{
			alert("验证码输入错误！");
			codeIsOK = false;
		}
		//alert(nameIsOk);
		//alert(codeIsOK);
		if(nameIsOk==true&&codeIsOK==true){
			//alert(1);
			$.post("<%=path%>/addUser.action", {
				userName:userName,
				password : password,
				phone : phone
			},function(data){
				//alert(data);
				if(data==1){
					alert("注册成功！");
					window.location.href="<%=path%>/page/home/login.jsp";
				}else{
					alert("注册失败！");
				}
			});
		}
	}
	//键盘回车提交表单
	/*
	$(document).ready(function() {
		$(document).keydown(function(event) {
			if (event.keycode == 13) {
				register();
			}
		})
	})
	*/
</script>
</html>