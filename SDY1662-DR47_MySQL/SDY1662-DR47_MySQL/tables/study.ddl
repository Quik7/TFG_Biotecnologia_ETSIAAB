DROP TABLE IF EXISTS study;

CREATE TABLE study
(
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  actual_completion_date DATE
    COMMENT "Study completion date",
  
  actual_enrollment INT
    COMMENT "Number of subjects enrolled in the study",
  
  actual_start_date DATE
    COMMENT "Study start date",
  
  age_unit VARCHAR(25)
    COMMENT "Standardized value in the LK_TIME_UNIT table",
  
  brief_description VARCHAR(4000)
    COMMENT "Short description of the study",
  
  brief_title VARCHAR(250)
    COMMENT "Short title for the study or trial",
  
  clinical_trial VARCHAR(1) NOT NULL DEFAULT 'N'
    COMMENT "Flag that indicates whether this is a clinical trial study",
  
  condition_studied VARCHAR(1000)
    COMMENT "Primary disease or condition being studied. Should be expressed using the National Library of Medicine's Medical Subject Headings (MeSH) controlled vocabulary where possible",
  
  dcl_id INT NOT NULL DEFAULT 0
    COMMENT "Reference to LK_DATA_COMPLETENESS table",

  description LONGTEXT
    COMMENT "Free text to expand upon details",

  doi VARCHAR(250)
    COMMENT "Digital object identifier (DOI) is a type of persistent identifier used to uniquely identify objects",
  
  endpoints MEDIUMTEXT
    COMMENT "Measures used to accomplish objectives; if an objective is to assess 'X', then a corresponding endpoint may be an assay that measures 'X'; additional HTML markup included in this field to faciliitate display on the ImmPort website",
  
  gender_included VARCHAR(50)
    COMMENT "Gender of participants",
  
  hypothesis VARCHAR(4000)
    COMMENT "Hypothesis",
  
  initial_data_release_date DATE
    COMMENT "Initial date study shared",
  
  initial_data_release_version VARCHAR(10)
    COMMENT "Initial version of study shared",
  
  intervention_agent VARCHAR(1000)
    COMMENT "From ClinicalTrials.gov, a process or action that is the focus of a clinical study",
  
  latest_data_release_date DATE
    COMMENT "Latest date when the study was shared",
  
  latest_data_release_version VARCHAR(10)
    COMMENT "Latest version of study shared",
  
  maximum_age VARCHAR(40)
    COMMENT "Maximum numeric age of the subject",
  
  minimum_age VARCHAR(40)
    COMMENT "Minumum numeric age of the subject",
  
  objectives MEDIUMTEXT
    COMMENT "Objectives",
  
  official_title VARCHAR(500)
    COMMENT "Official title utilized in publications, public resources (such as ClinicalTrials.gov)",

  shared_study VARCHAR(1) NOT NULL
    COMMENT "Indicates whether study is private, shared or restricted (N,Y,R)",

  sponsoring_organization VARCHAR(250)
    COMMENT "Name of the primary organization that oversees implementation of the study",
  
  target_enrollment INT
    COMMENT "The subject recruitment target for the study",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (study_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Provides description of a STUDY.  Many attributes of a study are taken from the clinicaltrials.gov.";

