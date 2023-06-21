DROP TABLE IF EXISTS study_personnel;

CREATE TABLE study_personnel
(
  
  person_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  site_name VARCHAR(100) NOT NULL
    COMMENT "Name of the site ",
  
  email VARCHAR(100)
    COMMENT "Email address for the individual in this data record",
  
  first_name VARCHAR(40)
    COMMENT "First name",
  
  honorific VARCHAR(20)
    COMMENT "Honorific title for the individual in this data record",
  
  last_name VARCHAR(40)
    COMMENT "Family name",

  orcid VARCHAR(1000)
    COMMENT "Open Researcher and Contributer ID",
  
  organization VARCHAR(125)
    COMMENT "Organization or institution",
  
  role_in_study VARCHAR(40)
    COMMENT "Role for personnel",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  suffixes VARCHAR(40)
    COMMENT "Name suffix",
  
  title_in_study VARCHAR(100)
    COMMENT "Personnel title",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (person_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "PERSONNEL associated with a STUDY.";
