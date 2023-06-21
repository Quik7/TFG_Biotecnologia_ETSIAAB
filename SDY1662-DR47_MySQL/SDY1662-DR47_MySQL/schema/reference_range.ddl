DROP TABLE IF EXISTS reference_range;

CREATE TABLE reference_range
(
  
  reference_range_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  age_range VARCHAR(40)
    COMMENT "Minimum and maximum age values",
  
  category VARCHAR(40)
    COMMENT "Type of entity",
  
  gender VARCHAR(40)
    COMMENT "Standardized value in LK_GENDER table",
  
  lab_or_study_source VARCHAR(256)
    COMMENT "Source of the reference range",
  
  lower_limit VARCHAR(40) NOT NULL
    COMMENT "Lower boundary for the reference range value",
  
  study_accession VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",
  
  subject_condition VARCHAR(40)
    COMMENT "Any condition of the subject when the sample being subjected to the lab test was taken that would affect the reference range",
  
  test_or_assessment_name VARCHAR(125)
    COMMENT "Reported value",
  
  unit_of_measure VARCHAR(40) NOT NULL
    COMMENT "Unit of measure utilized in the reference range.",
  
  upper_limit VARCHAR(40) NOT NULL
    COMMENT "Upper boundary for the reference range value",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (reference_range_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Defines value ranges for a lab test value that are considered normal. if a single value is considered normal rather than a range then upper and lower limits will be the same. if only an upper or lower bound is defined then the other bound shall be null. if a category is defined for a reference range then all values between lower and upper bound will be represented by the category.";

CREATE INDEX idx_reference_range_study on reference_range(study_accession);
CREATE INDEX idx_reference_range_workspace on reference_range(workspace_id);
