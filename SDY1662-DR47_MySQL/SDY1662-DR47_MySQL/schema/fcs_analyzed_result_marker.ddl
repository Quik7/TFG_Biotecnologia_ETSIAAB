DROP TABLE IF EXISTS fcs_analyzed_result_marker;

CREATE TABLE fcs_analyzed_result_marker
(
  fcs_analyzed_result_marker_id INT NOT NULL
    COMMENT "Primary key.",
  
  population_marker_preferred VARCHAR(500)
    COMMENT "This is the population_marker_preferred field.",
  
  population_marker_reported VARCHAR(500)
    COMMENT "This is the population_marker_reported field.",

  preferred_analyte_accession VARCHAR(15)
    COMMENT "Foreign key reference to the LK_ANALYTE table.",
  
  result_id INT NOT NULL
    COMMENT "This is the result_id field.",
  
  PRIMARY KEY (fcs_analyzed_result_marker_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Individual markers in a cell population definition are captured and annotated with preferred names.";
