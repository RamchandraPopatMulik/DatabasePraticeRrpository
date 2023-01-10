CREATE TABLE candidate_bank_det(
id int Primary Key NOT NULL,
candidate_id int NOT NULL,
name varchar(100) NOT NULL,
account_num bigint NOT NULL,
is_account_num_verified int Not Null,
ifsc_code varchar(20) NOT NULL,
is_ifsc_code_verified int  DEFAULT 0,
pan_number varchar(10) NOT NULL,
is_pan_number_verified int DEFAULT 0,
addhaar_num int NOT NULL,
is_addhaar_num_verified int DEFAULT 0,
creator_stamp datetime NOT NULL,
creator_user int NOT NULL,
--key FK_candidate_bank_det_candidate_id (candidate_id),
FOREIGN KEY (candidate_id) REFERENCES candidates_personal_det_check(candidate_id)
) ;