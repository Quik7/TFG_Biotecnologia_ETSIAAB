DROP TABLE IF EXISTS fcs_header;

CREATE TABLE fcs_header
(
  fcs_header_id INT NOT NULL
    COMMENT "Primary key",
  
  compensation_flag VARCHAR(1)
    COMMENT "(Y/N) flag regarding whether or not the source fcs file was compensated",
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPSAMPLE table",
  
  fcs_file_name VARCHAR(250)
    COMMENT "Name of FCS file",
  
  fcs_header_text LONGTEXT
    COMMENT "Text header portion of the FCS file",
  
  fcs_version FLOAT
    COMMENT "Version of the FCS standard for this FCS file",
  
  file_info_id INT NOT NULL
    COMMENT "Foreign key reference to FILE_INFO table",
  
  maximum_intensity FLOAT
    COMMENT "Maximum intensity value found in the FCS file",
  
  minimum_intensity FLOAT
    COMMENT "Minimum intensity value found in the FCS file",
  
  number_of_events INT
    COMMENT "The total number of cells assayed in the FCS file",
  
  number_of_markers INT
    COMMENT "Total number of markers assayed in the FCS file",
  
  panel_preferred VARCHAR(2000)
    COMMENT "Standardized name of marker set",
  
  panel_reported VARCHAR(2000)
    COMMENT "Reported name of marker set",
  
  PRIMARY KEY (fcs_header_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "The text portion of .fcs files are stored.";

