DROP TABLE IF EXISTS study_glossary;

CREATE TABLE study_glossary
(
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  definition VARCHAR(500) NOT NULL
    COMMENT "Definition of glossary term",
  
  term VARCHAR(125) NOT NULL
    COMMENT "Term defined in the glossary.",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (study_accession, term)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Definition of terms in a STUDY";

CREATE INDEX idx_study_glossaryworkspace on study_glossary(workspace_id);
