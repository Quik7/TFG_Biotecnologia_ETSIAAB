DROP TABLE IF EXISTS lk_cell_population_marker;

CREATE TABLE lk_cell_population_marker
(
  
  name VARCHAR(150) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",

  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the Cell Population Markers, usually applied in flow cytometry or CyTOF.";
