package domain;

public class Adress {

    private String city;
    private String street;
    private String postalCode;
    private int houseNumber;
    private int flatNumber;
    private int telphoneNumber;

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public int getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(int houseNumber) {
        this.houseNumber = houseNumber;
    }

    public int getFlatNumber() {
        return flatNumber;
    }

    public void setFlatNumber(int flatNumber) {
        this.flatNumber = flatNumber;
    }

    public int getTelphoneNumber() {
        return telphoneNumber;
    }

    public void setTelphoneNumber(int telphoneNumber) {
        this.telphoneNumber = telphoneNumber;
    }
}
