CREATE INDEX idx_adverse_event_subject on adverse_event(subject_accession);
CREATE INDEX idx_adverse_event_study on adverse_event(study_accession);
CREATE INDEX idx_adverse_event_workspace on adverse_event(workspace_id);
