DROP TABLE IF EXISTS lk_disease;

CREATE TABLE lk_disease
(
  
  name VARCHAR(250) NOT NULL
    COMMENT "Name or identifier",

  disease_ontology_id VARCHAR(50) NOT NULL
    COMMENT "",
  
  description VARCHAR(1000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",

  human_phenotype_id VARCHAR(50)
    COMMENT "Link to Human Phenotype Ontology",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for disease.";
