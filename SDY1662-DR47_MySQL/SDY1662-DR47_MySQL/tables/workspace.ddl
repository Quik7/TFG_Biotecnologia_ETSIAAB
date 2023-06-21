DROP TABLE IF EXISTS workspace;

CREATE TABLE workspace
(
  
  workspace_id INT NOT NULL
    COMMENT "Primary key",
  
  category VARCHAR(50) NOT NULL
    COMMENT "Type of entity",
  
  name VARCHAR(125) NOT NULL
    COMMENT "Name or identifier",
  
  type VARCHAR(20) NOT NULL
    COMMENT "Category",
  
  PRIMARY KEY (workspace_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Data access authorization method whereby users can upload and review data.";
