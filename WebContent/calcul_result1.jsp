<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<% 
		int id = Integer.parseInt(request.getParameter("id"));
        float i_veille = Float.parseFloat(request.getParameter("i_veille"));
        float i_alarme = Float.parseFloat(request.getParameter("i_alarme"));
        float t_veille = Float.parseFloat(request.getParameter("t_veille"));
        float t_alarme = Float.parseFloat(request.getParameter("t_alarme"));
        
       
        double n; // n coefficient de peukert appliqué dans la formule de calcul
        if (i_veille <= 1 && i_alarme <= 1) {
            n = 1;
        } else {
            n = 1.22;
        }
        double res = ((Math.pow(i_veille, n)) * t_veille + (Math.pow(i_alarme, n)) * t_alarme) * 1.25;
        float result = (float) res;
        
        session.setAttribute("id", id);
        session.setAttribute("i_veille", i_veille);
		session.setAttribute("i_alarme", i_alarme);
		session.setAttribute("t_veille", t_veille);
		session.setAttribute("t_alarme", t_alarme);
        session.setAttribute("result", result);
        
        %>
<jsp:forward page="system1_page.jsp"></jsp:forward>


