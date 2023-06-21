DROP TABLE IF EXISTS lk_study_panel;

CREATE TABLE lk_study_panel
(
  
  name VARCHAR(100) NOT NULL
    COMMENT "Name or identifier",
  
  collapsible VARCHAR(1)
    COMMENT "Determines whether a panel is collapsible or static",
  
  description VARCHAR(1000)
    COMMENT "Free text to expand upon details",
  
  display_name VARCHAR(100)
    COMMENT "Display name for the study panel.",
  
  sort_order INT
    COMMENT "Sort order.",
  
  visible VARCHAR(1)
    COMMENT "(Y/N) value that determines whether the panel expanded by default when the study detail page is initially opened",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "controlled vocabulary that lists the names of web display panels that may be associated with a given study.";
