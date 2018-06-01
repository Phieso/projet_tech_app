<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<% 
		int id = Integer.parseInt(request.getParameter("id"));
        float i_veille2 = Float.parseFloat(request.getParameter("i_veille2"));
        float i_alarme2 = Float.parseFloat(request.getParameter("i_alarme2"));
        
        double n; // n coefficient de peukert appliqué dans la formule de calcul
        if (i_veille2 <= 1 && i_alarme2 <= 1) {
            n = 1;
        } else {
            n = 1.22;
        }
        double res = ((Math.pow(i_veille2, n)) * 12 + (Math.pow(i_alarme2, n))*1) * 1.25;
        float result2 = (float) res;
        
        session.setAttribute("id", id);
        session.setAttribute("i_veille2", i_veille2);
		session.setAttribute("i_alarme2", i_alarme2);
        session.setAttribute("result2", result2);
        
        %>

<jsp:forward page="system2_page.jsp"></jsp:forward>

