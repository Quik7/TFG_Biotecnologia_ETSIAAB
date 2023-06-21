CREATE INDEX idx_intervention_subject on intervention(subject_accession);
CREATE INDEX idx_intervention_study on intervention(study_accession);
CREATE INDEX idx_intervention_workspace on intervention(workspace_id);

