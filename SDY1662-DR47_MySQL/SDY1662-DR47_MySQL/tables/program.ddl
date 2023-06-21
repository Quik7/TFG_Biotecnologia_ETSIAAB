DROP TABLE IF EXISTS program;

CREATE TABLE program
(
  
  program_id INT NOT NULL
    COMMENT "Primary key",
  
  category VARCHAR(50) NOT NULL
    COMMENT "Type of entity",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  end_date DATE
    COMMENT "End date",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  name VARCHAR(200) NOT NULL
    COMMENT "Name or identifier",
  
  short_name VARCHAR(10)
    COMMENT "Short name for the program",
  
  start_date DATE
    COMMENT "Start date",
  
  PRIMARY KEY (program_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Programs are the NIH organizational basis for administering grants and contracts.";
