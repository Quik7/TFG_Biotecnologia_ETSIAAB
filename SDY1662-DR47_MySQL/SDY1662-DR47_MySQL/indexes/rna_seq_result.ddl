CREATE INDEX idx_rna_seq_study_accession on rna_seq_result(study_accession);
CREATE INDEX idx_rna_seq_arm_accession on rna_seq_result(arm_accession);
CREATE INDEX idx_rna_seq_biosample_accession on rna_seq_result(biosample_accession);
CREATE INDEX idx_rna_seq_experiment_accession on rna_seq_result(experiment_accession);
CREATE INDEX idx_rna_seq_expsample_accession on rna_seq_result(expsample_accession);
CREATE INDEX idx_rna_seq_subject_accession on rna_seq_result(subject_accession);
CREATE INDEX idx_rna_seq_workspace on rna_seq_result(workspace_id);
