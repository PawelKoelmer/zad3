<%@ page import="domain.LoanApplication" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!Doctype html Public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=ISO-8859-1">
    <title>Strona zachecajaca do cyrografu</title>
</head>
<body>
<jsp:useBean id="loanService" class="service.LoanService" scope="application"/>
<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
<jsp:useBean id="person" class="domain.Person" scope="session"/>
<jsp:useBean id="adress" class="domain.Adress" scope="session"/>

<jsp:setProperty name="adress" property="*"/>
<%
    loan.setAdress(adress);
    loan.setPerson(person);
    loan.setParameters(parameters);
    loanService.add(loan);
%>
<%
    session.setAttribute("masterloan",loanService.getLoans());
%>
<ul>
    <%
        for(LoanApplication loanApplication: loanService.getLoans()){
    %>
    <li>Wniosek: <%=loanApplication.getNumber() %>
      Osoba:  <%=loanApplication.getPerson().getSurname() %>
      Kwota:  <%=loanApplication.getParameters().getAmount()%>
    </li>
    <% } %>
</ul>
</body>
</html>