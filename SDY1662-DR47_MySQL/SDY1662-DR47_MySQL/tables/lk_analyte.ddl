DROP TABLE IF EXISTS lk_analyte;

CREATE TABLE lk_analyte
(
  
  analyte_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  gene_symbol VARCHAR(100) 
    COMMENT "Gene Symbol",
  
  gene_aliases TEXT
    COMMENT "Synonyms",
  
  gene_id VARCHAR(10)
    COMMENT "NCBI Gene ID",
  
  genetic_nomenclature_id VARCHAR(100)
    COMMENT "Official gene ID from the appropriate species specific nomenclature committee",
  
  immunology_symbol VARCHAR(100)
    COMMENT "Commonly used symbol in immunology",
  
  link VARCHAR(2000)
    COMMENT "Link to URL",
  
  official_gene_name VARCHAR(255)
    COMMENT "Official gene name from the appropriate species specific nomenclature committee",
  
  protein_ontology_id VARCHAR(15)
    COMMENT "Protein Ontology ID",
  
  protein_ontology_name VARCHAR(100)
    COMMENT "Protein Ontology name",
  
  protein_ontology_synonyms TEXT
    COMMENT "Protein Ontology synonyms",

  protein_ontology_short_label VARCHAR(255)
    COMMENT "Short label for protein name",
  
  taxonomy_id VARCHAR(10)
    COMMENT "Standardized value in LK_SPECIES",
  
  uniprot_entry VARCHAR(20)
    COMMENT "UNIPROT ID",
  
  uniprot_entry_name VARCHAR(255)
    COMMENT "UNIPROT name",
  
  PRIMARY KEY (analyte_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Controlled vocabulary for the preferred names of assayed molecules and their source reference.";
