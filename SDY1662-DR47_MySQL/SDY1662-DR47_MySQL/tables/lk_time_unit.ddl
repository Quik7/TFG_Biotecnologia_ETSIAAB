DROP TABLE IF EXISTS lk_time_unit;

CREATE TABLE lk_time_unit
(
  
  name VARCHAR(25) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",

  year_divisor FLOAT
    COMMENT "Used to convert ages to years unit",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for time units.";
