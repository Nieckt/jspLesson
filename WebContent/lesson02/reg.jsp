
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />


</head>
<script>
	function checkForm() {
		var emailName = document.getElementsByName("emailName")[0].value;
		if(emailName == null || emailName == "") {
			alert("邮箱地址不能为空");
			return;
		}
		
		var mainPassword = document.getElementsByName("mainPassword")[0].value;
		var mainConfirmPassword = document.getElementsByName("mainConfirmPassword")[0].value;
		var regexPassword = /[a-zA-Z][0-9]{5,17}/;
		
		if(!regexPassword.test(mainPassword)) {
			alert("密码以字母开头不能少于6位");
			return;
		}
		
		if(mainPassword==null || mainPassword==""){
			alert("密码不能为空");
			return;
		}
		
		if(mainConfirmPassword==null || mainConfirmPassword==""){
			alert("确认密码不能为空");
			return;
		}
		
		if(mainPassword != mainConfirmPassword) {
			alert("两次输入密码不一致");
			return;
		}
		
		var phoneNumber = document.getElementsByName("phoneNumber")[0].value;
		var regex = /^[0-9]{11}$/;
		if(!regex.test(phoneNumber)) {
			alert("请输入11位手机号码");
			return;
		}
		document.forms[0].submit();
	}
</script>
<style>
.regForm {
	padding-top: 50px;
}

.regForm-item-tit {
	width: 90px;
}

.regForm-item-ct {
	padding-left: 110px;
	margin-top: -18px;
}

.vCodeArea-big .switchvCode {
	left: 325px
}

.tongyi {
	padding-top: 5px;
}

.mainBody-wp {width =500px;height =800px;
	margin-left: 500px;;
}
</style>
<form action="suc.jsp" method="post">
	<div id="mMaskD" class="mainBody-wp">
		<div class="m-mask" style="display: none;"></div>
		<div class="mainBody">
			<div id="regMain" class="regForm">
				<dl id="nameDl" class="regForm-item mainBody-hasFocus-focusArea">
					<dt class="regForm-item-tit">
						<span class="txt-impt">*</span>邮件地址
					</dt>
					<dd class="regForm-item-ct">
						<input onfocus="HGW(this);" onblur="SGW(this);" id="nameIpt"name="emailName" type="text" class="ipt"style="ime-mode: disabled; color: #999; font-weight: normal"autocomplete="off" value="" /> <strong class="txt-14">@</strong>
						<select name="emailDomain" id="mainDomainSelect" tabindex="-1">
							<option selected="selected" value="0">163.com</option>
							<option value="1">126.com</option>
							<option value="2">yeah.net</option>
						</select>


					</dd>
				</dl>
				<dl id="mainPwdDl" class="regForm-item">
					<dt class="regForm-item-tit">
						<span class="txt-impt">*</span>密码
					</dt>
					<dd class="regForm-item-ct">
						<input id="mainPwdIpt" name="mainPassword" type="password"
							class="ipt norWidthIpt" style="ime-mode: disabled" />
					</dd>
				</dl>
				<dl id="mainCfmPwdDl" class="regForm-item">
					<dt class="regForm-item-tit">
						<span class="txt-impt">*</span>确认密码
					</dt>
					<dd class="regForm-item-ct">
						<input id="mainCfmPwdIpt" name="mainConfirmPassword"
							type="password" class="ipt norWidthIpt"
							style="ime-mode: disabled" />
					</dd>
				</dl>

				<dl id="mainCfmPwdDl" class="regForm-item">
					<dt class="regForm-item-tit">
						<span class="txt-impt">*</span>性别
					</dt>
					<dd class="regForm-item-ct">
						男<input id="mainCfmPwdIpt" name="sex" type="radio" value="1" checked="checked"/> 
						女<input id="mainCfmPwdIpt" name="sex" type="radio" value="2"/>
					</dd>
				</dl>

				<dl id="mainCfmPwdDl" class="regForm-item">
					<dt class="regForm-item-tit">
						<span class="txt-impt">*</span>爱好
					</dt>
					<dd class="regForm-item-ct">
						打篮球<input id="mainCfmPwdIpt" name="hobby" type="checkbox" value="1" /> 
						看电影<input id="mainCfmPwdIpt" name="hobby" type="checkbox" value="2" />
						听音乐<input id="mainCfmPwdIpt" name="hobby" type="checkbox" value="3" />
					</dd>
				</dl>

				<dl id="mainCfmPwdDl" class="regForm-item">
					<dt class="regForm-item-tit">
						<span class="txt-impt">*</span>出生日期
					</dt>
					<dd class="regForm-item-ct">
						<input name="bornDate" type="date"
							class="ipt norWidthIpt" style="ime-mode: disabled" />
					</dd>
				</dl>

				<dl id="mainCfmPwdDl" class="regForm-item">
					<dt class="regForm-item-tit">
						<span class="txt-impt">*</span>电话号码
					</dt>
					<dd class="regForm-item-ct">
						<input id="mainCfmPwdIpt" name="phoneNumber" type="txt"
							class="ipt norWidthIpt" style="ime-mode: disabled" />
					</dd>
				</dl>

				<div class="tongyi">
					<dl id="mainAcceptDl" class="regForm-item">
						<dd class="regForm-item-ct txt-tips">
							<label></label><input id="mainAcceptIpt" type="checkbox"
								checked="checked" tabindex="-1" /> 同意
				</div>
				</dd>
				</dl>
			</div>

			<div class="tongyi">
				<dl class="regForm-item">
					<dd class="regForm-item-ct">
						<a id="mobileRegA" href="javascript:checkForm()"; class="btnReg">立即注册</a>
					</dd>
				</dl>
			</div>
		</div>
</form>
</body>
</html>