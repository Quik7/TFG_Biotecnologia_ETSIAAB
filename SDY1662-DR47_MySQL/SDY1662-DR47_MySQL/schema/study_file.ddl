DROP TABLE IF EXISTS study_file;

CREATE TABLE study_file
(
  
  study_file_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  description VARCHAR(4000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  file_name VARCHAR(250) NOT NULL
    COMMENT "File name",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to STUDY table",
  
  study_file_type VARCHAR(50) NOT NULL DEFAULT 'Study Summary Description'
    COMMENT "Standardized value in LK_STUDY_FILE_TYPE table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (study_file_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Contains files_associated with a STUDY.";

CREATE INDEX idx_study_file_study on study_file(study_accession);
CREATE INDEX idx_study_file_type on study_file(study_file_type);
CREATE INDEX idx_study_file_workspace on study_file(workspace_id);

