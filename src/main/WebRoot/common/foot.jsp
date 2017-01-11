<%@ page language="java" pageEncoding="UTF-8"%>
<div id="myModal" class="modal hide fade"></div>
<div  id="result" class="alert alert-info" style="display: none;"> 
	<span>${msg }</span>
</div>

<footer class="footer">
<%--      <div class="${currentUser.screen == "0" ?  'container':'container-fluid' }">--%>
<%--        <div class="${currentUser.screen == "0" ?  'row':'row-fluid' }">--%>
<%--          <div class='span12'>--%>
<%--            <div class="${currentUser.screen == "0" ?  'row':'row-fluid' }">--%>
<%--              <div class='span3'>--%>
<%--                <h4>相关单位</h4>--%>
<%--                <ul class='unstyled'>--%>
<%--                  <li>--%>
<%--                   <a href="http://home.sinotrans.com" target="_blank">股份公司</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="http://172.16.0.53/oa/login.do" target="_blank">集团公司</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="http://61.152.200.131" target="_blank">华东外网</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="http://172.20.54.253/sinolines/" target="_blank">集运公司</a>--%>
<%--                  </li>--%>
<%--                 --%>
<%--                </ul>--%>
<%--              </div>--%>
<%--              <div class='span3'>--%>
<%--                <h4>华东分公司</h4>--%>
<%--                <ul class='unstyled'>--%>
<%--                  <li>--%>
<%--                   <a href="http://172.20.32.72" target="_blank">上海船代</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="http://172.20.32.84/web/index.asp" target="_blank">海运分公司</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="http://172.20.32.74/logistics/" target="_blank">物流分公司</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="http://172.20.32.68" target="_blank">工程物流分公司</a>--%>
<%--                  </li>--%>
<%--                   <li>--%>
<%--                   <a href="http://www.sinotransjl.com/" target="_blank">金陵分公司</a>--%>
<%--                  </li>--%>
<%--                </ul>--%>
<%--              </div>--%>
<%--              <div class='span3'>--%>
<%--                <h4>物流公司</h4>--%>
<%--                <ul class='unstyled'>--%>
<%--                  <li>--%>
<%--                     <a href="http://172.20.33.21/" target="_blank">工程物流管理LMS</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="http://172.20.32.164" target="_blank">电子公告板</a>--%>
<%--                  </li>--%>
<%--                 --%>
<%--                </ul>--%>
<%--              </div>--%>
<%--              <div class='span3'>--%>
<%--                <h4>相关网站</h4>--%>
<%--                <ul class='unstyled'>--%>
<%--                 --%>
<%--                  <li>--%>
<%--                    <a href="http://172.20.32.164" target="_blank">电子公告</a>--%>
<%--                  </li>--%>
<%--               	  <li>--%>
<%--                    <a href="http://www.pudongchuyun.com:8001/" target="_blank">进口分拨查询</a>--%>
<%--                  </li>--%>
<%--               	  <li>--%>
<%--                    <a href='${ctx }/test.jsp' target="_blank">集群测试页</a>--%>
<%--                  </li>--%>
<%--               	  <li>--%>
<%--                    <a href='${ctx }/exp' target="_blank">JXLS测试</a>--%>
<%--                  </li>--%>
<%--               	  <li>--%>
<%--                    <a href='${ctx }/chart' target="_blank">图表测试</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="${ctx }/jasper/show/sjs.pdf" target="_blank">PDF导出</a>--%>
<%--                  </li>--%>
<%--                  <li>--%>
<%--                    <a href="${ctx }/jasper/show/sjs.xls" target="_blank">XLS导出</a>--%>
<%--                  </li>--%>
<%--                </ul>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
      <div id='footer-floor'>
        <div class="${currentUser.screen == "0" ?  'container':'container-fluid' }">
        <div class="${currentUser.screen == "0" ?  'row':'row-fluid' }">
            <div class='span10'>
              <h3 id='phone'>
                 <abbr title="Phone">Tel:</abbr>021-33044520
              </h3>
              <p>
                &copy; 2011-2021 <a href="http://sha.sinotrans.com/" title="中外运华东有限公司">中国外运华东有公司</a>. 
                &nbsp;华东公司信息技术部
              </p>
<%--              <p>--%>
<%--                	当前在线人数:${onlineUserList }--%>
<%--              </p>--%>
<%--            <address>--%>
<%--              <abbr title="Phone">P:</abbr> 021-33044520<br>--%>
<%--			  <strong>中国外运华东有公司</strong><br>--%>
<%--			  福建中路188号<br>--%>
<%--			  华东公司信息技术部<br>--%>
<%--			</address>--%>
            </div>
<%--            <div class='span3 ar' id='elsewhere-msg'>--%>
<%--              <h4>Stay in touch:</h4>--%>
<%--            </div>--%>
          </div>
        </div>
      </div>
</footer>      

