DROP TABLE IF EXISTS reagent;

CREATE TABLE reagent
(
  
  reagent_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  analyte_accession VARCHAR(15)
    COMMENT "Foreign key reference to LK_ANALYTE",
  
  analyte_preferred VARCHAR(100)
    COMMENT "Preferred analyte name",
  
  analyte_reported VARCHAR(200)
    COMMENT "Reported analyte name",
  
  antibody_registry_id VARCHAR(250)
    COMMENT "Reference to AntibodyRegistry.org to describe antibody based reagents",
  
  catalog_number VARCHAR(250)
    COMMENT "An identifier provided by the vendor source",
  
  clone_name VARCHAR(200)
    COMMENT "Reported name of molecular entity used to make a reagent",
  
  contact VARCHAR(1000)
    COMMENT "Whom to contact",
  
  description VARCHAR(4000)
    COMMENT "Free text to expand upon details",
  
  is_set VARCHAR(1) DEFAULT 'N'
    COMMENT "(Y/N) field to indicate whether or not the reagent is a member of a set or collection",
  
  lot_number VARCHAR(250)
    COMMENT "Identifies a specific version",
  
  manufacturer VARCHAR(100)
    COMMENT "Name of the reagent manufacturer.",
  
  name VARCHAR(200)
    COMMENT "Name or identifier.",
  
  reporter_name VARCHAR(200)
    COMMENT "Name or identifier",
  
  type VARCHAR(50)
    COMMENT "Category",
  
  weblink VARCHAR(250)
    COMMENT "Link to URL",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (reagent_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Material used to measure an ANALYTE.";

