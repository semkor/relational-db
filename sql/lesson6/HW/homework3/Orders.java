package sql.lesson6.homework3;

import java.util.Date;

public class Orders {
    private long  id;
    private Customers customers;
    private Employees employees;
    private Date orderDate;
    private Date requiredDate;
    private Date shippedDate;
    private int shipVia;
    private String freight;
    private Shippers shippers;
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private String shipPostalCode;
    private String shipCountry;

    public Orders(long id, Customers customers, Employees employees, Date orderDate, Date requiredDate, Date shippedDate, int shipVia, String freight, Shippers shippers, String shipAddress, String shipCity, String shipRegion, String shipPostalCode, String shipCountry) {
        this.id = id;
        this.customers = customers;
        this.employees = employees;
        this.orderDate = orderDate;
        this.requiredDate = requiredDate;
        this.shippedDate = shippedDate;
        this.shipVia = shipVia;
        this.freight = freight;
        this.shippers = shippers;
        this.shipAddress = shipAddress;
        this.shipCity = shipCity;
        this.shipRegion = shipRegion;
        this.shipPostalCode = shipPostalCode;
        this.shipCountry = shipCountry;
    }
}

