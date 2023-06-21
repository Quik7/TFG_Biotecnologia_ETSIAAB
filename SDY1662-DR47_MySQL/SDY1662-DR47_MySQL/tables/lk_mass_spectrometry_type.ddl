DROP TABLE IF EXISTS lk_mass_spectrometry_type;

CREATE TABLE lk_mass_spectrometry_type
(
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",

  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the mass spectrometry types.";
