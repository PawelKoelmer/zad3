<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!Doctype html Public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=ISO-8859-1">
    <title>Utworz osobe</title>
</head>
<body>
<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"></jsp:useBean>
<jsp:setProperty name="parameters" property="amount"></jsp:setProperty>
<jsp:setProperty name="parameters" property="numberOfInstallments"></jsp:setProperty>

Numer wniosku: <jsp:getProperty name="loan" property="number"/><br>
Wnioskowana kwota: <jsp:getProperty name="parameters" property="amount"/>

<br>
<form action="adres.jsp">
    <label>Podaj imie: <input type="text" id="name" name="name"/></label><br>
    <label>Podaj nazwisko: <input type="text" id="surname" name="surname"/></label><br>
    <label>Podaj date urodzenia: <input type="text" id="dateOfBirth" name="dateOfBirth"/></label><br>
    <label>Podaj PESEL: <input type="text" id="PESEL" name="PESEL"/></label><br>
    <label>Podaj email: <input type="text" id="email" name="email"/></label><br>
    <input type="submit" value="Wyslij dane">
</form>

</body>
</html>