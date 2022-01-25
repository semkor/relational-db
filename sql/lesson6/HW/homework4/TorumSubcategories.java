package sql.lesson6.homework4;

import java.util.Date;

public class TorumSubcategories {
    private long id;
    private  TorumCategories torumCategories;
    private String title;
    private String descriptionNew;
    private Date dateSubcat;
    private String ip;

    public TorumSubcategories(long id, TorumCategories torumCategories, String title, String descriptionNew, Date dateSubcat, String ip) {
        this.id = id;
        this.torumCategories = torumCategories;
        this.title = title;
        this.descriptionNew = descriptionNew;
        this.dateSubcat = dateSubcat;
        this.ip = ip;
    }
}
