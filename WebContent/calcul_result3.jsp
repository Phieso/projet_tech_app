<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<% 
		int id = Integer.parseInt(request.getParameter("id"));
        float i_veille3 = Float.parseFloat(request.getParameter("i_veille3"));
        float i_alarme3 = Float.parseFloat(request.getParameter("i_alarme3"));
        float i_delestage3 = Float.parseFloat(request.getParameter("i_delestage3"));
        float t_delestage3 = Float.parseFloat(request.getParameter("t_delestage3"));
        
        double n; // n coefficient de peukert appliqué dans la formule de calcul
        if (i_veille3 <= 1 && i_alarme3 <= 1) {
            n = 1;
        } else {
            n = 1.22;
        }
        double res = ((Math.pow(i_veille3, n)) * t_delestage3 + (Math.pow(i_delestage3, n)) * (12 - t_delestage3) + (Math.pow(i_alarme3, n))*1 ) * 1.25;
        float result3 = (float) res;
        
        session.setAttribute("id", id);
        session.setAttribute("i_veille3", i_veille3);
		session.setAttribute("i_alarme3", i_alarme3);
		session.setAttribute("i_delestage3", i_delestage3);
		session.setAttribute("t_delestage3", t_delestage3);
        session.setAttribute("result3", result3);
        %>

<jsp:forward page="system3_page.jsp"></jsp:forward>

