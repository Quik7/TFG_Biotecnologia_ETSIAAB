CREATE INDEX idx_elispot_study_accession on elispot_result(study_accession);
CREATE INDEX idx_elispot_arm_accession on elispot_result(arm_accession);
CREATE INDEX idx_elispot_biosample_accession on elispot_result(biosample_accession);
CREATE INDEX idx_elispot_experiment_accession on elispot_result(experiment_accession);
CREATE INDEX idx_elispot_expsample_accession on elispot_result(expsample_accession);
CREATE INDEX idx_elispot_subject_accession on elispot_result(subject_accession);
CREATE INDEX idx_elispot_workspace on elispot_result(workspace_id);
