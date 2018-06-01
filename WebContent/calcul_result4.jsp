<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<% 
		int id = Integer.parseInt(request.getParameter("id"));
        float i_veille4 = Float.parseFloat(request.getParameter("i_veille4"));
        
        double n; // n coefficient de peukert appliqué dans la formule de calcul
        if (i_veille4 <= 1) {
            n = 1;
        } else {
            n = 1.22;
        }
        double res = ((Math.pow(i_veille4, n))* 1) * 1.25;
        float result4 = (float) res;
        
        session.setAttribute("id", id);
        session.setAttribute("i_veille4", i_veille4);
        session.setAttribute("result4", result4);
        %>

<jsp:forward page="system4_page.jsp"></jsp:forward>


