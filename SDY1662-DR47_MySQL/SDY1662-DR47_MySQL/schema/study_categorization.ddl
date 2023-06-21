DROP TABLE IF EXISTS study_categorization;

CREATE TABLE study_categorization
(
  
  study_categorization_id INT NOT NULL
    COMMENT "Primary key",
  
  research_focus VARCHAR(50) NOT NULL
    COMMENT "Standardized value in LK_RESEARCH_FOCUS table",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  PRIMARY KEY (study_categorization_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Describes a study's focus, purpose or category.";

CREATE UNIQUE INDEX idx_study_categorization on study_categorization(study_accession, research_focus);
