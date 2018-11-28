<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>青鸟租房 -修改房屋信息</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="images/logo.gif" /></div>

</div>
<div id="regLogin" class="wrap">
	<div class="dialog">
		<dl class="clearfix">
			<dt>房屋信息修改</dt>
			<dd class="past">修改房屋信息</dd>

		</dl>
		<div class="box">
			<form action="modify.action">
			<input type='hidden' value='1' name='id'/> 
				<div class="infos">
					<table class="field">
						<tr>
							<td class="field">标　　题：</td>
							<td><input type="text" class="text" name="title" value='超级好房'/></td>
						</tr>
						<tr>
							<td class="field">户　　型：</td>
							<td><select  class="text" name="type_id"><option value="1000">一室一厅</option></select></td>
						</tr>
						<tr>
							<td class="field">面　　积：</td>
							<td><input type="text" class="text" name="floorage"  value='72 '/></td>
						</tr>
						<tr>
							<td class="field">价　　格：</td>
							<td><input type="text" class="text" name="price"  value='2300.0'/></td>
						</tr>
                        <tr>
							<td class="field">位　　置：</td>
							<td>区：<select  class="text" name="district_id"><option value="1004">海淀区</option></select>
                            	街：<select  class="text" name="street_id"><option value="1001">中关村大街</option></select>
                            </td>
						</tr>
                        <tr>
							<td class="field">联系方式：</td>
							<td><input type="text" class="text" name="contact" value='张三'/></td>
						</tr>
                        <tr>
							<td class="field">详细信息：</td>
							<td><textarea name="description">超级好房,便宜</textarea></td>
						</tr>
					</table>
					<div class="buttons"><input type="submit" name="submit" value="立即修改" /></div>
				</div>
			</form>
		</div>
	</div>
</div>
<div id="footer" class="wrap">
	<dl>
    	<dt>青鸟租房 &copy; 2010 北大青鸟 京ICP证1000001号</dt>
        <dd>关于我们 · 联系方式 · 意见反馈 · 帮助中心</dd>
    </dl>
</div>
</body>
</html>



