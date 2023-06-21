DROP TABLE IF EXISTS lk_expsample_result_schema;

CREATE TABLE lk_expsample_result_schema
(
  
  name VARCHAR(50) NOT NULL
    COMMENT "Name or identifier",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  table_name VARCHAR(30) NOT NULL DEFAULT 'NONE'
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary that indicates in which database table are EXPSAMPLE results stored.";
