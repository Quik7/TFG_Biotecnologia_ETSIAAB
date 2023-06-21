DROP TABLE IF EXISTS biosample;

CREATE TABLE biosample
(
  
  biosample_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  name VARCHAR(200)
    COMMENT "Name or identifier",
  
  planned_visit_accession VARCHAR(15)
    COMMENT "Foreign key reference to PLANNED_VISIT table",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to STUDY table",
  
  study_time_collected FLOAT
    COMMENT "Reported value",
  
  study_time_collected_unit VARCHAR(25) NOT NULL DEFAULT 'Not Specified'
    COMMENT "Standardized value in LK_TIME_UNIT table",
  
  study_time_t0_event VARCHAR(50) NOT NULL DEFAULT 'Not Specified'
    COMMENT "Standardized value in LK_T0_EVENT table",
  
  study_time_t0_event_specify VARCHAR(50)
    COMMENT "If 'Study Time T0 Event' = Other, this field specifies the study time T0 event.",
  
  subject_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to SUBJECT table",
  
  subtype VARCHAR(50)
    COMMENT "Entered by the data provider when term is not in the controlled vocabulary",
  
  type VARCHAR(50) NOT NULL DEFAULT 'Not Specified'
    COMMENT "Category",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (biosample_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Material extracted from a subject that has undergone isolation, processing and/or treatment prior to use in an assay or test. Attributes include all treatments and reagents used for sample processing and EXCLUDE reagents used to measure analytes.";

CREATE INDEX idx_biosample_subject on biosample(subject_accession);
CREATE INDEX idx_biosample_study on biosample(study_accession);
CREATE INDEX idx_biosample_planned_visit on biosample(planned_visit_accession);
CREATE INDEX idx_biosample_workspace on biosample(workspace_id);
