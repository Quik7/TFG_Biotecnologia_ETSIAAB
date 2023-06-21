DROP TABLE IF EXISTS fcs_header_marker;

CREATE TABLE fcs_header_marker
(
  
  fcs_header_id INT NOT NULL
    COMMENT "Foreign key reference to the FCS_HEADER table",
  
  parameter_number INT NOT NULL
    COMMENT "The sequence number of parameter in FCS file (The 'N' in $PnN)",
  
  pnn_preferred VARCHAR(150)
    COMMENT "$PnN value curated with regard to reference sources",
  
  pnn_reported VARCHAR(150)
    COMMENT "$PnN value reported in FCS header",
  
  pns_preferred VARCHAR(150)
    COMMENT "$PnS value curated with regard to reference sources",
  
  pns_reported VARCHAR(150)
    COMMENT "$PnS value reported in FCS header",
  
  PRIMARY KEY (fcs_header_id, parameter_number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Individual markers or channel (e.g. $P4N or $P4S) from fcs header are stored for annotaiton with preferred names.";
