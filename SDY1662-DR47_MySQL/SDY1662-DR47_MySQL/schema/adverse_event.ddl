DROP TABLE IF EXISTS adverse_event;

CREATE TABLE adverse_event
(
  
  adverse_event_accession VARCHAR(15) NOT NULL
    COMMENT "Primary Key.",
  
  causality VARCHAR(250)
    COMMENT "CDISC term for relation of Adverse Event to study (NOT RELATED, UNLIKELY RELATED, POSSIBLY RELATED, PROBABLY RELATED, DEFINITELY RELATED).",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  end_study_day FLOAT
    COMMENT "End of a duration",
  
  end_time VARCHAR(40)
    COMMENT "End of a duration",
  
  location_of_reaction_preferred VARCHAR(126)
    COMMENT "Standardized name or code for the location where reaction to adverse event occurred",
  
  location_of_reaction_reported VARCHAR(126)
    COMMENT "Location where reaction to adverse event occurred.",
  
  name_preferred VARCHAR(126)
    COMMENT "Standardized name or identifier",
  
  name_reported VARCHAR(126)
    COMMENT "Name or identifier",
  
  organ_or_body_system_preferred VARCHAR(126)
    COMMENT "Standardized name or code for the body system in the organism",
  
  organ_or_body_system_reported VARCHAR(126)
    COMMENT "Reported name or code for the body system in the organism",
  
  other_action_taken VARCHAR(250)
    COMMENT "Treatment or action applied other than planned",
  
  outcome_preferred VARCHAR(40)
    COMMENT "Standardized code of the outcome",
  
  outcome_reported VARCHAR(40)
    COMMENT "Reported outcome",
  
  relation_to_nonstudy_treatment VARCHAR(250)
    COMMENT "Determination of whether the adverse event was related to a non-planned treatment",
  
  relation_to_study_treatment VARCHAR(250)
    COMMENT "Determination of whether the adverse event was related to the study treatment",
  
  severity_preferred VARCHAR(60)
    COMMENT "Standardized value in LK_ADVERSE_EVENT_SEVERITY table",
  
  severity_reported VARCHAR(60) NOT NULL
    COMMENT "Reported value",
  
  start_study_day FLOAT
    COMMENT "Start day",
  
  start_time VARCHAR(40)
    COMMENT "Start time",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to STUDY table",
  
  study_treatment_action_taken VARCHAR(250)
    COMMENT "Planned treatment applied as a response",
  
  subject_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to SUBJECT table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (adverse_event_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Records all information typically collected for adverse events. If the adverse event is detected as part of a planned subject assessment, then the Assessment_Acc_Num foreign key will be non-null. If that key is null then the adverse event is detected through unplanned means such as subject self-reporting or clinician observation.";

CREATE INDEX idx_adverse_event_subject on adverse_event(subject_accession);
CREATE INDEX idx_adverse_event_study on adverse_event(study_accession);
CREATE INDEX idx_adverse_event_workspace on adverse_event(workspace_id);
