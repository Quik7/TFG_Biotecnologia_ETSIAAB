DROP TABLE IF EXISTS experiment;

CREATE TABLE experiment
(
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  measurement_technique VARCHAR(50) NOT NULL
    COMMENT "Standardized value in LK_EXP_MEASUREMENT_TECH table",
  
  name VARCHAR(500)
    COMMENT "Name or identifier",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to STUDY table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (experiment_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Describes the type of experiment, measurement technique and links to protocols used in the experiment.";

CREATE INDEX idx_experiment_study on experiment(study_accession);
CREATE INDEX idx_experiment_workspace on experiment(workspace_id);
