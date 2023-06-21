#!/bin/bash

if [ $# != 4 ]
  then
    echo ""
    echo "Usage: createResearchSchema.sh Host, User, Password, Database"
    echo ""
    exit 1
fi

HOST=$1
USER=$2
PASSWORD=$3
DATABASE=$4

CMD="mysql -h $HOST -u $USER -p$PASSWORD $DATABASE"


echo "Creating adverse_event"
$CMD < ../schema/adverse_event.ddl

echo "Creating arm_2_subject"
$CMD < ../schema/arm_2_subject.ddl

echo "Creating arm_or_cohort"
$CMD < ../schema/arm_or_cohort.ddl

echo "Creating assessment_2_file_info"
$CMD < ../schema/assessment_2_file_info.ddl

echo "Creating assessment_component"
$CMD < ../schema/assessment_component.ddl

echo "Creating assessment_panel"
$CMD < ../schema/assessment_panel.ddl

echo "Creating biosample"
$CMD < ../schema/biosample.ddl

echo "Creating biosample_2_treatment"
$CMD < ../schema/biosample_2_treatment.ddl

echo "Creating contract_grant"
$CMD < ../schema/contract_grant.ddl

echo "Creating contract_grant_2_personnel"
$CMD < ../schema/contract_grant_2_personnel.ddl

echo "Creating contract_grant_2_study"
$CMD < ../schema/contract_grant_2_study.ddl

echo "Creating control_sample"
$CMD < ../schema/control_sample.ddl

echo "Creating control_sample_2_file_info"
$CMD < ../schema/control_sample_2_file_info.ddl

echo "Creating elisa_result"
$CMD < ../schema/elisa_result.ddl

echo "Creating elispot_result"
$CMD < ../schema/elispot_result.ddl

echo "Creating experiment"
$CMD < ../schema/experiment.ddl

echo "Creating experiment_2_protocol"
$CMD < ../schema/experiment_2_protocol.ddl

echo "Creating expsample"
$CMD < ../schema/expsample.ddl

echo "Creating expsample_2_biosample"
$CMD < ../schema/expsample_2_biosample.ddl

echo "Creating expsample_2_file_info"
$CMD < ../schema/expsample_2_file_info.ddl

echo "Creating expsample_2_reagent"
$CMD < ../schema/expsample_2_reagent.ddl

echo "Creating expsample_2_treatment"
$CMD < ../schema/expsample_2_treatment.ddl

echo "Creating expsample_mbaa_detail"
$CMD < ../schema/expsample_mbaa_detail.ddl

echo "Creating expsample_public_repository"
$CMD < ../schema/expsample_public_repository.ddl

echo "Creating fcs_analyzed_result"
$CMD < ../schema/fcs_analyzed_result.ddl

echo "Creating fcs_analyzed_result_marker"
$CMD < ../schema/fcs_analyzed_result_marker.ddl

echo "Creating fcs_header"
$CMD < ../schema/fcs_header.ddl

echo "Creating fcs_header_marker"
$CMD < ../schema/fcs_header_marker.ddl

# Removed after DR40 Deprecated Table
#echo "Creating fcs_header_marker_2_reagent"
#$CMD < ../schema/fcs_header_marker_2_reagent.ddl

echo "Creating file_info"
$CMD < ../schema/file_info.ddl

echo "Creating hai_result"
$CMD < ../schema/hai_result.ddl

echo "Creating hla_typing_result"
$CMD < ../schema/hla_typing_result.ddl

echo "Creating immune_exposure"
$CMD < ../schema/immune_exposure.ddl

echo "Creating inclusion_exclusion"
$CMD < ../schema/inclusion_exclusion.ddl

echo "Creating intervention"
$CMD < ../schema/intervention.ddl

echo "Creating kir_typing_result"
$CMD < ../schema/kir_typing_result.ddl

echo "Creating lab_test"
$CMD < ../schema/lab_test.ddl

echo "Creating lab_test_panel"
$CMD < ../schema/lab_test_panel.ddl

echo "Creating lab_test_panel_2_protocol"
$CMD < ../schema/lab_test_panel_2_protocol.ddl

echo "Creating mass_spectrometry_result"
$CMD < ../schema/mass_spectrometry_result.ddl

echo "Creating mbaa_result"
$CMD < ../schema/mbaa_result.ddl

echo "Creating neut_ab_titer_result"
$CMD < ../schema/neut_ab_titer_result.ddl

echo "Creating pcr_result"
$CMD < ../schema/pcr_result.ddl

# Removed after DR40 Deprecated Table
#echo "Creating period"
#$CMD < ../schema/period.ddl

echo "Creating personnel"
$CMD < ../schema/personnel.ddl

echo "Creating planned_visit"
$CMD < ../schema/planned_visit.ddl

# Remove after release DR30
#echo "Creating planned_visit_2_arm"
#$CMD < ../schema/planned_visit_2_arm.ddl

echo "Creating program"
$CMD < ../schema/program.ddl

echo "Creating program_2_pesonnel"
$CMD < ../schema/program_2_personnel.ddl

echo "Creating protocol"
$CMD < ../schema/protocol.ddl

# Removed after DR40 Deprecated Table
#echo "Creating protocol_deviation"
#$CMD < ../schema/protocol_deviation.ddl

echo "Creating reagent"
$CMD < ../schema/reagent.ddl

echo "Creating reagent_set_2_reagent"
$CMD < ../schema/reagent_set_2_reagent.ddl

# Removed after DR40 Deprecated Table
#echo "Creating reference_range"
#$CMD < ../schema/reference_range.ddl

# Removed after DR40 Deprecated Table
#echo "Creating reported_early_termination"
#$CMD < ../schema/reported_early_termination.ddl

# Removed before DR33. Table may never be populated
#echo "Creating rna_seq_result"
#$CMD < ../schema/rna_seq_result.ddl

echo "Creating standard_curve"
$CMD < ../schema/standard_curve.ddl

echo "Creating standard_curve_2_file_info"
$CMD < ../schema/standard_curve_2_file_info.ddl

echo "Creating study"
$CMD < ../schema/study.ddl

echo "Creating study_2_condition_or_disease"
$CMD < ../schema/study_2_condition_or_disease.ddl

echo "Creating study_2_panel"
$CMD < ../schema/study_2_panel.ddl

echo "Creating study_2_protocol"
$CMD < ../schema/study_2_protocol.ddl

echo "Creating study_categorization"
$CMD < ../schema/study_categorization.ddl

echo "Creating study_file"
$CMD < ../schema/study_file.ddl

# Removed after DR40 Deprecated Table
#echo "Creating study_glossary"
#$CMD < ../schema/study_glossary.ddl

# Removed after release DR30
#echo "Creating study_image"
#$CMD < ../schema/study_image.ddl

echo "Creating study_link"
$CMD < ../schema/study_link.ddl

echo "Creating study_personnel"
$CMD < ../schema/study_personnel.ddl

echo "Creating study_pubmed"
$CMD < ../schema/study_pubmed.ddl

echo "Creating study_data_release"
$CMD < ../schema/study_data_release.ddl

echo "Creating subject"
$CMD < ../schema/subject.ddl

# Removed after DR40 Deprecated Table
#echo "Creating subject_measure_definition"
#$CMD < ../schema/subject_measure_definition.ddl

# Removed after DR40 Deprecated Table
#echo "Creating subject_measure_result"
#$CMD < ../schema/subject_measure_result.ddl

echo "Creating treatment"
$CMD < ../schema/treatment.ddl

echo "Creating workspace"
$CMD < ../schema/workspace.ddl

