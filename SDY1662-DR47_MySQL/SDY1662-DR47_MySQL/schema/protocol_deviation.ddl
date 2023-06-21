DROP TABLE IF EXISTS protocol_deviation;

CREATE TABLE protocol_deviation
(
  
  protocol_deviation_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  description VARCHAR(4000) NOT NULL
    COMMENT "Free text to expand upon details",
  
  is_adverse_event_related VARCHAR(1)
    COMMENT "(Y/N) field to indicate whether an adverse event suffered by the subject contributed to the protocol deviation.",
  
  reason_for_deviation VARCHAR(250)
    COMMENT "Description for the reason for deviating from the study protocol",
  
  resolution_of_deviation VARCHAR(500)
    COMMENT "Description of the action taken to prevent deviation from re-occuring",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",
  
  study_end_day INT
    COMMENT "Reported value",
  
  study_start_day INT NOT NULL
    COMMENT "Reported value",
  
  subject_accession VARCHAR(15)
    COMMENT "Foreign key reference to the SUBJECT table",
  
  subject_continued_study VARCHAR(1)
    COMMENT "An indicator (Y/N) as to whether the subject continued to participate in the study",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (protocol_deviation_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Records the documented deviations from the defined study protocol.";

CREATE INDEX idx_procotol_deviation_study on protocol_deviation(study_accession);
CREATE INDEX idx_procotol_deviation_subject on protocol_deviation(subject_accession);
CREATE INDEX idx_procotol_deviation_workspace on protocol_deviation(workspace_id);

