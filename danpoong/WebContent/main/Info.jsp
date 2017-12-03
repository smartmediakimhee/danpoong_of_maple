<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dopetrope by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

<link href="https://fonts.googleapis.com/css?family=Indie+Flower"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/nanumbrushscript.css"
	rel="stylesheet">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">

<style type="text/css">
/* 모달 css 시작 */
.panel {
	background-color: white;
	height: 80px;
	padding: 10px;
}

.panel a#login_pop, .panel a#join_pop {
	border: 2px solid #aaa;
	color: #fff;
	display: block;
	float: left;
	margin-left: 10px;
	padding: 5px 10px;
	text-decoration: none;
	text-shadow: 1px 1px #000;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	font-family: 'dotum';
}

a#login_pop:hover, a#join_pop:hover {
	border-color: #eee;
}

.overlay {
	background-color: rgba(0, 0, 0, 0.6);
	bottom: 0;
	cursor: default;
	left: 0;
	opacity: 0;
	position: fixed;
	right: 0;
	top: 0;
	visibility: hidden;
	z-index: 1;
	-webkit-transition: opacity .5s;
	-moz-transition: opacity .5s;
	-ms-transition: opacity .5s;
	-o-transition: opacity .5s;
	transition: opacity .5s;
}

.overlay:target {
	visibility: visible;
	opacity: 1;
}

.popup {
	background-color: #fff;
	border: 3px solid #fff;
	display: inline-block;
	left: 50%;
	opacity: 0;
	padding: 15px;
	position: fixed;
	text-align: justify;
	top: 40%;
	visibility: hidden;
	z-index: 10;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-ms-border-radius: 10px;
	-o-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-moz-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-ms-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-o-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	-webkit-transition: opacity .5s, top .5s;
	-moz-transition: opacity .5s, top .5s;
	-ms-transition: opacity .5s, top .5s;
	-o-transition: opacity .5s, top .5s;
	transition: opacity .5s, top .5s;
}

.overlay:target+.popup {
	top: 50%;
	opacity: 1;
	visibility: visible;
}

.close {
	background-color: rgba(0, 0, 0, 0.8);
	height: 30px;
	line-height: 30px;
	position: absolute;
	right: 0;
	text-align: center;
	text-decoration: none;
	top: -15px;
	width: 30px;
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	-ms-border-radius: 15px;
	-o-border-radius: 15px;
	border-radius: 15px;
}

.close:before {
	color: rgba(255, 255, 255, 0.9);
	content: "X";
	font-size: 24px;
	text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
}

.close:hover {
	background-color: rgba(64, 128, 128, 0.8);
}

.popup p, .popup div {
	margin-bottom: 10px;
}

.popup label {
	display: inline-block;
	text-align: left;
	width: 120px;
}

.popup input[type="text"], .popup input[type="password"] {
	border: 1px solid;
	border-color: #999 #ccc #ccc;
	margin: 0;
	padding: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-ms-border-radius: 2px;
	-o-border-radius: 2px;
	border-radius: 2px;
}

.popup input[type="text"]:hover, .popup input[type="password"]:hover {
	border-color: #555 #888 #888;
}
/* 모달 css 끝 */



.main_common {
	display: inline-block;
	
	
}

body {
	font-family: 'Indie Flower', cursive;
}

.korean{

}

@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,800);

figure.snip12001 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
 
  width: 500px;
  height: 270px;
 
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip12001 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12001 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12001 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip12001 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip12001 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip12001 h2 span {
  font-weight: 800;
}
figure.snip12001 h2:before,
figure.snip12001 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip12001 h2:before {
  left: -1000%;
}
figure.snip12001 h2:after {
  right: -1000%;
}
figure.snip12001 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip12001 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip12001:hover img,
figure.snip12001.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip12001:hover figcaption,
figure.snip12001.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip12001:hover p,
figure.snip12001.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}

