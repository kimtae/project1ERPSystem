<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/mypageUpdateInfo.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/buttonSubmit.css">
<title>비번변경폼</title>
<style>

	.error {color:red; font-size:0.8em;}
</style>
</head>
<body>
 
<table>
 <tr>
 	<th>
 	
 	</th>
 	<th>
 	
 	</th>
 </tr>
</table> 
  <form action="mypageupdatesal.aa" method="post">
 <table>
 <tr>
 	<th class="thead">
 	 현재 연봉
 	</th>
 	<th class="tbody">
 	 <input type="text" name="curSal" id="curSal" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
 	 <span class="error"><c:if test="${errors.curSal}">연봉을 입력하세요</c:if></span>
   <span class="error"><c:if test="${errors.badCurSal}">연봉이 일치하지 않습니다</c:if></span>
   <span class="error"><c:if test="${errors.StringCurSal}">숫자로 입력해주세요</c:if></span>
 </tr>
  <tr>
 	<td class="thead">
 	new 연봉
 	</td>
 	<td class="tbody">
	 <input type="text" name="newSal" id="newSal" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
   <span class="error"><c:if test="${errors.newSal}">새 연봉를 입력하세요</c:if></span>
 	</td>
 </tr>
  <tr>
 	<td class="tbody" style="text-align: center;">
 		<input type="submit" class="w-btn w-btn-gray"  value="연봉 변경"/>
	  <input type="hidden" name="empno" value="${empno}">
 	</td>
 	<td class="tbody" style="text-align: center;">
	  <input type="reset" class="w-btn w-btn-gray"  value="취소"/>
 	</td>
 </tr>
</table> 
</form>
 
</body>
</html>








