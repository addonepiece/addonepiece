<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>内容管理系统</title>

<script type="text/javascript"
	src="jslib/jquery-easyui-1.5.2/jquery.min.js"></script>
<script type="text/javascript"
	src="jslib/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jslib/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet"
	href="jslib/jquery-easyui-1.5.2/themes/default/easyui.css"
	type="text/css"></link>
<link rel="stylesheet" href="jslib/jquery-easyui-1.5.2/themes/icon.css"
	type="text/css"></link>
</head>

<body class="easyui-layout">
	<div data-options="region:'north',border:false"
		style="height: 60px; background: #B3DFDA; padding: 10px">来个主题图片
	</div>
	<div data-options="region:'west',split:true,title:'新闻公告'"
		style="width: 450px; padding: 10px;">west content</div>
	<div
		data-options="region:'east',split:true,collapsed:false,title:'天气/日历/有情链接'"
		style="width: 300px; padding: 10px;">
		<iframe name="sinaWeatherTool"
			src="http://weather.news.sina.com.cn/chajian/iframe/weatherStyle40.html?city=%E5%B7%B4%E5%BD%A6%E6%B7%96%E5%B0%94"
			width="260" height="113" marginwidth="0" marginheight="0" hspace="0"
			vspace="0" frameborder="0" scrolling="no"> </iframe>

		<div style="margin: 10px 0"></div>
		<div class="easyui-calendar" style="width: 260px; height: 250px;"></div>

		<div style="margin: 10px 0"></div>
		<div class="easyui-panel" title="有情链接"
			style="width: 260px; height: 430px; background: #fafafa;"
			data-options="iconCls:'icon-save',closable:false,
    					  collapsible:true,minimizable:false,maximizable:false">
			<ul>
				<li><a href="http://www.w3school.com.cn" target="_blank"
					style="text-decoration: none;">W3School</a></li>
				<div style="margin: 10px 0"></div>
				<li><a href="http://www.baidu.com" target="_blank"
					style="text-decoration: none;">百度知道</a></li>
				<div style="margin: 10px 0"></div>
				<li><a href="http://www.vsupa.com/" target="_blank"
					style="text-decoration: none;">云算盘智能财税平台</a></li>
				<div style="margin: 10px 0"></div>
				<li><a href="http://www.jeasyui.net/" target="_blank"
					style="text-decoration: none;">Jquery EasyUI中文网</a></li>
			</ul>
		</div>

	</div>

	<div data-options="region:'center',title:'CMS系统登录'">
		<div
			data-options=" region:'east',split:true,style:{position:'absolute',right:50,top:150}"
			class="easyui-panel " title="用户登录"
			style="width: 300px; text-align: center;">
			<div style="padding: 10px 60px 20px 60px">
				<form id="login_form" class="easyui-form" method="post"
					data-options="novalidate:true">
					<table cellpadding="5">
						<tr>
							
							<!-- <td>
								<input type="hidden" id="userId" name="id"></input>
								<input class="easyui-textbox" type="text" name="userCode"
									validType="complexValid['^[0-9a-zA-Z]+$','编码只能包含字母、数字','/userCode/ajax','userCode','用户编码已被占用,换一个试试!','userId']"
									data-options="prompt:'账号'" iconCls="icon-man"
									iconAlign=left style="width: 100%; height: 32px" />
							</td> -->
							
							<td>
								<input class="easyui-textbox" required="true"
									data-options="prompt:'账号',validType:'length[6,20]'" iconCls="icon-man"
									iconAlign=left style="width: 100%; height: 32px" />
							</td>
						</tr>
						<tr>
							<td>
								<input class="easyui-textbox" type="password" required="true"
								data-options="prompt:'密码',validType:'length[6,20]'"
								iconCls="icon-lock" iconAlign=left
								style="width: 100%; height: 32px"></input>
							</td>
						</tr>
						<tr>
							<!-- <td><input id="inputCheckCode" class="easyui-textbox" required="true"
									data-options="prompt:'验证码',validType:'validValidCode'"
									iconCls="icon-filter" iconAlign=left
									style="width: 55%; height: 32px" /> 
									<img id="validImg" src="/cms/user/getValidNum.do" alt="" width="56" height="32" align='absMiddle' />
									<input id = "validCodeInSession" >
							   </a>
							</td> -->
							
							<td>
								<input type="hidden" id="validCodeInSession" name="validCodeInSession"></input>
								<input class="easyui-textbox" type="text" name="inputValidCode"
									validType="validValidCode['^[0-9a-zA-Z]{4,4}$','验证码为4位字母、数字','user/checkValidCode.do','inputValidCode','验证码输入不正确!','validCodeInSession']"
									data-options="prompt:'验证码'" iconCls="icon-filter"
									iconAlign=left style="width: 55%; height: 32px" />
									<img id="validImg" src="/cms/user/getValidNum.do" alt="" width="56" height="32" align='absMiddle' />
							</td>
							
						</tr>
					</table>
				</form>
				<div style="text-align: center; padding: 5px;">
					<a href="#" rel="external nofollow" rel="external nofollow"
						class="easyui-linkbutton" style="width: 45%; height: 32px" onclick="submitLoginForm()">登录</a>
					<a href="#" rel="external nofollow" rel="external nofollow"
						class="easyui-linkbutton" style="width: 45%; height: 32px">注册</a>
				</div>
			</div>
		</div>
	</div>

	<div data-options="region:'south',border:false"
		style="height: 50px; background: #A9FACD; padding: 10px; text-align: center;">
		版权所有 © 2017 主办：DLY 苏ICP备0478号 技术支持：简爱公司</div>