/*2*/
figure.snip12002 {
font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
 
  width: 450px;
  height: 270px;
 
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip12002 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12002 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12002 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
}
figure.snip12002 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12002 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12002 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip12002 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip12002 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip12002 h2 span {
  font-weight: 800;
}
figure.snip12002 h2:before,
figure.snip12002 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip12002 h2:before {
  left: -1000%;
}
figure.snip12002 h2:after {
  right: -1000%;
}
figure.snip12002 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip12002 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip12002:hover img,
figure.snip12002.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip12002:hover figcaption,
figure.snip12002.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip12002:hover p,
figure.snip12002.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}

/*3*/
figure.snip12003 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
  width: 550px;
  height: 270px;

  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip12003 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12003 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12003 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip12003 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip12003 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip12003 h2 span {
  font-weight: 800;
}
figure.snip12003 h2:before,
figure.snip12003 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip12003 h2:before {
  left: -1000%;
}
figure.snip12003 h2:after {
  right: -1000%;
}
figure.snip12003 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip12003 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip12003:hover img,
figure.snip12003.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip12003:hover figcaption,
figure.snip12003.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip12003:hover p,
figure.snip12003.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}
/*4*/
figure.snip12004 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
 width: 400px;
  height: 270px;

  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip12004 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12004 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12004 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip12004 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip12004 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip12004 h2 span {
  font-weight: 800;
}
figure.snip12004 h2:before,
figure.snip12004 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip12004 h2:before {
  left: -1000%;
}
figure.snip12004 h2:after {
  right: -1000%;
}
figure.snip12004 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip12004 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip12004:hover img,
figure.snip12004.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip12004:hover figcaption,
figure.snip12004.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip12004:hover p,
figure.snip12004.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}
/*5*/
figure.snip12005 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
  width: 450px;
  height: 270px;
 
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip12005 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12005 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12005 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip12005 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip12005 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip12005 h2 span {
  font-weight: 800;
}
figure.snip12005 h2:before,
figure.snip12005 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip12005 h2:before {
  left: -1000%;
}
figure.snip12005 h2:after {
  right: -1000%;
}
figure.snip12005 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip12005 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip12005:hover img,
figure.snip12005.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip12005:hover figcaption,
figure.snip12005.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip12005:hover p,
figure.snip12005.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}

/*6*/
figure.snip12006 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
    width: 500px;
  height: 270px;
 
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip12006 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12006 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12006 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip12006 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip12006 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip12006 h2 span {
  font-weight: 800;
}
figure.snip12006 h2:before,
figure.snip12006 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip12006 h2:before {
  left: -1000%;
}
figure.snip12006 h2:after {
  right: -1000%;
}
figure.snip12006 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip12006 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip12006:hover img,
figure.snip12006.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip12006:hover figcaption,
figure.snip12006.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip12006:hover p,
figure.snip12006.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}
/*7*/
figure.snip12007 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
  width: 970px;
  height: 270px;
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip12007 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip12007 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip12007 figcaption {
  position: absolute;
  top: 45%;
  left: 27%;
  right: 27%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip12007 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip12007 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip12007 h2 span {
  font-weight: 800;
}
figure.snip12007 h2:before,
figure.snip12007 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip12007 h2:before {
  left: -1000%;
}
figure.snip12007 h2:after {
  right: -1000%;
}
figure.snip12007 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip12007 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip12007:hover img,
figure.snip12007.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip12007:hover figcaption,
figure.snip12007.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip12007:hover p,
figure.snip12007.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}

/**/

/* Demo purposes only */
body {
  background-color: #212121;
}


.korean{
font-family: 'Nanum Brush Script', cursive;
}
/* 
font-family: 'Nanum Brush Script', cursive; */




.homepage{
margin-left: 24%;
margin-right: 24%;

}

.content{


}

ul, li {
	list-style: none;
}

#slide {
	height: 300px;
	position: relative;
	overflow: hidden;
	margin-left: 22%;
	margin-right: 22%;
}

#slide ul {
	width: 400%;
	height: 100%;
	transition: 1s;
}

#slide ul:after {
	content: "";
	display: block;
	clear: both;
}

