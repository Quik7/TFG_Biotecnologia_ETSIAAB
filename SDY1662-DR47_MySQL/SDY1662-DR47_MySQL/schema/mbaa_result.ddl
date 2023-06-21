DROP TABLE IF EXISTS mbaa_result;

CREATE TABLE mbaa_result
(

  result_id INT NOT NULL
    COMMENT "Primary key",

  analyte_accession VARCHAR(15)
    COMMENT "Foreign key reference to LK_ANALYTE",

  analyte_preferred VARCHAR(100)
    COMMENT "Preferred analyte name",

  analyte_reported VARCHAR(100)
    COMMENT "Reported analyte name",

  arm_accession                        VARCHAR(15)
    COMMENT "Foreign key reference to the ARM_OR_COHORT table",

  assay_group_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that may come from a group of plates or chips",

  assay_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that come from the same plate or chip. A plate may have results for experiment sample, control sample, standard curve",

  biosample_accession                  VARCHAR(15)
    COMMENT "Foreign key reference to the BIOSAMPLE table",

  comments VARCHAR(500)
    COMMENT "Free text to expand upon details",

  concentration_unit_reported VARCHAR(100)
    COMMENT "Standardized value in the LK_UNIT_OF_MEASURE table",

  concentration_unit_preferred VARCHAR(50)
    COMMENT "Standardized value in the LK_UNIT_OF_MEASURE table",

  concentration_value_reported VARCHAR(100)
    COMMENT "The value of concentration. If the result is linked to a Standard Curve, then the concentration is the actual concentration of the analyte. If this result is linked to an Experiment Sample or a Control Sample, then this refers to the concentration calculated from the MFI using the standard curve . If the Value is calculated for an experiment sample or control sample and the value exceeds the detection limits of the standard curve, a user defined value shall be entered to indicate out of range (e.g. -999 or 999)",

  concentration_value_preferred FLOAT
    COMMENT "The value of concentration. If the result is linked to a Standard Curve, then the concentration is the actual concentration of the analyte. If this result is linked to an Experiment Sample or a Control Sample, then this refers to the concentration calculated from the MFI using the standard curve . If the Value is calculated for an experiment sample or control sample and the value exceeds the detection limits of the standard curve, a user defined value shall be entered to indicate out of range (e.g. -999 or 999)",

  experiment_accession                 VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the EXPERIMENT table",

  mfi VARCHAR(100)
    COMMENT "Median fluorescence intensity of the measurement",

  mfi_coordinate VARCHAR(100)
    COMMENT "Records the position of the measurement on the plate or array.",

  repository_accession VARCHAR(20)  
    COMMENT "Foreign key reference to a public repository",

  repository_name VARCHAR(50) 
    COMMENT "Name or identifier",

  source_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPSAMPLE, CONTROL_SAMPLE, or STANDARD_CURVE table",

  source_type VARCHAR(30) NOT NULL
    COMMENT "Indicates table where accessions can be referenced",

  study_accession                      VARCHAR(15)
    COMMENT "Foreign key reference to the STUDY table",

  study_time_collected                 FLOAT
    COMMENT "Reported value",

  study_time_collected_unit            VARCHAR(25)
    COMMENT "Standardized value in LK_TIME_UNIT table",

  subject_accession                    VARCHAR(15)
    COMMENT "Foreign key reference to the SUBJECT table",

  workspace_id                         INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",

  PRIMARY KEY (result_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Captures results of Multiplex Bead Array Assays (MBAA or Luminex) assays.";

CREATE INDEX idx_mbaa_arm_accession on mbaa_result(arm_accession);
CREATE INDEX idx_mbaa_biosample_accession on mbaa_result(biosample_accession);
CREATE INDEX idx_mbaa_experiment_accession on mbaa_result(experiment_accession);
CREATE INDEX idx_mbaa_source_accession on mbaa_result(source_accession);
CREATE INDEX idx_mbaa_study_accession on mbaa_result(study_accession);
CREATE INDEX idx_mbaa_subject_accession on mbaa_result(subject_accession);
CREATE INDEX idx_mbaa_workspace on mbaa_result(workspace_id);
