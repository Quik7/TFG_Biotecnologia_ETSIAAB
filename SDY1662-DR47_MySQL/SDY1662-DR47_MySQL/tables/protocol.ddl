DROP TABLE IF EXISTS protocol;

CREATE TABLE protocol
(
  
  protocol_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  file_name VARCHAR(250) NOT NULL
    COMMENT "File name",
  
  name VARCHAR(250) NOT NULL
    COMMENT "Name or identifier",
  
  original_file_name VARCHAR(250) NOT NULL
    COMMENT "Original file name",
  
  type VARCHAR(100) NOT NULL DEFAULT 'Not Specified'
    COMMENT "Category",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (protocol_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Describes the methods and procedures in studies, experiments, and lab tests. Protocols may be of any file type.";