#slide li {
	float: left;
	width: 25%;
	height: 100%;
}

#slide input {
	display: none;
}

#slide label {
	display: inline-block;
	vertical-align: middle;
	width: 10px;
	height: 10px;
	border: 2px solid #666;
	background: #fff;
	transition: 0.3s;
	border-radius: 50%;
	cursor: pointer;
}

#slide .pos {
	text-align: center;
	position: absolute;
	bottom: 10px;
	left: 0;
	width: 100%;
	text-align: center;
}

#pos1:checked ~ul {
	margin-left: 0%;
}

#pos2:checked ~ul {
	margin-left: -25%;
}

#pos3:checked ~ul {
	margin-left: -50%;
}

#pos4:checked ~ul {
	margin-left: -75%;
}

#pos1:checked ~.pos>label:nth-child(1) {
	background: #666;
}

#pos2:checked ~.pos>label:nth-child(2) {
	background: #666;
}

#pos3:checked ~.pos>label:nth-child(3) {
	background: #666;
}

#pos4:checked ~.pos>label:nth-child(4) {
	background: #666;
}

#recommandline {
	margin-left: 22%;
	margin-right: 22%;
}

#reviewline {
	margin-left: 22%;
	margin-right: 22%;
}

h3 {
	display: inline-block;
}

#review {
	display: inline-block;
	background-image: url("images/review2.jpg"); /* 이미지크기499/252  */
}

#review2 {
	display: inline-block;
	background-image: url("images/reviewsec3.jpg");
}

#review3 {
	display: inline-block;
	text-overflow: ellipsis;
	text-align: center;
}

#review4 {
	display: inline-block;
	text-overflow: ellipsis;
	text-align: center;
	display: inline-block;
}

/* 로그인 로그아웃 버튼 */
#container {
	width: 300px;
	height: 26px;
	margin-top: 5.9%;
	margin-left: 88.5%;
	display: inline-block;
}
#container2 {
	width: 300px;
	height: 26px;
	margin-top: 3%;
	margin-left: 70%;
	display: inline-block;
}
.button-1 {
	width: 70px;
	height: 25px;
	border: 1px solid #34495e;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin-left: 10%;
	margin-bottom: 80%;
	display: inline-block;
}

