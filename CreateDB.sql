CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS users(
    user_id uuid NOT NULL DEFAULT gen_random_uuid(),
    user_name varchar(40),
    primary key (user_id)
);

CREATE TABLE IF NOT EXISTS projects(
    project_id varchar(22),
    primary key (project_id)
);

CREATE TABLE IF NOT EXISTS feedbacks(
    feedback_id uuid NOT NULL DEFAULT gen_random_uuid(),
    project_id varchar(22),
    user_id uuid,
    user_name varchar(40),
    feedback_text text,
    f_timestamp bigint,
    primary key (feedback_id),
    foreign key(project_id) references projects(project_id),
    foreign key(user_id) references users(user_id)
);

CREATE TABLE IF NOT EXISTS votes(
    vote_id uuid NOT NULL DEFAULT gen_random_uuid(),
    feedback_id uuid,
    user_id uuid,
    vote int,
    v_timestamp bigint,
    primary key (vote_id),
    foreign key (feedback_id) references feedbacks(feedback_id),
    foreign key(user_id) references users(user_id),
    unique(feedback_id, user_id)
);

CREATE TABLE IF NOT EXISTS conversions(
    conversion_id uuid NOT NULL DEFAULT gen_random_uuid(),
    project_id varchar(22),
    user_id uuid,
    c_timestamp bigint,
    primary key (conversion_id),
    foreign key(user_id) references users(user_id)
);

SELECT * FROM projects;
SELECT * FROM feedbacks;
SELECT * FROM votes;
SELECT * FROM conversions;
