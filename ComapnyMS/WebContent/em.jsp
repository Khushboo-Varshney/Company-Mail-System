<jsp:useBean id="mybean" class="mypack.emailuser"/>
<jsp:setProperty property="*" name="mybean"/>
<%
	if(mybean.complain())
		out.println("successfully registered");
	else
		out.println("registration failed");
%>