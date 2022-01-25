package lessons2;

import lessons2.util.Date;

public class Order {
    private long id;
    private String productName;
    private int price;
    private Date dateOrdered;
    private Date date;

    public Order(long id, String productName, int price, Date dateOrdered, Date date) {
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.dateOrdered = dateOrdered;
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public String getProductName() {
        return productName;
    }

    public int getPrice() {
        return price;
    }

    public Date getDateOrdered() {
        return dateOrdered;
    }

    public Date getDate() {
        return date;
    }
}
