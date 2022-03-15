CREATE TABLE IF NOT EXISTS users
(
    id         CHAR(36) PRIMARY KEY,
    email      VARCHAR(254) UNIQUE NOT NULL,
    name       VARCHAR(64)         NOT NULL,
    password   VARCHAR(256)        NOT NULL,
    role       VARCHAR(20)         NOT NULL,
    created_at TIMESTAMP           NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS todos
(
    id         CHAR(36)     NOT NULL,
    title      VARCHAR(256) NOT NULL,
    content    TEXT         NOT NULL,
    owned_at   CHAR(36)     NOT NULL,
    created_at TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS tags
(
    id         CHAR(36) PRIMARY KEY,
    name       VARCHAR(64) NOT NULL,
    owned_at   CHAR(36)    NOT NULL,
    created_at TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS todo_tags
(
    todo_id    CHAR(36)    NOT NULL,
    tag_id     VARCHAR(64) NOT NULL,
    created_at TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (todo_id, tag_id)
);
