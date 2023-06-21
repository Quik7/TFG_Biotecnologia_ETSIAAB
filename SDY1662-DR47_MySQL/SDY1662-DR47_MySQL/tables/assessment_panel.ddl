DROP TABLE IF EXISTS assessment_panel;

CREATE TABLE assessment_panel
(
  
  assessment_panel_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  assessment_type VARCHAR(125)
    COMMENT "Category",
  
  name_preferred VARCHAR(125)
    COMMENT "Standardized name or identifier",
  
  name_reported VARCHAR(125)
    COMMENT "Name or identifier",

  result_schema VARCHAR(50) NOT NULL
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  status VARCHAR(40)
    COMMENT "Reported value",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to STUDY table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (assessment_panel_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Evaluations ( CRS, questionaires, ratings based on a reference scale) of subjects that do not involve drawing a sample from a subject.";

