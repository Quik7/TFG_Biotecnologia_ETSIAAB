DROP TABLE IF EXISTS expsample_mbaa_detail;

CREATE TABLE expsample_mbaa_detail
(
  
  expsample_accession VARCHAR(15) NOT NULL
    COMMENT "Primary key",
  
  assay_group_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that may come from a group of plates or chips",
  
  assay_id VARCHAR(100)
    COMMENT "Associates this result with a set of results that come from the same plate or chip. A plate may have results for experiment sample, control sample, standard curve",
  
  dilution_factor VARCHAR(100)
    COMMENT "An indication of the amount of control sample used in the assay based on the initial amount or concentration from the source.",
  
  plate_type VARCHAR(50)
    COMMENT "Standardized value in LK_PLATE_TYPE table",
  
  PRIMARY KEY (expsample_accession)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COMMENT "MBAA (Luminex) specific attributes of EXPSAMPLE";
