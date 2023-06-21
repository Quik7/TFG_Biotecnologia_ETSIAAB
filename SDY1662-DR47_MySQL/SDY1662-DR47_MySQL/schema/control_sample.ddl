DROP TABLE IF EXISTS control_sample;

CREATE TABLE control_sample
(
  
  control_sample_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  assay_group_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that may come from a group of plates or chips",
  
  assay_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that come from the same plate or chip. A plate may have results for experiment sample, control sample, standard curve.",
  
  catalog_id VARCHAR(100)
    COMMENT "An identifier provided by the vendor source",
  
  dilution_factor VARCHAR(100)
    COMMENT "An indication of the amount of control sample used in the assay based on the initial amount or concentration from the source.",
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPERIMENT table",
  
  lot_number VARCHAR(100)
    COMMENT "Identifies a specific version",
  
  result_schema VARCHAR(50) NOT NULL DEFAULT 'OTHER'
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  source VARCHAR(100)
    COMMENT "The name of the lab/company/supplier providing the control sample",
  
  upload_result_status VARCHAR(20)
    COMMENT "Upload result status",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (control_sample_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Used for quality control and to allow comparison between assay runs or across labs. These control samples are distinct from Biosamples since they are often purchased in bulk, and are not linked to particular study subjects.";

CREATE INDEX idx_control_sample_workspace on control_sample(workspace_id);
