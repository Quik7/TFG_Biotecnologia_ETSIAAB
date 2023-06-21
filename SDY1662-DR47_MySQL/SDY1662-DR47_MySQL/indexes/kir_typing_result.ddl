CREATE INDEX idx_kir_arm_accession on kir_typing_result(arm_accession);
CREATE INDEX idx_kir_biosample_accession on kir_typing_result(biosample_accession);
CREATE INDEX idx_kir_experiment_accession on kir_typing_result(experiment_accession);
CREATE INDEX idx_kir_expsample_accession on kir_typing_result(expsample_accession);
CREATE INDEX idx_kir_subject_accession on kir_typing_result(subject_accession);
CREATE INDEX idx_kir_study_accession on kir_typing_result(study_accession);
CREATE INDEX idx_kir_workspace on kir_typing_result(workspace_id);

