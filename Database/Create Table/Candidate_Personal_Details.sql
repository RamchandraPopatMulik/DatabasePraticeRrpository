CREATE TABLE candidates_personal_det_check (
id int NOT NULL,
candidate_id int  NOT NULL,
field_name int NOT NULL,
is_verified int NOT NULL,
lastupd_stamp datetime NOT NULL,
lastupd_user int NOT NULL,
creator_stamp datetime NOT NULL,
creator_user int NOT NULL
);

