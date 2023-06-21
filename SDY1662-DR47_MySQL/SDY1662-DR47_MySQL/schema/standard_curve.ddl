DROP TABLE IF EXISTS standard_curve;

CREATE TABLE standard_curve
(
  
  standard_curve_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  analyte_accession VARCHAR(15)
    COMMENT "Foreign key reference to LK_ANALYTE",
  
  analyte_preferred VARCHAR(100)
    COMMENT "Preferred analyte name",
  
  analyte_reported VARCHAR(100)
    COMMENT "Reported analyte name",
  
  assay_group_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that may come from a group of plates or chips",
  
  assay_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that come from the same plate or chip. A plate may have results for experiment sample, control sample, standard curve",
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the EXPERIMENT table",
  
  formula VARCHAR(500)
    COMMENT "Formula for defining the standard curve",
  
  lower_limit VARCHAR(100)
    COMMENT "Lower boundary for the reference range value",
  
  lower_limit_unit VARCHAR(100)
    COMMENT "The unit (e.g., pg/ml) of the lower limit of detection value",
  
  result_schema VARCHAR(50) NOT NULL DEFAULT 'OTHER'
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  upload_result_status VARCHAR(20)
    COMMENT "Upload result status",
  
  upper_limit VARCHAR(100)
    COMMENT "Upper boundary for the reference range value",
  
  upper_limit_unit VARCHAR(100)
    COMMENT "The unit (e.g., pg/ml) of the upper limit of detection value",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (standard_curve_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "A STANDARD_CURVE is defined for each analyte in a batch (e.g., on a single plate)";
