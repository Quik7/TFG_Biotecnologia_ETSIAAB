#!/bin/bash

if [ $# != 4 ]
  then
    echo ""
    echo "Usage: loadResearchData.sh Host, User, Password, Database"
    echo ""
    exit 1
fi

HOST=$1
USER=$2
PASSWORD=$3
DATABASE=$4

CMD="mysql --local_infile -h $HOST -u $USER -p$PASSWORD $DATABASE"

echo "Loading adverse_event"
$CMD < ../load/adverse_event.load

echo "Loading arm_2_subject"
$CMD < ../load/arm_2_subject.load

echo "Loading arm_or_cohort"
$CMD < ../load/arm_or_cohort.load

echo "Loading assessment_2_file_info"
$CMD < ../load/assessment_2_file_info.load

echo "Loading assessment_component"
$CMD < ../load/assessment_component.load

echo "Loading assessment_panel"
$CMD < ../load/assessment_panel.load

echo "Loading biosample"
$CMD < ../load/biosample.load

echo "Loading biosample_2_treatment"
$CMD < ../load/biosample_2_treatment.load

echo "Loading contract_grant"
$CMD < ../load/contract_grant.load

echo "Loading contract_grant_2_personnel"
$CMD < ../load/contract_grant_2_personnel.load

echo "Loading contract_grant_2_study"
$CMD < ../load/contract_grant_2_study.load

echo "Loading control_sample"
$CMD < ../load/control_sample.load

echo "Loading control_sample_2_file_info"
$CMD < ../load/control_sample_2_file_info.load

echo "Loading elisa_result"
$CMD < ../load/elisa_result.load

echo "Loading elispot_result"
$CMD < ../load/elispot_result.load

echo "Loading experiment"
$CMD < ../load/experiment.load

echo "Loading experiment_2_protocol"
$CMD < ../load/experiment_2_protocol.load

echo "Loading expsample"
$CMD < ../load/expsample.load

echo "Loading expsample_2_biosample"
$CMD < ../load/expsample_2_biosample.load

echo "Loading expsample_2_file_info"
$CMD < ../load/expsample_2_file_info.load

echo "Loading expsample_2_reagent"
$CMD < ../load/expsample_2_reagent.load

echo "Loading expsample_2_treatment"
$CMD < ../load/expsample_2_treatment.load

echo "Loading expsample_mbaa_detail"
$CMD < ../load/expsample_mbaa_detail.load

echo "Loading expsample_public_repository"
$CMD < ../load/expsample_public_repository.load

echo "Loading fcs_analyzed_result"
$CMD < ../load/fcs_analyzed_result.load

echo "Loading fcs_analyzed_result_marker"
$CMD < ../load/fcs_analyzed_result_marker.load

echo "Loading fcs_header"
$CMD < ../load/fcs_header.load

echo "Loading fcs_header_marker"
$CMD < ../load/fcs_header_marker.load

# Removed after DR40 Deprecated Table
#echo "Loading fcs_header_marker_2_reagent"
#$CMD < ../load/fcs_header_marker_2_reagent.load

echo "Loading file_info"
$CMD < ../load/file_info.load

echo "Loading hai_result"
$CMD < ../load/hai_result.load

echo "Loading hla_typing_result"
$CMD < ../load/hla_typing_result.load

echo "Loading immune_exposure"
$CMD < ../load/immune_exposure.load

echo "Loading inclusion_exclusion"
$CMD < ../load/inclusion_exclusion.load

echo "Loading intervention"
$CMD < ../load/intervention.load

echo "Loading kir_typing_result"
$CMD < ../load/kir_typing_result.load

echo "Loading lab_test"
$CMD < ../load/lab_test.load

echo "Loading lab_test_panel"
$CMD < ../load/lab_test_panel.load

echo "Loading lab_test_panel_2_protocol"
$CMD < ../load/lab_test_panel_2_protocol.load

echo "Loading mass_spectrometry_result"
$CMD < ../load/mass_spectrometry_result.load

echo "Loading mbaa_result"
$CMD < ../load/mbaa_result.load

echo "Loading neut_ab_titer_result"
$CMD < ../load/neut_ab_titer_result.load

echo "Loading pcr_result"
$CMD < ../load/pcr_result.load

# Removed after DR40 Deprecated Table
#echo "Loading period"
#$CMD < ../load/period.load

echo "Loading personnel"
$CMD < ../load/personnel.load

echo "Loading planned_visit"
$CMD < ../load/planned_visit.load

# Removed after DR30
#echo "Loading planned_visit_2_arm"
#$CMD < ../load/planned_visit_2_arm.load

echo "Loading program"
$CMD < ../load/program.load

echo "Loading program_2_pesonnel"
$CMD < ../load/program_2_personnel.load

echo "Loading protocol"
$CMD < ../load/protocol.load

# Removed after DR40 Deprecated Table
#echo "Loading protocol_deviation"
#$CMD < ../load/protocol_deviation.load

echo "Loading reagent"
$CMD < ../load/reagent.load

echo "Loading reagent_set_2_reagent"
$CMD < ../load/reagent_set_2_reagent.load

# Removed after DR40 Deprecated Table
#echo "Loading reference_range"
#$CMD < ../load/reference_range.load

# Removed after DR40 Deprecated Table
#echo "Loading reported_early_termination"
#$CMD < ../load/reported_early_termination.load

# Removed before DR33. This table may never be populated
#echo "Loading rna_seq_result"
#$CMD < ../load/rna_seq_result.load

echo "Loading standard_curve"
$CMD < ../load/standard_curve.load

echo "Loading standard_curve_2_file_info"
$CMD < ../load/standard_curve_2_file_info.load

echo "Loading study"
$CMD < ../load/study.load

echo "Loading study_2_condition_or_disease"
$CMD < ../load/study_2_condition_or_disease.load

echo "Loading study_2_panel"
$CMD < ../load/study_2_panel.load

echo "Loading study_2_protocol"
$CMD < ../load/study_2_protocol.load

echo "Loading study_categorization"
$CMD < ../load/study_categorization.load

echo "Loading study_file"
$CMD < ../load/study_file.load

# Removed after DR40 Deprecated Table
#echo "Loading study_glossary"
#$CMD < ../load/study_glossary.load

# Remove after release DR30
#echo "Loading study_image"
#$CMD < ../load/study_image.load

echo "Loading study_link"
$CMD < ../load/study_link.load

echo "Loading study_personnel"
$CMD < ../load/study_personnel.load

echo "Loading study_pubmed"
$CMD < ../load/study_pubmed.load

echo "Loading study_data_release"
$CMD < ../load/study_data_release.load

echo "Loading subject"
$CMD < ../load/subject.load

# Removed after DR40 Deprecated Table
#echo "Loading subject_measure_definition"
#$CMD < ../load/subject_measure_definition.load

# Removed after DR40 Deprecated Table
#echo "Loading subject_measure_result"
#$CMD < ../load/subject_measure_result.load

echo "Loading treatment"
$CMD < ../load/treatment.load

echo "Loading workspace"
$CMD < ../load/workspace.load
