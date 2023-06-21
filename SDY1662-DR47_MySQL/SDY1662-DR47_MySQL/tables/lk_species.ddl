DROP TABLE IF EXISTS lk_species;

CREATE TABLE lk_species
(
  
  name VARCHAR(30) NOT NULL
    COMMENT "Name or identifier",
  
  common_name VARCHAR(100)
    COMMENT "Common name for the species.",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  taxonomy_id VARCHAR(10) NOT NULL
    COMMENT "Standardized value in LK_SPECIES",
  
  taxonomy_id_subset VARCHAR(10) NOT NULL
    COMMENT "Species subset",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary of common species names.";
