DROP TABLE IF EXISTS lk_virus_strain;

CREATE TABLE lk_virus_strain
(
  
  name VARCHAR(200) NOT NULL
    COMMENT "Name or identifier",
  
  center_id_name_season_list VARCHAR(500)
    COMMENT "List of teams studying a virus in a season",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  season_list VARCHAR(100)
    COMMENT "List of seasons for the virus",
  
  taxonomy_id INT NOT NULL
    COMMENT "Standardized value in LK_SPECIES",

  virus_name VARCHAR(10)
    COMMENT "Reported value",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for virus strains.";
