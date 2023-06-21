DROP TABLE IF EXISTS lk_protein_name;

CREATE TABLE lk_protein_name
(
  name VARCHAR(255) NOT NULL
    COMMENT "Name or identifier",

  uniprot_id VARCHAR(50) NOT NULL
    COMMENT "",

  uniprot_gene_name VARCHAR(255)
    COMMENT "",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the protein names.";
