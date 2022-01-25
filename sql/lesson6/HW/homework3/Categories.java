package sql.lesson6.homework3;

public class Categories {
    private long  id;
    private String categoryName;
    private String descriptions;
    private String pictures;

    public Categories(long id, String categoryName, String descriptions, String pictures) {
        this.id = id;
        this.categoryName = categoryName;
        this.descriptions = descriptions;
        this.pictures = pictures;
    }
}
