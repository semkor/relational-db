package sql.lesson6.homework4;

import java.util.Date;

public class TorumPollsOptions {
    private long id;
    private TorumPosts torumPosts;
    private String title;
    private Date datePolls;

    public TorumPollsOptions(long id, TorumPosts torumPosts, String title, Date datePolls) {
        this.id = id;
        this.torumPosts = torumPosts;
        this.title = title;
        this.datePolls = datePolls;
    }
}