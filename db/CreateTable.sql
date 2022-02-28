CREATE TABLE IF NOT EXISTS todos
             (
                          id         INTEGER NOT NULL AUTO_INCREMENT,
                          task       VARCHAR(30) NOT NULL,
                          complete   BOOLEAN,
                          PRIMARY KEY (id)
);
