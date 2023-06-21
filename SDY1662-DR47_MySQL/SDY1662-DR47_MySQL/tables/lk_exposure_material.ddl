DROP TABLE IF EXISTS lk_exposure_material;

CREATE TABLE lk_exposure_material
(
  
  name VARCHAR(200) NOT NULL
    COMMENT "Name or identifier",

  exposure_material_id VARCHAR(50) NOT NULL
    COMMENT "",
  
  description VARCHAR(1000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for exposure material";
