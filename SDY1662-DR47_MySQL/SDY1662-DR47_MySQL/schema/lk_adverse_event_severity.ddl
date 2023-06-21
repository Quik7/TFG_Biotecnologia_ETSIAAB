DROP TABLE IF EXISTS lk_adverse_event_severity;

CREATE TABLE lk_adverse_event_severity
(
  
  name VARCHAR(60) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary to categorize the severity of a recorded adverse event.";
