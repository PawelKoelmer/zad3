package domain;

import java.util.Date;

public class LoanApplication {
    private Person person;
    private Adress adress;
    private LoanParameters parameters;
    private int number;
    private Date date;

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Adress getAdress() {
        return adress;
    }

    public void setAdress(Adress adress) {
        this.adress = adress;
    }

    public LoanParameters getParameters() {
        return parameters;
    }

    public void setParameters(LoanParameters parameters) {
        this.parameters = parameters;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
