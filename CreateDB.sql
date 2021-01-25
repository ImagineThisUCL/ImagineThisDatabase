create database imaginethisdb;
use imaginethisdb;

CREATE TABLE feedback(
    feedback_id varchar(36),
    project_id varchar(22),
    user_id varchar(36),
    user_name varchar(40),
    feedback_text text,
    f_timestamp int,
    primary key (feedback_id)
);

CREATE TABLE vote(
    vote_id varchar(36),
    feedback_id varchar(36),
    user_id varchar(36),
    vote int,
    v_timestamp int,
    primary key (vote_id),
    foreign key (feedback_id) references feedback(feedback_id)
);

CREATE TABLE conversion(
    conversion_id varchar(36),
    project_id varchar(22),
    user_id varchar(36),
    c_timestamp int,
    primary key (conversion_id)
);