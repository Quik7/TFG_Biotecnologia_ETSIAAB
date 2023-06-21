DROP TABLE IF EXISTS intervention;

CREATE TABLE intervention
(
  
  intervention_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  compound_name_reported VARCHAR(250)
    COMMENT "Reported value",
  
  compound_role VARCHAR(40) NOT NULL
    COMMENT "Roles are: concommitant medication, substance use, and intervention",
  
  dose FLOAT
    COMMENT "Standardized dose",
  
  dose_freq_per_interval VARCHAR(40)
    COMMENT "Reported dose frequency",
  
  dose_reported VARCHAR(150)
    COMMENT "Reported dose",
  
  dose_units VARCHAR(40)
    COMMENT "Dose units",
  
  duration VARCHAR(40) 
    COMMENT "Length of time",
  
  duration_unit VARCHAR(10)
    COMMENT "Duration unit",
  
  end_day VARCHAR(40)
    COMMENT "End of a duration",
  
  end_time VARCHAR(40)
    COMMENT "End of a duration",
  
  formulation VARCHAR(125)
    COMMENT "Form of compund",
  
  is_ongoing VARCHAR(40)
    COMMENT "Boolean value for current duration",
  
  name_preferred VARCHAR(40)
    COMMENT "Standardized name or idenitifier",
  
  name_reported VARCHAR(125) NOT NULL
    COMMENT "Name or identifier",
  
  reported_indication VARCHAR(255)
    COMMENT "Reported reason for an intervention",
  
  route_of_admin_preferred VARCHAR(40)
    COMMENT "Standardized route of administration",
  
  route_of_admin_reported VARCHAR(40)
    COMMENT "Reported route of administration",
  
  start_day VARCHAR(40)
    COMMENT "Start day",
  
  start_time VARCHAR(40)
    COMMENT "Start time",
  
  status VARCHAR(40)
    COMMENT "Reported value",
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  subject_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the SUBJECT table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (intervention_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "The compounds, procedures or devices encountered by a subject during a study as indicated by the study protocol, medical care or self-administered.";

CREATE INDEX idx_intervention_subject on intervention(subject_accession);
CREATE INDEX idx_intervention_study on intervention(study_accession);
CREATE INDEX idx_intervention_workspace on intervention(workspace_id);

