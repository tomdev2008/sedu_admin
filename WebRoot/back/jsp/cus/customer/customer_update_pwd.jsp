<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>修改密码</title>
<link rel="stylesheet" type="text/css" media="screen"	href="<%=contextPath%>/back/style/css_body.css" />
<script type="text/javascript" src="<%=contextPath%>/back/script/jquery-1.3.2.js"></script> 
<script type="text/javascript" src="<%=contextPath%>/back/script/jQueryValidate/jquery.validate.js"></script>
<script type="text/javascript" src="<%=contextPath%>/back/script/jQueryValidate/localization/messages_cn.js" ></script>
<script type="text/javascript" src="<%=contextPath%>/back/script/jQueryValidate/lib/jquery.metadata.js" ></script>
<script type="text/javascript">
	$().ready(function() {
		jQuery.extend(jQuery.validator.messages, { 
  			equalTo : "两次密码输入不一致"
		}); 
			$("#updateForm").validate();
		});
		function updateMD5Pwd()
		{
			document.updateForm.action="<%=contextPath %>/cus/cus!updateMD5Pwd.action";
			document.updateForm.submit();
		}
</script>
</head>
<body>
<div>
	<form action="<%=contextPath %>/cus/cus!updatePwd.action" method="post" name="updateForm" id="updateForm">
	<table width="100%" border="0" cellspacing="0"  cellpadding="0" class="lists">
		<tr >
			<td class="td_wid_l">
			<img src="<%=contextPath%>/back/images/tab_03.gif" />
			</td>
			<td class="lists_top">
				<font class="lists_fleft">修改密码</font>
				<font class="lists_fright">
				</font>
			</td>
			<td class="td_wid_l">
			<img src="<%=contextPath%>/back/images/tab_07.gif" />
			</td>
		</tr>
		<tr>
			<td width="12"  class="lists_bor">
			</td>
			<td>
			<table width="100%" border="0" cellspacing="1" cellpadding="0" class="lists_info">
				<tr>
					<td>
						<font color="red">*</font>密码
					</td>
					<td class="lists_tleft">
						<input type="password" name="newPwd" id="newPwd" class="{required:true,minlength:6,maxlength:20}" />						
					</td>
				</tr>				
				<tr>
					<td colspan="2">
						<input type="hidden" name="customer.cusId" value="<s:property value="customer.cusId" />"/>
						<input type="submit" value="修改"/><input type="button" value="返回" onclick="history.go(-1)"></input>
					</td>
				</tr>
				<tr>
				<td>
					加密密码
				</td>
				<td class="lists_tleft">
				
					<input type="text" name="newMD5Pwd" value="<s:property value="customer.cusPwd"/>"/>
				</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="修改" onclick="updateMD5Pwd()" /><input type="button" value="返回" onclick="history.go(-1)"></input>
					</td>
				</tr>
			</table>
			</td>
			<td width="16" class="lists_tright lists_bor2">
			</td>
		</tr>
		<tr>
			<td>
				<img src="<%=contextPath%>/back/images/tab_18.gif" />
			</td>
			<td class="lists_bottom">
			</td>
			<td>
				<img src="<%=contextPath%>/back/images/tab_20.gif" />
			</td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>
