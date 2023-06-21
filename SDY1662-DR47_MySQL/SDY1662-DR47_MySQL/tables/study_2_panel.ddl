DROP TABLE IF EXISTS study_2_panel;

CREATE TABLE study_2_panel
(
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  panel_name VARCHAR(100) NOT NULL
    COMMENT "Name of the display panel",
  
  PRIMARY KEY (study_accession, panel_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates STUDY and STUDY_PANEL.";
