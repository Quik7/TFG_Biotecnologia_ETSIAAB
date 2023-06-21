DROP TABLE IF EXISTS lk_data_completeness;

CREATE TABLE lk_data_completeness
(
  
  id INT NOT NULL
    COMMENT "Scale of 0-2 for the level of completeness of the data submitted to ImmPort.",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for indicating the extent to which a study data in ImmPort is complete with regard to the study protocol.";