.button-1 a {
	font-family: arial;
	font-size: 16px;
	color: #34495e;
	text-decoration: none;
	line-height: 25px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.eff-1 {
	width: 70px;
	height: 25px;
	top: -2px;
	right: -70px;
	background: #34495e;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-1:hover .eff-1 {
	right: 0;
}

.button-1:hover a {
	color: #fff;
}

.button-4 {
	width: 70px;
	height: 25px;
	border: 1px solid #34495e;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin-left: 1%;
	display: inline-block;
}

.button-4 a {
	font-family: arial;
	font-size: 16px;
	color: #34495e;
	text-decoration: none;
	line-height: 25px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.eff-4 {
	width: 70px;
	height: 50px;
	left: -70px;
	background: #34495e;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-4:hover .eff-4 {
	left: 0;
}

.button-4:hover a {
	color: #fff;
}
.main-wrapper {
	background-color: #f7f7f7;
	width:100%;
}
</style>


</head>


<body class="homepage" style="background-color: white;">




<!-- 모달 코드 시작 -->
<div>
	<c:choose>
		<c:when test="${empty id }">
			<div id="container">
				<div class="button-1">
					<a href="#login_form" id="login_pop">login</a>
				</div>
				<div class="button-4">
					<a href="#join_form" id="join_pop">Join</a>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div id="container">
				<div class="button-1">
					<a href="Logout.jsp" id="login_pop">logout</a>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</div>
	<form action="../LoginService">
		<a href="#x" class="overlay" id="login_form"></a>
		<div class="popup">
			<h2>Welcome Guest!</h2>
			<p>Please enter your login and password here</p>
			<div>
				<label for="login">Login</label> <input type="text" id="login"
					name="id" />
			</div>
			<div>
				<label for="password">Password</label> <input type="password"
					id="password" name="pw" />
			</div>
			<input type="submit" value="Log In" /> <a class="close"
				href="#close"></a>
		</div>
	</form>
	<form action="../JoinService">
		<a href="#x" class="overlay" id="join_form"></a>
		<div class="popup">
			<h2>Sign Up</h2>
			<p>Please enter your details here</p>
			<div>
				<label for="email">ID</label> <input type="text" id="email"
					name="id" />
			</div>
			<div>
				<label for="pass">Password</label> <input type="password" id="pass"
					name="pw" />
			</div>
			<div>
				<label for="firstname">Password</label> <input type="password"
					id="firstname" name="pw2" />
			</div>
			<div>
				<label for="lastname">Nickname</label> <input type="text"
					id="lastname" name="nick" />
			</div>
			<div>
				<label for="lastname">Age</label> <input type="text" id="lastname"
					name="age" />
			</div>
			<div>
				<label for="lastname">Location</label> <input type="text"
					id="lastname" name="location" />
			</div>
			<input type="submit" value="Sign Up" /> <a class="close"
				href="#close"></a>
		</div>
	</form>

	<!-- 모달 코드 끝 -->

	<!-- div id="container">
		<div class="button-1">
			<div class="eff-1"></div>
			<a href="Login.html"> LOGIN </a>
		</div>
		<div class="button-4">
			<div class="eff-4"></div>
			<a href="JoinForm.html"> JOIN </a>
		</div>

	</div> -->




	<div id="page-wrapper" >

		<!-- Header -->
		<div id="header-wrapper" >

			<div id="header" >
				<!-- Logo -->
				<h1>
					<a href="main.jsp" style="display: inline-block;">ALVIS'S BAR</a>
				</h1>
				<!-- ddddddd -->
				<!-- Nav -->
				<nav id="nav">
				<ul>
					<li><a href="main.jsp">MAIN</a></li>
					<li><a href="introduce.jsp">INTRODUCE</a></li>
					<li class="current" ><a href="Info.jsp">INFO</a></li>
					<li><a href="Community.jsp">COMMUNITY</a></li>
					<li><a href="MyPage.jsp">MY PAGE</a></li>
				</ul>
				</nav>

			

		
				
			</div>


</div>
</div>






	<div class="main-wrapper">
		<div>
			<figure class="snip12001"> <img src="images/infosoju.jpg"
				alt="sq-sample27" /> <figcaption>
			<p>한국에서 대표적인 술. 재미있는 것은 마시는 경우 중 '고민 상담'이 가장 많다는 것입니다. 고민상담을 할 때
				마시는 술 소주, 만약 당신이 고민을 가지고 있다면 오늘 밤은 소주 한잔 어떠신가요?</p>


			<div class="heading">
				<h2 class="korean" style="font-size: xx-large;">소주</h2>
			</div>
			</figcaption> <a href="../DrinkListService?drink_id=02"></a> </figure>
			<figure class="snip12002"> <img src="images/infobeer2.jpg"
				alt="sq-sample32" /> <figcaption>
			<p>맥주를 뜻하는 beer의 어원은 두 가지 설이 있습니다. '마시다'는 뜻을 가진 라틴어 비베레(bibere)와
				'곡물'을 뜻하는 게르만어 베오레(bior)입니다. 무엇이 진정한 어원인지는 모르지만 우리의 피로를 풀어주는 좋은 친구임이
				틀림없습니다.</p>
			<div class="heading">
				<h2 class="korean" style="font-size: xx-large;">맥주</h2>
			</div>
			</figcaption> <a href="../DrinkListService?drink_id=01"></a> </figure>

			</figure>
			<figure class="snip12004"> <img src="images/whisky1.jpg"
				alt="sq-sample32" /> <figcaption>
			<p>위스키는 스코틀랜드에서 유래한 대표적인 증류주로서 양주의 대명사입니다. 한번 익숙해지기 시작하면 위스키본연의
				향과 맛을 느낄 수 있다고 하는데 가격이 비싼 편이라 익숙해질 기회를 주지 않는 야속한 술입니다.</p>
			<div class="heading">
				<h2 class="korean" style="font-size: xx-large;">위스키</h2>
			</div>
			</figcaption> <a href="../DrinkListService?drink_id=04"></a> </figure>


			</figure>
			<figure class="snip12003"> <img src="images/infowine1.jpg"
				alt="sq-sample32" /> <figcaption>
			<p>와인의 재료는 무수히 많지만 포도로 만든 수이 워낙 유명하다 보니 번역할 때는 과일주보다는 포도주라고
				번역합니다. 와인병에 붙어있는 라벨(Label)은 일종의 신분 증명서로 와인의 원산지, 등급, 제조업자등이 상세하게
				적혀있기 때문에 읽는 법을 알아두면 굉장히 많은 도움이 될 수 있습니다. (FEAT허세)</p>
			<div class="heading">
				<h2 class="korean" style="font-size: xx-large;">와인</h2>
			</div>
			</figcaption> <a href="../DrinkListService?drink_id=03"></a> </figure>

			</figure>
			<figure class="snip12005"> <img src="images/cham1.jpg"
				alt="sq-sample32" /> <figcaption>
			<p>스파클링 와인의 부류에 들어가는 술로 이산화탄소를 주입하는 스파클링 와인과는 다르게 전통방식으로 탄산을 갖도록 양조한 술이다. 
			샴페인은 영문식이며, 프랑스어로는 샹파뉴(Champagne)라고 한다.</p>
			<div class="heading">
				<h2 class="korean" style="font-size: xx-large;">샴페인</h2>
			</div>
			</figcaption> <a href="../DrinkListService?drink_id=08"></a> </figure>


			</figure>
			<figure class="snip12006"> <img src="images/mac3.jpg"
				alt="sq-sample32" /> <figcaption>
			<p>소주와 함께 우리나라를 대표하는 전통 술입니다. 쌀로 밑술을 담가 거기서 청주를 걸러내고 남은 술지게미를 다시
				체에 물로 걸러내는 방법으로 주조합니다. 왠지 비가 오는 날이면 파전과 함께 급격하게 끌리는 술이 아닐까 싶습니다.</p>
			<div class="heading">
				<h2 class="korean" style="font-size: xx-large;">막걸리</h2>
			</div>
			</figcaption> <a href="../DrinkListService?drink_id=05"></a> </figure>

			</figure>
			<figure class="snip12007"> <img src="images/jeon7.jpg"
				alt="sq-sample32" /> <figcaption>
			<p>전통주는 전통적으로 내려오는 제조 방법에 따라 만드는 술을 말합니다. 제조 방법에 따라 양조주와 증류주로 나뉘고
				양조주는 순곡주와 혼양곡주로, 순곡주는 다시 탁주와 청주로 구별됩니다.</p>
			<div class="heading">
				<h2 class="korean" style="font-size: xx-large;">전통주</h2>
			</div>
			</figcaption> <a href="../DrinkListService?drink_id=06"></a> </figure>

			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br> <br>
			<br>
			<br>
			<br>
		</div>
	</div>

	<hr>
<div id="footer-wrapper" align="center">
<hr>
			<section id="footer" class="container2" style="text-align:center; margin: auto;">
			<div style="display: block; text-align: center;">
				<h1 style="font-size: 65px">Alvis Bar</h1>
			</div>
			<br>			
			<div style="display: block; text-align: center;">
				<font style="font-family: 'Jeju Hallasan', cursive;">광주광역시 남구 송암로60 광주CGI센터 203호 (송하동)</font>
				<br>
				<font style="font-family: 'Jeju Hallasan', cursive;">김희정 방준영 이도건 이현선 전상호</font>
				<br>
				<font style="font-family: 'Jeju Hallasan', cursive;">062-655-3509</font>
				<br>
				<font style="font-family: 'Jeju Hallasan', cursive;">smhrd@smhrd.or.kr</font>
			</div>
						<ul class="links" style="text-algin: center">
							<li>&copy; danpoong of maple. All rights reserved.</li>
						</ul>
			</section>
		</div>
		
<script type="text/javascript">
$(".hover").mouseleave(
	    function () {
	      $(this).removeClass("hover");
	    }
	  );
</script>



</body>
</html>