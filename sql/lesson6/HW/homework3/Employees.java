package sql.lesson6.homework3;

import java.util.Date;

public class Employees {
    private long  id;
    private String lastName;
    private String firstName;
    private String title;
    private String titleOfCourtesy;
    private Date birthDate;
    private Date hireDate;
    private String address;
    private String city;
    private String region;
    private String postalCode;
    private String country;
    private String homePhone;
    private String exstention;
    private String photo;
    private String notes;
    private String reportsTo;

    public Employees(long id, String lastName, String firstName, String title, String titleOfCourtesy, Date birthDate, Date hireDate, String address, String city, String region, String postalCode, String country, String homePhone, String exstention, String photo, String notes, String reportsTo) {
        this.id = id;
        this.lastName = lastName;
        this.firstName = firstName;
        this.title = title;
        this.titleOfCourtesy = titleOfCourtesy;
        this.birthDate = birthDate;
        this.hireDate = hireDate;
        this.address = address;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        this.country = country;
        this.homePhone = homePhone;
        this.exstention = exstention;
        this.photo = photo;
        this.notes = notes;
        this.reportsTo = reportsTo;
    }
}
