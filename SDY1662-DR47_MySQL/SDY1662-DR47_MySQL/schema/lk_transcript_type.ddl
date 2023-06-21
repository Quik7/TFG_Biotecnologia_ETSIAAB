DROP TABLE IF EXISTS lk_transcript_type;

CREATE TABLE lk_transcript_type
(
  
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",

  description VARCHAR(1000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for transcript type";
