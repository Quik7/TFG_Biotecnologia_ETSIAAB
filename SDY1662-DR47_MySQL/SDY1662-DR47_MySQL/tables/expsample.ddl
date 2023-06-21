DROP TABLE IF EXISTS expsample;

CREATE TABLE expsample
(
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  experiment_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to EXPERIMENT table",
  
  name VARCHAR(200)
    COMMENT "Name or identifier",
  
  result_schema VARCHAR(50) NOT NULL DEFAULT 'OTHER'
    COMMENT "Standardized value in LK_RESULT_SCHEMA",
  
  upload_result_status VARCHAR(20)
    COMMENT "Upload result status",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (expsample_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Links the biological samples analyzed in an experiment to the assay reagent, protocol and results via the experiment sample record.";

