
CREATE TABLE IF NOT EXISTS projects(
    project_id varchar(22),
    primary key (project_id)
);

CREATE TABLE IF NOT EXISTS feedbacks(
    feedback_id uuid,
    project_id varchar(22),
    user_id uuid,
    user_name varchar(40),
    feedback_text text,
    f_timestamp bigint,
    primary key (feedback_id),
    foreign key(project_id) references projects(project_id)
);

CREATE TABLE IF NOT EXISTS votes(
    vote_id uuid,
    feedback_id uuid,
    user_id uuid,
    vote int,
    v_timestamp bigint,
    primary key (vote_id),
    foreign key (feedback_id) references feedbacks(feedback_id)
);

CREATE TABLE IF NOT EXISTS conversions(
    conversion_id uuid,
    project_id varchar(22),
    user_id uuid,
    c_timestamp bigint,
    primary key (conversion_id)
);

SELECT * FROM projects;
SELECT * FROM feedbacks;
SELECT * FROM votes;
SELECT * FROM conversions;
