DROP TABLE IF EXISTS study_pubmed;

CREATE TABLE study_pubmed
(
  
  study_accession VARCHAR(15) NOT NULL
    COMMENT "Foreign key reference to the STUDY table",
  
  pubmed_id VARCHAR(16) NOT NULL
    COMMENT "Pubmed identifier for the article",
  
  authors VARCHAR(4000)
    COMMENT "list of authors of the article",
  
  doi VARCHAR(100)
    COMMENT "Digital object identifier (DOI) is a type of persistent identifier used to uniquely identify objects",
  
  issue VARCHAR(20)
    COMMENT "Journal issue in which the article was published",
  
  journal VARCHAR(250)
    COMMENT "Publication in which the article appears",
  
  month VARCHAR(12)
    COMMENT "Month that the article was published",
  
  pages VARCHAR(20)
    COMMENT "Number of pages in the article",
  
  title VARCHAR(4000)
    COMMENT "Title of the article as it appears in Pubmed",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  year VARCHAR(4)
    COMMENT "Year that the article was published",
  
  PRIMARY KEY (study_accession, pubmed_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Pubmed records associated with a STUDY.";
