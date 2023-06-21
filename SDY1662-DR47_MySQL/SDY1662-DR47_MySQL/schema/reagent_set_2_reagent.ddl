DROP TABLE IF EXISTS reagent_set_2_reagent;

CREATE TABLE reagent_set_2_reagent
(
  
  reagent_set_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to REAGENT table",
  
  reagent_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to REAGENT table",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (reagent_set_accession, reagent_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Join table that associates REAGENT_SET members with REAGENT table records.";

CREATE INDEX idx_reagent_set_reagent on reagent_set_2_reagent(reagent_accession,reagent_set_accession);   
CREATE INDEX idx_reagent_set_workspace on reagent_set_2_reagent(workspace_id);

