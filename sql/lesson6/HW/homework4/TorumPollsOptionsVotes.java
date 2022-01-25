package sql.lesson6.homework4;

public class TorumPollsOptionsVotes {


}
/*CREATE TABLE torumPollsOptionsVotes (
    id INT,
    CONSTRAINT torumPollsOptionsVotesId PRIMARY KEY (id),
    idPollsOption INT,
        CONSTRAINT pollsOption_FK FOREIGN KEY (idPollsOption) REFERENCES torumPollsOptions(id),
    idUser INT,
        CONSTRAINT usersPoll_FK FOREIGN KEY (idUser) REFERENCES usersNew(id),
    datePollsVotes TIMESTAMP,
    ip VARCHAR(20)
);*/