</body>

<script>
//点击更换验证码  
$('#validImg').click(function() {  
	var timestamp = new Date().getTime();
    $(this).attr("src", '/cms/user/getValidNum.do?'+ timestamp);
});  

// 校验验证码
$.extend($.fn.validatebox.defaults.rules, {
	// 混合验证，五个参数：第一个是正则表达式，第二个是错误提示信息，前两个参数用户合法性验证；第三个是调用的url，第四个是传递给服务器的参数名(参数key)，第五个是错误提示信息，第六个参数是当前表单id字段
    validValidCode: {
    	validator: function(value, param) {
            var m_reg = new RegExp(param[0]);
            if (!m_reg.test(value)) {
            	console.log('0');
                $.fn.validatebox.defaults.rules.validValidCode.message = param[1];//动态设置message提示信息，validValidCode与方法名对应
                return false;
            }
            else {
            	console.log('1');
                var postdata = {};
                postdata[param[3]] = value;  //动态的key和value对应
                //postdata['id'] = $("#"+param[5]).val();//获取id值
                var result = $.ajax({
                    url: param[2],  //动态URL
                    data: postdata,
                    async:false,
                    type: "post"
                }).responseText;
                if (result === "Error") {
                    $.fn.validatebox.defaults.rules.validValidCode.message = param[4];  //动态设置message提示信息，validValidCode与方法名对应
                    return false;
                }
                else {
                    return true;
                }
            }
        },
	message : ""
    }       
});  

$.extend($.fn.validatebox.defaults.rules, {
    // 混合验证，五个参数：第一个是正则表达式，第二个是错误提示信息，前两个参数用户合法性验证；第三个是调用的url，第四个是传递给服务器的参数名(参数key)，第五个是错误提示信息，第六个参数是当前表单id字段
    complexValid : {
       validator: function(value, param) {
           var m_reg = new RegExp(param[0]);
           if (!m_reg.test(value)) {
               $.fn.validatebox.defaults.rules.complexValid.message = param[1];//动态设置message提示信息，complexValid与方法名对应
               return false;
           }
           else {
               var postdata = {};
               postdata[param[3]] = value;  //动态的key和value对应
               postdata['id'] = $("#"+param[5]).val();//获取id值
               var result = $.ajax({
                   url: param[2],  //动态URL
                   data: postdata,
                   async:false,
                   type: "post"
               }).responseText;
               if (result == "false") {
                   $.fn.validatebox.defaults.rules.complexValid.message = param[4];  //动态设置message提示信息，complexValid与方法名对应
                   return false;
               }
               else {
                   return true;
               }
           }
       },
    	message : ""
    }
});

function submitLoginForm(){
  $('#login_form').form('submit',{
    onSubmit:function(){
      return $(this).form('enableValidation').form('validate');
    }
  });
}

function clearForm(){
  $('#login_form').form('clear');
}
</script>
</html>