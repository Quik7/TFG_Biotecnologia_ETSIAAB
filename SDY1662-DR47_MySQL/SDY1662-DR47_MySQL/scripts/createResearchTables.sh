#!/bin/bash

if [ $# != 4 ]
  then
    echo ""
    echo "Usage: createResearchTables.sh Host, User, Password, Database"
    echo ""
    exit 1
fi

HOST=$1
USER=$2
PASSWORD=$3
DATABASE=$4

CMD="mysql -h $HOST -u $USER -p$PASSWORD $DATABASE"


echo "Creating adverse_event"
$CMD < ../tables/adverse_event.ddl

echo "Creating arm_2_subject"
$CMD < ../tables/arm_2_subject.ddl

echo "Creating arm_or_cohort"
$CMD < ../tables/arm_or_cohort.ddl

echo "Creating assessment_2_file_info"
$CMD < ../tables/assessment_2_file_info.ddl

echo "Creating assessment_component"
$CMD < ../tables/assessment_component.ddl

echo "Creating assessment_panel"
$CMD < ../tables/assessment_panel.ddl

echo "Creating biosample"
$CMD < ../tables/biosample.ddl

echo "Creating biosample_2_treatment"
$CMD < ../tables/biosample_2_treatment.ddl

echo "Creating contract_grant"
$CMD < ../tables/contract_grant.ddl

echo "Creating contract_grant_2_personnel"
$CMD < ../tables/contract_grant_2_personnel.ddl

echo "Creating contract_grant_2_study"
$CMD < ../tables/contract_grant_2_study.ddl

echo "Creating control_sample"
$CMD < ../tables/control_sample.ddl

echo "Creating control_sample_2_file_info"
$CMD < ../tables/control_sample_2_file_info.ddl

echo "Creating elisa_result"
$CMD < ../tables/elisa_result.ddl

echo "Creating elispot_result"
$CMD < ../tables/elispot_result.ddl

echo "Creating experiment"
$CMD < ../tables/experiment.ddl

echo "Creating experiment_2_protocol"
$CMD < ../tables/experiment_2_protocol.ddl

echo "Creating expsample"
$CMD < ../tables/expsample.ddl

echo "Creating expsample_2_biosample"
$CMD < ../tables/expsample_2_biosample.ddl

echo "Creating expsample_2_file_info"
$CMD < ../tables/expsample_2_file_info.ddl

echo "Creating expsample_2_reagent"
$CMD < ../tables/expsample_2_reagent.ddl

echo "Creating expsample_2_treatment"
$CMD < ../tables/expsample_2_treatment.ddl

echo "Creating expsample_mbaa_detail"
$CMD < ../tables/expsample_mbaa_detail.ddl

echo "Creating expsample_public_repository"
$CMD < ../tables/expsample_public_repository.ddl

echo "Creating fcs_analyzed_result"
$CMD < ../tables/fcs_analyzed_result.ddl

echo "Creating fcs_analyzed_result_marker"
$CMD < ../tables/fcs_analyzed_result_marker.ddl

echo "Creating fcs_header"
$CMD < ../tables/fcs_header.ddl

echo "Creating fcs_header_marker"
$CMD < ../tables/fcs_header_marker.ddl

# Removed after DR40 Deprecated Table
#echo "Creating fcs_header_marker_2_reagent"
#$CMD < ../tables/fcs_header_marker_2_reagent.ddl

echo "Creating file_info"
$CMD < ../tables/file_info.ddl

echo "Creating hai_result"
$CMD < ../tables/hai_result.ddl

echo "Creating hla_typing_result"
$CMD < ../tables/hla_typing_result.ddl

echo "Creating immune_exposure"
$CMD < ../tables/immune_exposure.ddl

echo "Creating inclusion_exclusion"
$CMD < ../tables/inclusion_exclusion.ddl

echo "Creating intervention"
$CMD < ../tables/intervention.ddl

echo "Creating kir_typing_result"
$CMD < ../tables/kir_typing_result.ddl

echo "Creating lab_test"
$CMD < ../tables/lab_test.ddl

echo "Creating lab_test_panel"
$CMD < ../tables/lab_test_panel.ddl

echo "Creating lab_test_panel_2_protocol"
$CMD < ../tables/lab_test_panel_2_protocol.ddl

echo "Creating mass_spectrometry_result"
$CMD < ../tables/mass_spectrometry_result.ddl

echo "Creating mbaa_result"
$CMD < ../tables/mbaa_result.ddl

echo "Creating neut_ab_titer_result"
$CMD < ../tables/neut_ab_titer_result.ddl

echo "Creating pcr_result"
$CMD < ../tables/pcr_result.ddl

# Removed after DR40 Deprecated Table
#echo "Creating period"
#$CMD < ../tables/period.ddl

echo "Creating personnel"
$CMD < ../tables/personnel.ddl

echo "Creating planned_visit"
$CMD < ../tables/planned_visit.ddl

# Remove after release DR30
#echo "Creating planned_visit_2_arm"
#$CMD < ../tables/planned_visit_2_arm.ddl

echo "Creating program"
$CMD < ../tables/program.ddl

echo "Creating program_2_pesonnel"
$CMD < ../tables/program_2_personnel.ddl

echo "Creating protocol"
$CMD < ../tables/protocol.ddl

# Removed after DR40 Deprecated Table
#echo "Creating protocol_deviation"
#$CMD < ../tables/protocol_deviation.ddl

echo "Creating reagent"
$CMD < ../tables/reagent.ddl

echo "Creating reagent_set_2_reagent"
$CMD < ../tables/reagent_set_2_reagent.ddl

# Removed after DR40 Deprecated Table
#echo "Creating reference_range"
#$CMD < ../tables/reference_range.ddl

# Removed after DR40 Deprecated Table
#echo "Creating reported_early_termination"
#$CMD < ../tables/reported_early_termination.ddl

# Removed before DR33. Table may never be populated
#echo "Creating rna_seq_result"
#$CMD < ../tables/rna_seq_result.ddl

echo "Creating standard_curve"
$CMD < ../tables/standard_curve.ddl

echo "Creating standard_curve_2_file_info"
$CMD < ../tables/standard_curve_2_file_info.ddl

echo "Creating study"
$CMD < ../tables/study.ddl

echo "Creating study_2_condition_or_disease"
$CMD < ../tables/study_2_condition_or_disease.ddl

echo "Creating study_2_panel"
$CMD < ../tables/study_2_panel.ddl

echo "Creating study_2_protocol"
$CMD < ../tables/study_2_protocol.ddl

echo "Creating study_categorization"
$CMD < ../tables/study_categorization.ddl

echo "Creating study_file"
$CMD < ../tables/study_file.ddl

# Removed after DR40
#echo "Creating study_glossary"
#$CMD < ../tables/study_glossary.ddl

# Removed after release DR30
#echo "Creating study_image"
#$CMD < ../tables/study_image.ddl

echo "Creating study_link"
$CMD < ../tables/study_link.ddl

echo "Creating study_personnel"
$CMD < ../tables/study_personnel.ddl

echo "Creating study_pubmed"
$CMD < ../tables/study_pubmed.ddl

echo "Creating study_data_release"
$CMD < ../tables/study_data_release.ddl

echo "Creating subject"
$CMD < ../tables/subject.ddl

# Removed after DR40 Deprecated Table
#echo "Creating subject_measure_definition"
#$CMD < ../tables/subject_measure_definition.ddl

# Removed after DR40 Deprecated Table
#echo "Creating subject_measure_result"
#$CMD < ../tables/subject_measure_result.ddl

echo "Creating treatment"
$CMD < ../tables/treatment.ddl

echo "Creating workspace"
$CMD < ../tables/workspace.ddl

