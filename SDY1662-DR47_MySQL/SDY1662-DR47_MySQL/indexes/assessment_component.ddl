CREATE INDEX idx_assessment_component_assessment_panel on assessment_component(assessment_panel_accession);
CREATE INDEX idx_assessment_component_subject on assessment_component(subject_accession);
CREATE INDEX idx_assessment_component_planned_visit on assessment_component(planned_visit_accession);
CREATE INDEX idx_assessment_workspace on assessment_component(workspace_id);
