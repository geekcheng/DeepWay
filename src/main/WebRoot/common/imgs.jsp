<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp" %>

<%--              <div id="myCarousel" class="carousel slide">--%>
<%--                <ol class="carousel-indicators">--%>
<%--					<c:forEach items="${imgs}" var="img" varStatus="status">--%>
<%--					<li data-target="#myCarousel" data-slide-to="${status.index}" ></li>--%>
<%--					</c:forEach>--%>
<%--                </ol>--%>
<%--                <div class="carousel-inner">--%>
<%--					<c:forEach items="${imgs}" var="img">--%>
<%--					<div class="item active">--%>
<%--                    <img src="${ctx }/getImage?filename=${img }"  />--%>
<%--                  	</div>--%>
<%--					</c:forEach>--%>
<%--                </div>--%>
<%--                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>--%>
<%--                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>--%>
<%--              </div>--%>

<c:forEach items="${imgs}" var="img">
<img src="${ctx }/getImage?filename=${img }" class="img-rounded" style="max-width: 200px;max-height: 200px;" />
</c:forEach>

