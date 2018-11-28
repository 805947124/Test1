<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>青鸟租房 - 首页</title>
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<script type="text/javascript" src="scripts/function.js"></script>
	<script type="text/javascript">
		function toUrl(url){
			window.location.href = url;
			return;
		}
		
		function doSearch(){
			var f = document.getElementById('sform');
			f.submit();
		}
		function init(){
			var price = '';
			var p = document.getElementById('price');
			if(price == '0-100'){
				p.selectedIndex = 1;
			}else if(price == '100-200'){
				p.selectedIndex = 2;
			}else if(price == '200-1000000'){
				p.selectedIndex = 3;
			}

			var street = '';
			var d = document.getElementById('street');
			if(street == '1000'){
				d.selectedIndex = 1;
			}else if(street == '1001'){
				d.selectedIndex = 2;
			}else if(street == '1002'){
				d.selectedIndex = 3;
			}else if(street == '1003'){
				d.selectedIndex = 4;
			}

			var housetype = '';
			var h = document.getElementById('housetype');
			if(housetype == '1000'){
				h.selectedIndex = 1;
			}else if(housetype == '1001'){
				h.selectedIndex = 2;
			}else if(housetype == '1002'){
				h.selectedIndex = 3;
			}else if(housetype == '1003'){
				h.selectedIndex = 4;
			}
			
			var floorage = '';
			var f = document.getElementById('floorage');
			if(floorage == '0-40'){
				f.selectedIndex = 1;
			}else if(floorage == '40-500'){
				f.selectedIndex = 2;
			}else if(floorage == '500-1000000'){
				f.selectedIndex = 3;
			}
		}
	</script>
</head>
<body onload='init()'>
<div id="header" class="wrap">
	<div id="logo"><img src="images/logo.gif" /></div>
	<div class="search">
		 <form method="get">
			<input class="text" type="text" name="keywords" />
			<label class="ui-green"><input type="button" name="search" value="搜索房屋" /></label>
		</form>
	</div>
</div>
<div id="navbar" class="wrap">

	<dl class="search clearfix">
		<form method="post" action="search.action" id='sform'>
			<dt>
				<ul>
					<li class="bold">房屋信息</li>
					<li>
						标题：<input type="text" class="text" value='' name="title" />
						<label class="ui-blue"><input type="button" onclick='doSearch()' name="search" value="搜索房屋" /></label>
					</li>
				</ul>
			</dt>
			<dd>
				<ul>
					<li class="first">
						价格
					</li>
					<li>
						<select name='price' id='price'>
							<option value=''>不限</option>
							<option value='0-100'>100元以下</option>
							<option value='100-200'>100元—200元</option>
							<option value='200-1000000'>200元以上</option>
						</select>
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">房屋位置</li>
					<li>
							<select name='street_id' id='street'>
								<option value=''>不限</option>
								<option value='1000'>知春路</option>
								<option value='1001'>中关村大街</option>
								<option value='1002'>学院路</option>
								<option value='1003'>朝阳路</option>								
							</select>
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">房型</li>
					<li>
							<select name='type_id' id='housetype'>
								<option value=''>不限</option>
								<option value='1000'>一室一厅</option>
								<option value='1001'>一室两厅</option>
								<option value='1002'>两室一厅</option>
								<option value='1003'>两室两厅</option>								
							</select>
					</li>
				</ul>
			</dd>
			<dd>
				<ul>
					<li class="first">
						面积
					</li>
					<li>
							<select name='floorage' id='floorage'>
								<option value=''>不限</option>
								<option value='0-40'>40以下</option>
								<option value='40-500'>40-500</option>
								<option value='500-1000000'>500以上</option>							
							</select>
					</li>
				</ul>
			</dd>
		</form>
	</dl>
</div>
<div id="position" class="wrap">当前位置：青鸟租房网 - 浏览房源</div>
<div id="view" class="main wrap">
	<div class="intro">
		<div class="lefter">
			<h1>超级好房</h1>
			<div class="subinfo">2013-03-14 11:41:46.0</div>
			<div class="houseinfo">
				<p>户　　型：<span>一室一厅</span></p>
				<p>面　　积：<span>72m<sup>2</sup></span></p>				
				<p>位　　置：<span>海淀区中关村大街</span></p>
				<p>联系方式：<span>张三</span></p>
			</div>
		</div>
		<div class="side">
			<p><a href="#" class="bold">北京青鸟房地产经纪公司</a></p>
			<p>资质证书：有</p>
			<p>内部编号：1000</p>
			<p>联 系 人：</p>
			<p>联系电话：<span></span></p>
			<p>手机号码：<span>暂无</span></p>
		</div>
		<div class="clear"></div>
		<div class="introduction">
			<h2><span><strong>房源详细信息</strong></span></h2>
			<div class="content">
				<p>超级好房,便宜</p>
			</div>
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

