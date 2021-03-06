<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/include/header.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>添加模板</title>
		<link rel="stylesheet" type="text/css" media="screen" href="<%=contextPath%>/back/style/css_body.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="<%=contextPath%>/uploadify/uploadify.css" />	
		<script type="text/javascript" src="<%=contextPath%>/uploadify/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/back/script/jQueryValidate/jquery.validate.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/uploadify/swfobject.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/uploadify/jquery.uploadify.v2.1.4.js"></script>
		<script type="text/javascript" src="/kindeditor/call_back_kindeditor.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/back/script/calendar/WebCalendarMore.js"></script>
	</head>
<body>
	<table width="100%" border="0" cellspacing="0"  cellpadding="0" class="lists">
		<tr>
			<td class="td_wid_l"><img src="<%=contextPath%>/back/images/tab_03.gif" /></td>
			<td class="lists_top">
			<font class="lists_fleft">添加模板</font>
			</td>
			<td class="td_wid_r"><img src="<%=contextPath%>/back/images/tab_07.gif" /></td>
		</tr>
		<tr>
			<td class="lists_bor"></td>
			<td>
					<s:form  action="/feed/template!templateAdd.action" onsubmit="return templateSubmit();" method="post">
								<table width="100%" border="1" bordercolor="#00ccff" style="border-collapse: collapse;font-size: 12px;">
									<tr id="regularlySent">
										<td  width="6%" align="center">
											模板名称:
										</td>
										<td class="lists_tleft">
											<input type="text" maxlength="50" name="template.name" size="50" id="name" style="height: 20px;"/>
										</td>
									</tr>
									<tr>
										<td  align="center">
											模板内容:
										</td>
										<td class="lists_tleft">
											<textarea  name="template.content" id="content" cols="80" rows="8"></textarea>
										</td>
									</tr>
									<tr>
										<td  align="center">
											模板备注:
										</td>
										<td class="lists_tleft">
											<textarea  name="template.remark" id="remark" cols="80" rows="4"></textarea><font color="red">(限制长度100个字以内)</font> 
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<span style="padding-left: 350px;">
												<input type="submit"  value="提  交" />
												&nbsp;<input type="reset" value="重  置"/>
											</span>
										</td>
									</tr>
								</table>
						</s:form>
			</td>
			<td class="lists_tright lists_bor2"></td>
		</tr>
		<tr>
			<td class="td_wid_l">
				<img src="<%=contextPath%>/back/images/tab_18.gif" />
			</td>
			<td class="lists_bottom"></td>
			<td class="td_wid_r">
				<img src="<%=contextPath%>/back/images/tab_20.gif" />
			</td>
		</tr>
	</table>
</body>
</html>
<script  type="text/javascript">
    //提交模板
	function templateSubmit(){
		var name = $("#name").val();
		if($.trim(name) == ""){
			alert("模板名称不能为空！");
			return false;
		}
	    var content = $("#content").val();
	    if($.trim(content) == ""){
			alert("模板内容不能为空！");
			return false;
		}
	    var remark = $("#remark").val();
	    if($.trim(remark) != ""){
			if(remark.length>100){
				alert("备注长度太长,请重新输入！");
				return false;
			}
		}
		return true;
	}
</script>
