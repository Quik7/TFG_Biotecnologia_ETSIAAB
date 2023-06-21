CREATE INDEX idx_biosample_subject on biosample(subject_accession);
CREATE INDEX idx_biosample_study on biosample(study_accession);
CREATE INDEX idx_biosample_planned_visit on biosample(planned_visit_accession);
CREATE INDEX idx_biosample_workspace on biosample(workspace_id);
