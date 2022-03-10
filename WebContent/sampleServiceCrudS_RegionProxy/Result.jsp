<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleServiceCrudS_RegionProxyid" scope="session" class="org.service.sregion.ServiceCrudS_RegionProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleServiceCrudS_RegionProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        String id_0id=  request.getParameter("id5");
        int id_0idTemp  = Integer.parseInt(id_0id);
        String name_1id=  request.getParameter("name7");
            java.lang.String name_1idTemp = null;
        if(!name_1id.equals("")){
         name_1idTemp  = name_1id;
        }
        java.lang.String agregarS_Region2mtemp = sampleServiceCrudS_RegionProxyid.agregarS_Region(id_0idTemp,name_1idTemp);
if(agregarS_Region2mtemp == null){
%>
<%=agregarS_Region2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(agregarS_Region2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 9:
        gotMethod = true;
        String id_2id=  request.getParameter("id12");
        int id_2idTemp  = Integer.parseInt(id_2id);
        java.lang.String eliminarS_Region9mtemp = sampleServiceCrudS_RegionProxyid.eliminarS_Region(id_2idTemp);
if(eliminarS_Region9mtemp == null){
%>
<%=eliminarS_Region9mtemp %>
<%
}else{
        String tempResultreturnp10 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(eliminarS_Region9mtemp));
        %>
        <%= tempResultreturnp10 %>
        <%
}
break;
case 14:
        gotMethod = true;
        String id_3id=  request.getParameter("id17");
        int id_3idTemp  = Integer.parseInt(id_3id);
        java.lang.String consultaIndividualS_Region14mtemp = sampleServiceCrudS_RegionProxyid.consultaIndividualS_Region(id_3idTemp);
if(consultaIndividualS_Region14mtemp == null){
%>
<%=consultaIndividualS_Region14mtemp %>
<%
}else{
        String tempResultreturnp15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(consultaIndividualS_Region14mtemp));
        %>
        <%= tempResultreturnp15 %>
        <%
}
break;
case 19:
        gotMethod = true;
        String name_4id=  request.getParameter("name22");
            java.lang.String name_4idTemp = null;
        if(!name_4id.equals("")){
         name_4idTemp  = name_4id;
        }
        String id_5id=  request.getParameter("id24");
        int id_5idTemp  = Integer.parseInt(id_5id);
        java.lang.String actualizarS_Region19mtemp = sampleServiceCrudS_RegionProxyid.actualizarS_Region(name_4idTemp,id_5idTemp);
if(actualizarS_Region19mtemp == null){
%>
<%=actualizarS_Region19mtemp %>
<%
}else{
        String tempResultreturnp20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(actualizarS_Region19mtemp));
        %>
        <%= tempResultreturnp20 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>