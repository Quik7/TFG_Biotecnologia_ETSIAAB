DROP TABLE IF EXISTS lk_cell_population;

CREATE TABLE lk_cell_population
(
  
  name VARCHAR(150) NOT NULL
    COMMENT "Name or identifier",
  
  comments VARCHAR(500)
    COMMENT "Free text to expand upon details",
  
  definition VARCHAR(150)
    COMMENT "Marker expression profile",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",

  lineage_prefix VARCHAR(15)
    COMMENT "",

  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the Cell Populations, usually applied in flow cytometry or CyTOF.";
