DROP TABLE IF EXISTS expsample_2_file_info;

CREATE TABLE expsample_2_file_info
(
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPSAMPLE table",
  
  file_info_id INT NOT NULL
    COMMENT "Foreign key reference to FILE_INFO table",
  
  result_schema VARCHAR(50) NOT NULL
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  PRIMARY KEY (expsample_accession, file_info_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates EXPSAMPLE with FILE_INFO table records.";

CREATE INDEX idx_expsample_2_file_info on expsample_2_file_info(file_info_id,expsample_accession);
