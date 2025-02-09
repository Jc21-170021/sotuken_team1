<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>検定申込み窓口簡略化システム</title>
<link href="style_kakunin.css" rel="stylesheet" type="text/css" />
<link href="designstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>

<% 
	String gno = (String)request.getAttribute("gno");
	String sno = (String)request.getAttribute("sno");
	String menjo = (String)request.getAttribute("menjo");
	String henko = (String)request.getAttribute("henko");
%>


<div id="container" />
	<h1>検定申込み窓口簡略化システム</h1>
	<div id="header" />	
		<div id="nav">
		<h3>メニュー</h3>
			<ul>
  			<li><a href="./GHome">ホーム</a></li>
  			<li><a href="./GSiken">試験一覧</a></li>
  			<li><a href="./Login">ログアウト</a></li>
			</ul>
		</div>
	<div id="contents">
	<h2>確認画面</h2>
	<form  method="get" action="./Message">
			<div align="center">
		<div id="empty">
			<div align="left">
			<div id="a">
			<table border ="1" align ="center" cellpadding="10"><!--本文-->
				<tr>
				<th>学籍番号</th><th><%= gno %></th>
				</tr>
				<tr>
				<th>一部免除申請番号</th><th><%= menjo %></th>
				</tr>
				<tr>
				<th>FE受験から変更する</th><th><%= henko %></th>
				</tr>
				</table>
			</div>
			</div>
			<input type="hidden" name="sno" value=<%= sno %>></input>
			<input type="hidden" name="gno" value=<%= gno %>></input>
			<input type="hidden" name="menjo" value=<%= menjo %>></input>
			<input type="hidden" name="henko" value=<%= henko %>></input>
			<input type="hidden" name="menjuken" value="-"></input>
			<input type="hidden" name="ydate" value="-/-"></input>
			<br/>
				<div style="float: left"><button type="submit" name="kakunin" value="back" style="font-size: 20px">戻る</button></div>
				<div style="text-align: right"><button type="submit" name="kakunin" value="go" style="font-size: 20px">確定</button></div>　
			<br/>
		
		</div>
		</div>
	</form>
	<br/>
	<br/>
	<br/>
	<br/>
	<div id="footer"><!--フッター-->
		<i id="copyright"><small>Copyright © 2019-2020 Tohoku Computer College All Rights Reserved.</small></i>
	</div>
	
</div>
</body>
</html>