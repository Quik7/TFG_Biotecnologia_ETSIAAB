DROP TABLE IF EXISTS reported_early_termination;

CREATE TABLE reported_early_termination
(
  
  early_termination_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  is_adverse_event_related VARCHAR(1)
    COMMENT "(Y/N) field to indicate whether an adverse event suffered by the subject contributed to the removal from the study prematurely",
  
  is_subject_requested VARCHAR(1)
    COMMENT "(Y/N) field to indicate whether or not the subject requested to be removed from the study.",
  
  reason_preferred VARCHAR(40)
    COMMENT "Standardized code for the reason for study subject termination  (cv is still TBD)",
  
  reason_reported VARCHAR(250)
    COMMENT "Reason noted by the data provider for why the subject terminated participation in the study",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",
  
  study_day_reported INT
    COMMENT "Reported value",
  
  subject_accession VARCHAR(15)
    COMMENT "Foreign key reference to the SUBJECT table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (early_termination_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Records information about why a particular subject did not complete participation in the study.";

CREATE INDEX idx_early_termination_study on reported_early_termination(study_accession);
CREATE INDEX idx_early_termination_subject on reported_early_termination(subject_accession);
CREATE INDEX idx_early_termination_workspace on reported_early_termination(workspace_id);

