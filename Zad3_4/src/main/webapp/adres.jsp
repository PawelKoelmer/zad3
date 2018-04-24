<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!Doctype html Public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=ISO-8859-1">
    <title>Dodaj adres użytkownika</title>
</head>
<body>
<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
<jsp:useBean id="person" class="domain.Person" scope="session"/>

<jsp:setProperty name="person" property="name" param="name"/>
<jsp:setProperty name="person" property="surname" param="surname"/>
<jsp:setProperty name="person" property="dob" param="dateOfBirth"/>
<jsp:setProperty name="person" property="pesel" param="PESEL"/>
<jsp:setProperty name="person" property="email" param="email"/>

Numer umowy: ${loan.number}<br>
Wnioskowana Kwota: ${parameters.amount}<br>
Imie wnioskujacego: ${person.name}<br>
Nazwisko wnioskujacego: ${person.surname}<br>
E-mail wnioskujacego: ${person.email}<br>

<%
    session.setAttribute("osoba",person.getName());
%>

<form action="succes.jsp">
    <label>Podaj Miasto: <input type="text" id="city" name="city"/></label><br>
    <label>Podaj Ulice: <input type="text" id="street" name="street"/></label><br>
    <label>Podaj Kod pocztowy: <input type="text" id="postalCode" name="postalCode"/></label><br>
    <label>Podaj numer domu: <input type="text" id="houseNumber" name="houseNumber"/></label><br>
    <label>Podaj numer mieszkania: <input type="text" id="flatNumber" name="flatNumber"/></label><br>
    <label>Podaj telefon: <input type="text" id="telephoneNumber" name="telephoneNumber"/></label><br>
    <input type="submit" value="Wyslij dane">
</form>

</body>
</html>