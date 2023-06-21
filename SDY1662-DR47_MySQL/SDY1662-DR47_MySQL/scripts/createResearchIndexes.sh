#!/bin/bash

if [ $# != 4 ]
  then
    echo ""
    echo "Usage: createResearchIndexes.sh Host, User, Password, Database"
    echo ""
    exit 1
fi

HOST=$1
USER=$2
PASSWORD=$3
DATABASE=$4

CMD="mysql -h $HOST -u $USER -p$PASSWORD $DATABASE"


echo "Creating adverse_event"
$CMD < ../indexes/adverse_event.ddl

echo "Creating arm_2_subject"
$CMD < ../indexes/arm_2_subject.ddl

echo "Creating arm_or_cohort"
$CMD < ../indexes/arm_or_cohort.ddl

echo "Creating assessment_2_file_info"
$CMD < ../indexes/assessment_2_file_info.ddl

echo "Creating assessment_component"
$CMD < ../indexes/assessment_component.ddl

echo "Creating assessment_panel"
$CMD < ../indexes/assessment_panel.ddl

echo "Creating biosample"
$CMD < ../indexes/biosample.ddl

echo "Creating biosample_2_treatment"
$CMD < ../indexes/biosample_2_treatment.ddl

echo "Creating contract_grant"
$CMD < ../indexes/contract_grant.ddl

echo "Creating contract_grant_2_personnel"
$CMD < ../indexes/contract_grant_2_personnel.ddl

echo "Creating contract_grant_2_study"
$CMD < ../indexes/contract_grant_2_study.ddl

echo "Creating control_sample"
$CMD < ../indexes/control_sample.ddl

echo "Creating control_sample_2_file_info"
$CMD < ../indexes/control_sample_2_file_info.ddl

echo "Creating elisa_result"
$CMD < ../indexes/elisa_result.ddl

echo "Creating elispot_result"
$CMD < ../indexes/elispot_result.ddl

echo "Creating experiment"
$CMD < ../indexes/experiment.ddl

echo "Creating experiment_2_protocol"
$CMD < ../indexes/experiment_2_protocol.ddl

echo "Creating expsample"
$CMD < ../indexes/expsample.ddl

echo "Creating expsample_2_biosample"
$CMD < ../indexes/expsample_2_biosample.ddl

echo "Creating expsample_2_file_info"
$CMD < ../indexes/expsample_2_file_info.ddl

echo "Creating expsample_2_reagent"
$CMD < ../indexes/expsample_2_reagent.ddl

echo "Creating expsample_2_treatment"
$CMD < ../indexes/expsample_2_treatment.ddl

echo "Creating expsample_mbaa_detail"
$CMD < ../indexes/expsample_mbaa_detail.ddl

echo "Creating expsample_public_repository"
$CMD < ../indexes/expsample_public_repository.ddl

echo "Creating fcs_analyzed_result"
$CMD < ../indexes/fcs_analyzed_result.ddl

echo "Creating fcs_analyzed_result_marker"
$CMD < ../indexes/fcs_analyzed_result_marker.ddl

echo "Creating fcs_header"
$CMD < ../indexes/fcs_header.ddl

echo "Creating fcs_header_marker"
$CMD < ../indexes/fcs_header_marker.ddl

# Removed after DR40 Deprecated Table
#echo "Creating fcs_header_marker_2_reagent"
#$CMD < ../indexes/fcs_header_marker_2_reagent.ddl

echo "Creating file_info"
$CMD < ../indexes/file_info.ddl

echo "Creating hai_result"
$CMD < ../indexes/hai_result.ddl

echo "Creating hla_typing_result"
$CMD < ../indexes/hla_typing_result.ddl

echo "Creating immune_exposure"
$CMD < ../indexes/immune_exposure.ddl

echo "Creating inclusion_exclusion"
$CMD < ../indexes/inclusion_exclusion.ddl

echo "Creating intervention"
$CMD < ../indexes/intervention.ddl

echo "Creating kir_typing_result"
$CMD < ../indexes/kir_typing_result.ddl

echo "Creating lab_test"
$CMD < ../indexes/lab_test.ddl

echo "Creating lab_test_panel"
$CMD < ../indexes/lab_test_panel.ddl

echo "Creating lab_test_panel_2_protocol"
$CMD < ../indexes/lab_test_panel_2_protocol.ddl

echo "Creating mass_spectrometry_result"
$CMD < ../indexes/mass_spectrometry_result.ddl

echo "Creating mbaa_result"
$CMD < ../indexes/mbaa_result.ddl

echo "Creating neut_ab_titer_result"
$CMD < ../indexes/neut_ab_titer_result.ddl

echo "Creating pcr_result"
$CMD < ../indexes/pcr_result.ddl

# Removed after DR40 Deprecated Table
#echo "Creating period"
#$CMD < ../indexes/period.ddl

echo "Creating personnel"
$CMD < ../indexes/personnel.ddl

echo "Creating planned_visit"
$CMD < ../indexes/planned_visit.ddl

# Remove after release DR30
#echo "Creating planned_visit_2_arm"
#$CMD < ../indexes/planned_visit_2_arm.ddl

echo "Creating program"
$CMD < ../indexes/program.ddl

echo "Creating program_2_pesonnel"
$CMD < ../indexes/program_2_personnel.ddl

echo "Creating protocol"
$CMD < ../indexes/protocol.ddl

# Removed after DR40 Deprecated Table
#echo "Creating protocol_deviation"
#$CMD < ../indexes/protocol_deviation.ddl

echo "Creating reagent"
$CMD < ../indexes/reagent.ddl

echo "Creating reagent_set_2_reagent"
$CMD < ../indexes/reagent_set_2_reagent.ddl

# Removed after DR40 Deprecated Table
#echo "Creating reference_range"
#$CMD < ../indexes/reference_range.ddl

# Removed after DR40 Deprecated Table
#echo "Creating reported_early_termination"
#$CMD < ../indexes/reported_early_termination.ddl

# Removed before DR33. Table may never be populated
#echo "Creating rna_seq_result"
#$CMD < ../indexes/rna_seq_result.ddl

echo "Creating standard_curve"
$CMD < ../indexes/standard_curve.ddl

echo "Creating standard_curve_2_file_info"
$CMD < ../indexes/standard_curve_2_file_info.ddl

echo "Creating study"
$CMD < ../indexes/study.ddl

echo "Creating study_2_condition_or_disease"
$CMD < ../indexes/study_2_condition_or_disease.ddl

echo "Creating study_2_panel"
$CMD < ../indexes/study_2_panel.ddl

echo "Creating study_2_protocol"
$CMD < ../indexes/study_2_protocol.ddl

echo "Creating study_categorization"
$CMD < ../indexes/study_categorization.ddl

echo "Creating study_file"
$CMD < ../indexes/study_file.ddl

# Removed after release DR40 Deprecated Table
#echo "Creating study_glossary"
#$CMD < ../indexes/study_glossary.ddl

# Removed after release DR30
#echo "Creating study_image"
#$CMD < ../indexes/study_image.ddl

echo "Creating study_link"
$CMD < ../indexes/study_link.ddl

echo "Creating study_personnel"
$CMD < ../indexes/study_personnel.ddl

echo "Creating study_pubmed"
$CMD < ../indexes/study_pubmed.ddl

echo "Creating study_data_release"
$CMD < ../indexes/study_data_release.ddl

echo "Creating subject"
$CMD < ../indexes/subject.ddl

# Removed after DR40 Deprecated Table
#echo "Creating subject_measure_definition"
#$CMD < ../indexes/subject_measure_definition.ddl

# Removed after DR40 Deprecated Table
#echo "Creating subject_measure_result"
#$CMD < ../indexes/subject_measure_result.ddl

echo "Creating treatment"
$CMD < ../indexes/treatment.ddl

echo "Creating workspace"
$CMD < ../indexes/workspace.ddl

