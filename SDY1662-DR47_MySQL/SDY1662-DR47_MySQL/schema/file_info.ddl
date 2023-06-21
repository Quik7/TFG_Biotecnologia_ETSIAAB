DROP TABLE IF EXISTS file_info;

CREATE TABLE file_info
(
  
  file_info_id INT NOT NULL
    COMMENT "Primary key",
  
  detail VARCHAR(100) NOT NULL
    COMMENT "Standardized value in LK_FILE_DETAIL table",
  
  filesize_bytes BIGINT NOT NULL
    COMMENT "File size",
  
  name VARCHAR(250) NOT NULL
    COMMENT "Name or identifier",
  
  original_file_name VARCHAR(250) NOT NULL
    COMMENT "Original file name",
  
  workspace_id INT NOT NULL
    COMMENT "Foreign key reference to WORKSPACE table",
  
  PRIMARY KEY (file_info_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "Contains metadata and content for result files, template files, and other files archived to workspaces.";

CREATE INDEX idx_file_info_workspace on file_info(workspace_id);
