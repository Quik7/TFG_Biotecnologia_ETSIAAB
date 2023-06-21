DROP TABLE IF EXISTS assessment_2_file_info;

CREATE TABLE assessment_2_file_info
(
  
  assessment_panel_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to ASSESSMENT_PANEL table",
  
  file_info_id INT NOT NULL
    COMMENT "Foreign key reference to FILE_INFO table",
  
  result_schema VARCHAR(50) NOT NULL
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  PRIMARY KEY (assessment_panel_accession, file_info_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates ASSESEMENT_PANEL with FILE_INFO table records.";

