<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link href="https://cdn.bootcss.com/animate.css/3.7.0/animate.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="">
<style>
*{margin:0;padding:0;}
.navbar-default{
    background-color: #337ab7;
    border: none;
    box-shadow: 0 0 10px 0 black;
}

.navbar-default .navbar-brand {
    font-size: 16px;
    font-weight: bold;
    color: #40D2B1;
    height: 50px;
    line-height: 20px;
}
.navbar-default .navbar-nav>li>a {
    font-size: 14px;
    color: white;
    height: 50px;
    line-height: 20px;
}

.navbar-default .navbar-nav>li>a:hover {
    color: white;
}
.navbar-default .navbar-nav>li>a:visited {
    color: white;
}
.navbar-default .navbar-nav>li:hover{
    background: #326ea2;
}
.navbar-toggle{
    margin-top: 8px;
}
.navbar-default .navbar-toggle:hover {
    border-color: #40D2B1;
    background-color: rgb(69, 210, 184);
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #1C9982;
}

.side{position:fixed;width:54px;height:275px;right:0;top:214px;z-index:100;}
.side ul li{list-style-type:none;width:54px;height:54px;float:left;position:relative;border-bottom:1px solid #444;}
.side ul li .sidebox{position:absolute;width:54px;height:54px;top:0;right:0;transition:all 0.3s;background:#000;opacity:0.8;filter:Alpha(opacity=80);color:#fff;font:14px/54px "寰蒋闆呴粦";overflow:hidden;}
.side ul li .sidetop{width:54px;height:54px;line-height:54px;display:inline-block;background:#000;opacity:0.8;filter:Alpha(opacity=80);transition:all 0.3s;}
.side ul li .sidetop:hover{background:#ae1c1c;opacity:1;filter:Alpha(opacity=100);}
.side ul li img{float:left;}

.active_diy{
    background: #326ea2;
    /*a2a2a2*/
}


body{
    font-family: 'Microsoft YaHei', sans-serif;
    background: #ededed;
}
.addboxshadow:hover{
    box-shadow: 0 2px 3px #888888;
}


</style>
<style>
body {
	font-family: 'Microsoft YaHei', sans-serif;
}

.addboxshadow:hover {
	box-shadow: 0 2px 3px #888888;
}
</style>