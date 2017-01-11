<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
		<li class='dropdown only-icon'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <i class='icon-print'></i>
                        </a>
                        <ul class='dropdown-menu'>
                          <li>
                          	<a href='${ctx }/report/ntimg.jsp'> <i class='icon-print'>查看粘贴样例</i></a>
                          </li>
                          <li>
                          	<a href='${ctx }/jasper/show/nt/pdf' target="_blank"> <i class='icon-print'>打印单独粘贴页</i></a>
                          </li>
                        </ul>
        </li>
        <li class='dropdown light only-icon'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <i class='icon-adjust'></i>
                        </a>
                        <ul class='dropdown-menu color-settings'>
<%--                            <li class='color-settings-body-color'>--%>
<%--                                <div class='color-title'>Body color</div>--%>
<%--                                <a data-change-to='assets/stylesheets/light-theme.css' href='#'>--%>
<%--                                    Light--%>
<%--                                    <small>(default)</small>--%>
<%--                                </a>--%>
<%--                                <a data-change-to='assets/stylesheets/dark-theme.css' href='#'>--%>
<%--                                    Dark--%>
<%--                                </a>--%>
<%--                                <a data-change-to='assets/stylesheets/dark-blue-theme.css' href='#'>--%>
<%--                                    Dark blue--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class='divider'></li>--%>
                            <li class='color-settings-contrast-color'>
<%--                                <div class='color-title'>Contrast color</div>--%>
                                <a href="${ctx }/theme/contrast-rd" data-change-to="contrast-rd" name='mytheme'><i class='icon-adjust text-red'></i>
                                    Red <small>(default)</small>
                                </a>
                                <a href="${ctx }/theme/contrast-blue" data-change-to="contrast-blue" name='mytheme'><i class='icon-adjust text-blue'></i>
                                    Blue
                                </a>
                                <a href="${ctx }/theme/contrast-orange" data-change-to="contrast-orange" name='mytheme'><i class='icon-adjust text-orange'></i>
                                    Orange
                                </a>
                                <a href="${ctx }/theme/contrast-purple" data-change-to="contrast-purple" name='mytheme'><i class='icon-adjust text-purple'></i>
                                    Purple
                                </a>
                                <a href="${ctx }/theme/contrast-green" data-change-to="contrast-green" name='mytheme'><i class='icon-adjust text-green'></i>
                                    Green
                                </a>
                                <a href="${ctx }/theme/contrast-muted" data-change-to="contrast-muted" name='mytheme'><i class='icon-adjust text-muted'></i>
                                    Muted
                                </a>
                                <a href="${ctx }/theme/contrast-fb" data-change-to="contrast-fb" name='mytheme'><i class='icon-adjust text-fb'></i>
                                    Facebook
                                </a>
                                <a href="${ctx }/theme/contrast-dark" data-change-to="contrast-dark" name='mytheme'><i class='icon-adjust text-dark'></i>
                                    Dark
                                </a>
                                <a href="${ctx }/theme/contrast-pink" data-change-to="contrast-pink" name='mytheme'><i class='icon-adjust text-pink'></i>
                                    Pink
                                </a>
                                <a href="${ctx }/theme/contrast-grass-green" data-change-to="contrast-grass-green" name='mytheme'><i class='icon-adjust text-grass-green'></i>
                                    Grass green
                                </a>
                                <a href="${ctx }/theme/contrast-sea-blue" data-change-to="contrast-sea-blue" name='mytheme'><i class='icon-adjust text-sea-blue'></i>
                                    Sea blue
                                </a>
                                <a href="${ctx }/theme/contrast-banana" data-change-to="contrast-banana" name='mytheme'><i class='icon-adjust text-banana'></i>
                                    Banana
                                </a>
                                <a href="${ctx }/theme/contrast-dark-orange" data-change-to="contrast-dark-orange" name='mytheme'><i class='icon-adjust text-dark-orange'></i>
                                    Dark orange
                                </a>
                                <a href="${ctx }/theme/contrast-brown" data-change-to="contrast-brown" name='mytheme'><i class='icon-adjust text-brown'></i>
                                    Brown
                                </a>
                            </li>
                        </ul>
                    </li>