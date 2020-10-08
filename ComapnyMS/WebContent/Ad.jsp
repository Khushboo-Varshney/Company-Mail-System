<jsp:useBean id="mybean" class="mypack.Adminemail"/>
<jsp:setProperty property="*" name="mybean"/>
<%
	if(mybean.complain())
		out.println("successfully registered");
	else
		out.println("registration failed");
%>