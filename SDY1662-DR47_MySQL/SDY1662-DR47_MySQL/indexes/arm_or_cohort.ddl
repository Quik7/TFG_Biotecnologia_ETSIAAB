CREATE INDEX idx_arm_or_cohort_study on arm_or_cohort(study_accession,arm_accession);
CREATE INDEX idx_arm_or_cohort_workspace on arm_or_cohort(workspace_id);
