package sql.lesson6.homework4;

import java.util.Date;

public class UsersNew {
    private long id;
    private String nick;
    private String passwords;
    private String email;
    private Date dateUsers;
    private float karma;
    private String ip;

    public UsersNew(long id, String nick, String passwords, String email, Date dateUsers, float karma, String ip) {
        this.id = id;
        this.nick = nick;
        this.passwords = passwords;
        this.email = email;
        this.dateUsers = dateUsers;
        this.karma = karma;
        this.ip = ip;
    }
}
