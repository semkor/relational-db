package sql.lesson6.homework4;

import java.util.Date;

public class TorumCategories {
    private long id;
    private String title;
    private String descriptionCat;
    private Date dateCat;
    private String ip;

    public TorumCategories(long id, String title, String descriptionCat, Date dateCat, String ip) {
        this.id = id;
        this.title = title;
        this.descriptionCat = descriptionCat;
        this.dateCat = dateCat;
        this.ip = ip;
    }
}

