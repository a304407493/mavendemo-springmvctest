<%@page import="javacommon.utils.LocalIPUtils"%>
<%@page import="javacommon.utils.HttpHeaderUtils"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<a href="testDruid.jsp">测试Druid</a>
	<%
	out.println("忽略start------------------------------------------<br/>");
	String basePath = request.getScheme()+"://"+request.getServerName()
			+":"+request.getServerPort()+request.getContextPath()+"/";
	out.println("basePath:"+basePath+"<br/>");//
	out.println("RemoteUser:"+request.getRemoteUser()+"<br/>");//
    out.println("PathInfo:"+request.getPathInfo()+"<br/>");
    out.println("忽略end  ------------------------------------------<br/>");
    out.println("<br/>");
    out.println("客户端start------------------------------------------<br/>");
	out.println("Scheme/提交请求协议:"+request.getScheme()+"<br/>");//获取协议http&https
    out.println("Method/提交请求方式:"+request.getMethod()+"<br/>");//得到请求方式post&get
    out.println("Referer/页面来源:"+request.getHeader("Referer")+"<br/>");//页面来源
    out.println("RemoteHost/客户端域名(不确定返回客户端IP):"+request.getRemoteHost()+"<br/>");//得到来访者的端口号//大部分是有效的；反向代理获取不到真实IP
    out.println("RemoteAddr/客户端IP:"+request.getRemoteAddr()+"<br/>");//得到来访者的IP地址//大部分是有效的；反向代理获取不到真实IP
    String clientIp = HttpHeaderUtils.getClientIP(request);
    if (StringUtils.isNotBlank(clientIp) && clientIp.length() > 15) {
        clientIp = clientIp.split(",")[0];
        if (clientIp.length() > 15) {
            clientIp = clientIp.substring(0, 15);
        }
    }
    out.println("clientIp/客户端真实IP:"+clientIp+"<br/>");
    out.println("客户端end  ------------------------------------------<br/>");
    out.println("<br/>");
    out.println("服务器端start------------------------------------------<br/>");
    //协议
    out.println("Scheme/提交请求协议:"+request.getScheme()+"<br/>");//获取协议http&https
    //域名orIP
    out.println("ServerName/服务器端域名(不确定返回服务器IP):"+request.getServerName()+"<br/>");//
    out.println("LocalAddr:"+request.getLocalAddr()+"<br/>");//获取WEB服务器的IP地址
    out.println("LocalName:"+request.getLocalName()+"<br/>");//获取WEB服务器的主机名
    String serverIp=LocalIPUtils.getIp4Single();
    out.println("serverIp/本地真实IP/服务器端真实IP:"+serverIp+"<br/>");
    //端口号
    out.println("ServerPort:"+String.valueOf(request.getServerPort())+"<br/>");
    //资源地址(项目名+页面)
    out.println("ContextPath/站点的根路径/项目名:"+request.getContextPath()+"<br/>");// /blank-web
	out.println("URI/网站资源地址(项目名+页面):"+request.getRequestURI()+"<br/>");//得到请求的资源
	out.println("URL/互联网资源(协议://+域名+端口号+资源地址):"+request.getRequestURL().toString()+"<br/>");//得到请求的URL地址
	//请求参数
	out.println("QueryString/请求参数:"+request.getQueryString()+"<br/>");//得到请求的URL地址中附带的参数
    //上面组合为：互联网资源加请求参数
    String urlWithparam1=request.getScheme()+"://"+serverIp+":"+request.getServerPort()+request.getRequestURI() + (request.getQueryString() == null ? "" : "?"+request.getQueryString());
    out.println("urlWithparam/互联网资源加请求参数1:"+urlWithparam1+"<br/>");
	String urlWithparam2=request.getRequestURL() + (request.getQueryString() == null ? "" : "?"+request.getQueryString());
    out.println("urlWithparam/互联网资源加请求参数2:"+urlWithparam2+"<br/>");
    out.println("SessionId/会话ID:"+request.getRequestedSessionId()+"<br/>");
    out.println("服务器端end  ------------------------------------------<br/>");
    out.println("<br/>");

	%>
</body>
</html>