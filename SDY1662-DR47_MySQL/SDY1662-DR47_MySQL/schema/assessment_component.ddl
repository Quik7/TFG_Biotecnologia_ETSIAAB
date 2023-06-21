DROP TABLE IF EXISTS assessment_component;

CREATE TABLE assessment_component
(
  
  assessment_component_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  age_at_onset_preferred FLOAT
    COMMENT "Standardized age value",
  
  age_at_onset_reported VARCHAR(100)
    COMMENT "Reported age value",
  
  age_at_onset_unit_preferred VARCHAR(25)
    COMMENT "Standardized value in the LK_TIME_UNIT table",
  
  age_at_onset_unit_reported VARCHAR(25)
    COMMENT "Reported unit",
  
  assessment_panel_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to ASSESSMENT_PANEL table",
  
  is_clinically_significant VARCHAR(1) DEFAULT 'U'
    COMMENT "Y/N field to specify whether the practitioner viewed this measure as clinically relevant to the patient",
  
  location_of_finding_preferred VARCHAR(256)
    COMMENT "Standardized name or code for the location of finding.",
  
  location_of_finding_reported VARCHAR(256)
    COMMENT "Localization of a finding when organ_or_body_system is insufficiently precise",
  
  name_preferred VARCHAR(150)
    COMMENT "Standardized name or idenitifier",
  
  name_reported VARCHAR(150) NOT NULL
    COMMENT "Name or identifier",
  
  organ_or_body_system_preferred VARCHAR(100)
    COMMENT "Standardized name or code for the body system in the organism",
  
  organ_or_body_system_reported VARCHAR(100)
    COMMENT "Reported name or code for the body system in the organism",
  
  planned_visit_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to PLANNED_VISIT table",
  
  reference_range_accession VARCHAR(15)
    COMMENT "Foreign key reference to REFERENCE_RANGE table",
  
  result_unit_preferred VARCHAR(50)
    COMMENT "Standardized value",
  
  result_unit_reported VARCHAR(40)
    COMMENT "Reported value",
  
  result_value_category VARCHAR(40)
    COMMENT "Reported value",
  
  result_value_preferred FLOAT
    COMMENT "Standardized value",
  
  result_value_reported VARCHAR(250)
    COMMENT "Reported value",
  
  study_day FLOAT
    COMMENT "Reported value",
  
  subject_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to SUBJECT table",
  
  subject_position_preferred VARCHAR(40)
    COMMENT "Standardized value",
  
  subject_position_reported VARCHAR(40)
    COMMENT "Reported value",
  
  time_of_day VARCHAR(40)
    COMMENT "Reported value",
  
  verbatim_question VARCHAR(250)
    COMMENT "Question posed for assessment panels whose type is questionnaire",
  
  who_is_assessed VARCHAR(40)
    COMMENT "For assessment panels whose type is family history; values are self, Mother, Father, etc",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (assessment_component_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Subject level responses or results of ASSESEMENT_PANELs.";

CREATE INDEX idx_assessment_component_assessment_panel on assessment_component(assessment_panel_accession);
CREATE INDEX idx_assessment_component_subject on assessment_component(subject_accession);
CREATE INDEX idx_assessment_component_planned_visit on assessment_component(planned_visit_accession);
CREATE INDEX idx_assessment_workspace on assessment_component(workspace_id);
