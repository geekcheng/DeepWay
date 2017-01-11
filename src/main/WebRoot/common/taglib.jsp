<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java"   import="com.deep.service.SecurityUserHolder"%>
<%@ page language="java"   import="com.deep.model.User"%>
<%@ page language="java"   import="java.util.Date"%>
<%@ page language="java"   import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"    uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"     uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql"    uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="x"      uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="sec"    uri="http://www.springframework.org/security/tags" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
application.setAttribute("ctx",path);
// application.setAttribute("ctx","http://61.152.200.146/eoc/");
// application.setAttribute("ctx",basePath);
request.setAttribute("currentUser",(User)SecurityUserHolder.getCurrentUser());
response.setHeader("Expires", "Sat, 6 May 1995 12:00:00 GMT");
response.setHeader("Cache-Control", "no-store,no-cache,must-revalidate");
response.addHeader("Cache-Control", "post-check=0, pre-check=0");
response.setHeader("Pragma", "no-cache");
%>