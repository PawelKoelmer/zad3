<%@ page import="java.util.Date"%>
    <%@ page import="domain.*"%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
    <!Doctype html Public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.Random"%>
<%@ page import="javax.servlet.http.*" %>
        <html>
        <head>
        <meta http-equiv="Content-type" content="text/html; charset=ISO-8859-1">
        <title>Strona zachecajaca do cyrografu</title>
        </head>
        <body>

                <%!
                int number = (int) Math.abs(Math.random()*100000);
                %>
                <%
                    session.setAttribute("number",number);
                %>


                <jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
                <jsp:setProperty name="loan" property="number" value="<%=number %>"/>
                <jsp:setProperty name="loan" property="date" value="<%=new Date()%>"/>

        Numer wniosku:  <%=loan.getNumber()%>
        <br>
        Data wystawienia : <%=loan.getDate()%>
        <form action="person.jsp">
            <label>Wnioskowana kwota<input type="number" id="amount" name="amount"/></label><br>
            <label>Ilosc rat<input type="number" id="numberOfInstallments" name="numberOfInstallments"/></label><br>
            <input type="submit" value="Zloz wniosek"/>
        </form>
        </body>
        </html>