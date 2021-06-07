<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	EL : 표현식(<%= %>) 대신해서 사용되는 새로운 스크립트 언어
	     <%= 변수 또는 계산식 %>  ===>   ${변수 또는 계산식}
	     
	 ** : 앞에서 배운 pageContext, request, session, application의 속성을 이용한 데이터 저장 정보를 
	      바로 호출 해서 사용할 수 있다.
	 ** : 파라미터값도 바로 받아서 사용할 수 있다.    
 --%>
 <h2> 표현식 산술 연산 사용 예제</h2>
 <h3>
 	<li>15 + 7 = <%=15+7 %> </li>
 	<li>15 - 7 = <%=15-7 %> </li>
 	<li>15 * 7 = <%=15*7 %> </li>
 	<li>15 / 7 = <%=15/7 %> </li>
 	<li>15 % 7 = <%=15%7 %> </li>
 </h3>
 <hr>
 
 <h2> EL 산술 연산 사용 예제</h2>
  <h3>
 	<li>15 + 7 = ${15+7} </li>
 	<li>15 - 7 = ${15-7} </li>
 	<li>15 * 7 = ${15*7} </li>
 	<li>15 / 7 = ${15/7} </li>
 	<li>15 % 7 = ${15%7} </li>
 </h3>
 <hr>
  
  <h2> 표현식 변수 사용 예제</h2>
  <%int su = 125 + 25 ; %>
  <h3> su = <%=su %></h3>
  <hr>
  
  <%-- EL에서 변수를 호출 할 때는 반드시 pageContext, request, session, application 속성을 
       이용해서 데이터가 저장 되어 있어야 호출 할 수 있다. --%>
  <h2> EL 변수 사용 예제</h2>
  <% int su2 = 125 + 25 ; 
     pageContext.setAttribute("su2", su2);  %>
     
  <h3> su2 = ${su2}</h3>
  <hr>
  
  <%-- pageContext, request, session, application 속성의 이름이 같은 경우 
      우선 순위는 pageContext > request > session > application  --%>
  <hr>
</body>
</html>













