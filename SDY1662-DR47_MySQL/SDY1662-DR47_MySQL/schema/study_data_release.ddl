DROP TABLE IF EXISTS study_data_release;

CREATE TABLE study_data_release
(
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Study accession",
  
  data_release_version INT
    COMMENT "Version where study was released or updated",
  
  data_release_date DATE
    COMMENT "Date for study released or updated",
  
  status VARCHAR(50)
    COMMENT "Indicates initial or updated",
  
  PRIMARY KEY (study_accession, data_release_version, data_release_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Provides information on when a study was initially released or updated.";
