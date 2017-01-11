<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./taglib.jsp" %>
<c:if test="${imgflag eq 1}" >
<img alt='${currentUser.realname}' height='23' src='${ctx }/resource/userImages/${currentUser.hrcode}.jpg' width='23'   class="img-circle"/>
</c:if>
<c:if test="${imgflag eq 0}">
<img alt='Mila Kunis' height='23' src='${ctx }/assets/images/sinotrans.gif' width='23'  class="img-circle"/>
</c:if>
