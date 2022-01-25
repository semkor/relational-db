package sql.lesson6.homework3;

public class OrderDetails {
    private Orders orders;
    private Products products;
    private double unitPrice;
    private int quantity;
    private double discount;

    public OrderDetails(Orders orders, Products products, double unitPrice, int quantity, double discount) {
        this.orders = orders;
        this.products = products;
        this.unitPrice = unitPrice;
        this.quantity = quantity;
        this.discount = discount;
    }
}
