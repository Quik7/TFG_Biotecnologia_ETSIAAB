DROP TABLE IF EXISTS personnel;

CREATE TABLE personnel
(
  
  personnel_id INT NOT NULL
    COMMENT "Primary key",
  
  email VARCHAR(100)
    COMMENT "Email address for the individual in this data record",
  
  first_name VARCHAR(50) NOT NULL
    COMMENT "First name",
  
  last_name VARCHAR(50) NOT NULL
    COMMENT "Last name",
  
  organization VARCHAR(125) NOT NULL
    COMMENT "Organization or institution",
  
  PRIMARY KEY (personnel_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "PERSONNEL linked to a STUDY.";
