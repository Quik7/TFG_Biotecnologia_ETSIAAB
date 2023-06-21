CREATE INDEX idx_elisa_study_accession on elisa_result(study_accession);
CREATE INDEX idx_elisa_arm_accession on elisa_result(arm_accession);
CREATE INDEX idx_elisa_biosample_accession on elisa_result(biosample_accession);
CREATE INDEX idx_elisa_experiment_accession on elisa_result(experiment_accession);
CREATE INDEX idx_elisa_expsample_accession on elisa_result(expsample_accession);
CREATE INDEX idx_elisa_subject_accession on elisa_result(subject_accession);
CREATE INDEX idx_elisa_workspace on elisa_result(workspace_id);
