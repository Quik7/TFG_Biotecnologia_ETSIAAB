DROP TABLE IF EXISTS standard_curve_2_file_info;

CREATE TABLE standard_curve_2_file_info
(
  
  standard_curve_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to STANDARD_CURVE table",
  
  file_info_id INT NOT NULL
    COMMENT "Foreign key reference to FILE_INFO table",
  
  result_schema VARCHAR(50) NOT NULL
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  PRIMARY KEY (standard_curve_accession, file_info_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates STANDARD_CURVE with FILE_INFO table records.";
