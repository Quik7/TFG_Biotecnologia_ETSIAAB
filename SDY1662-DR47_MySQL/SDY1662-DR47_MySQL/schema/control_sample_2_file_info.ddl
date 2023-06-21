DROP TABLE IF EXISTS control_sample_2_file_info;

CREATE TABLE control_sample_2_file_info
(
  
  control_sample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to CONTROL_SAMPLE table",
  
  file_info_id INT NOT NULL
    COMMENT "Foreign key reference to FILE_INFO table",
  
  result_schema VARCHAR(50) NOT NULL
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  PRIMARY KEY (control_sample_accession, file_info_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates CONTROL_SAMPLE with FILE_INFO table records.";

CREATE INDEX idx_control_sample_2_file_info on control_sample_2_file_info(file_info_id,control_sample_accession);
