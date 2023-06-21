DROP TABLE IF EXISTS lk_ancestral_population;

CREATE TABLE lk_ancestral_population
(
  
  name VARCHAR(30) NOT NULL
    COMMENT "Name or identifier",
  
  abbreviation VARCHAR(3)
    COMMENT "Abbreviation of ancestral population",
  
  description VARCHAR(4000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the ancestral populations of subjects recommended by IWHG and based on geographical boundaries and immunogenetic typing.";
