DROP TABLE IF EXISTS lk_age_event;

CREATE TABLE lk_age_event
(
  
  name VARCHAR(40) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary of metric for how the subject's age was measured in the study context.";
