package sql.lesson6.homework3;

public class Products {
    private long  id;
    private String productName;
    private Suppliers suppliers;
    private Categories categories;
    private int quantityPerUnit;
    private double unitPrice;
    private int unitsInStock;
    private int unitsOrOrder;
    private int reorderLevel;
    private boolean discontinued;

    public Products(long id, String productName, Suppliers suppliers, Categories categories, int quantityPerUnit, double unitPrice, int unitsInStock, int unitsOrOrder, int reorderLevel, boolean discontinued) {
        this.id = id;
        this.productName = productName;
        this.suppliers = suppliers;
        this.categories = categories;
        this.quantityPerUnit = quantityPerUnit;
        this.unitPrice = unitPrice;
        this.unitsInStock = unitsInStock;
        this.unitsOrOrder = unitsOrOrder;
        this.reorderLevel = reorderLevel;
        this.discontinued = discontinued;
    }
}