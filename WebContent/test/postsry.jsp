<!--
작성자:
변경일:
프로그렘 설명
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
  #postBox  table {
  border-collapse: collapse;
  border-spacing: 0;
}
#postBox section.notice {
  padding: 80px 0;
}

#postBox #board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#postBox #board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#postBox #board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#postBox #board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#postBox #board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

#postBox .board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

#postBox .board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
#postBox .board-table a:hover {
  text-decoration: underline;
}
#postBox .board-table th {
  text-align: center;
}

#postBox .board-table .th-num {
  width: 100px;
  text-align: center;
}

#postBox .board-table .th-date {
  width: 200px;
}

#postBox .board-table th, .board-table td {
  padding: 14px 0;
}

#postBox .board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

#postBox .board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

#postBox .board-table tbody th p{
  display: none;
}

#postBox .btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

#postBox .btn-dark {
  background: #555;
  color: #fff;
}

#postBox .btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

#postBox .btn-dark {
  background: #555;
  color: #fff;
}

#postBox .btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

#postBox * {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
#postBox .clearfix:after {
  content: '';
  display: block;
  clear: both;
}

#postBox .blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}

</style>