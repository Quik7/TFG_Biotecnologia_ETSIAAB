DROP TABLE IF EXISTS fcs_header_marker_2_reagent;

CREATE TABLE fcs_header_marker_2_reagent
(
  
  fcs_header_id INT NOT NULL
    COMMENT "Foreign key reference to FCS_HEADER table",
  
  parameter_number INT NOT NULL
    COMMENT "The sequence number of parameter in fcs file (The 'N' in $PnN)",
  
  reagent_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to REAGENT table",
  
  PRIMARY KEY (fcs_header_id, parameter_number, reagent_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Markers or channels from fcs header may be linked to REAGENT records.";

CREATE INDEX idx_fcs_header_marker_2_reagent on fcs_header_marker_2_reagent(reagent_accession,fcs_header_id);

