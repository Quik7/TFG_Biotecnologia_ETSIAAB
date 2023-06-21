CREATE INDEX idx_mass_study_accession on mass_spectrometry_result(study_accession);
CREATE INDEX idx_mass_arm_accession on mass_spectrometry_result(arm_accession);
CREATE INDEX idx_mass_biosample_accession on mass_spectrometry_result(biosample_accession);
CREATE INDEX idx_mass_experiment_accession on mass_spectrometry_result(experiment_accession);
CREATE INDEX idx_mass_expsample_accession on mass_spectrometry_result(expsample_accession);
CREATE INDEX idx_mass_subject_accession on mass_spectrometry_result(subject_accession);
CREATE INDEX idx_mass_workspace on mass_spectrometry_result(workspace_id);
