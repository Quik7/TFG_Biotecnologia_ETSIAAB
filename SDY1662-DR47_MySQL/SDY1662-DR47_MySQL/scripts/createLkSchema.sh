#!/bin/bash

if [ $# != 4 ]
  then
    echo ""
    echo "Usage: createLkSchema.sh Host, User, Password, Database"
    echo ""
    exit 1
fi

HOST=$1
USER=$2
PASSWORD=$3
DATABASE=$4

CMD="mysql -h $HOST -u $USER -p$PASSWORD $DATABASE"


echo "Creating lk_adverse_event_severity"
$CMD < ../schema/lk_adverse_event_severity.ddl

echo "Creating lk_age_event"
$CMD < ../schema/lk_age_event.ddl

echo "Creating lk_analyte"
$CMD < ../schema/lk_analyte.ddl

echo "Creating lk_ancestral_population"
$CMD < ../schema/lk_ancestral_population.ddl

echo "Creating lk_arm_type"
$CMD < ../schema/lk_arm_type.ddl

echo "Creating lk_cell_population"
$CMD < ../schema/lk_cell_population.ddl

echo "Creating lk_cell_population_marker"
$CMD < ../schema/lk_cell_population_marker.ddl

echo "Creating lk_compound_role"
$CMD < ../schema/lk_compound_role.ddl

echo "Creating lk_criterion_category"
$CMD < ../schema/lk_criterion_category.ddl

echo "Creating lk_data_completeness"
$CMD < ../schema/lk_data_completeness.ddl

# Removed DR21
#echo "Creating lk_data_format"
#$CMD < ../schema/lk_data_format.ddl

echo "Creating lk_disease"
$CMD < ../schema/lk_disease.ddl

echo "Creating lk_disease_stage"
$CMD < ../schema/lk_disease_stage.ddl

echo "Creating lk_ethnicity"
$CMD < ../schema/lk_ethnicity.ddl

echo "Creating lk_exp_measurement_tech"
$CMD < ../schema/lk_exp_measurement_tech.ddl

# Removed DR23
#echo "Creating lk_experiment_purpose"
#$CMD < ../schema/lk_experiment_purpose.ddl

echo "Creating lk_exposure_material"
$CMD < ../schema/lk_exposure_material.ddl

echo "Creating lk_exposure_process"
$CMD < ../schema/lk_exposure_process.ddl

echo "Creating lk_expsample_result_schema"
$CMD < ../schema/lk_expsample_result_schema.ddl

echo "Creating lk_file_detail"
$CMD < ../schema/lk_file_detail.ddl

echo "Creating lk_hmdb"
$CMD < ../schema/lk_hmdb.ddl

# Removed DR23
#echo "Creating lk_file_purpose"
#$CMD < ../schema/lk_file_purpose.ddl

echo "Creating lk_gender"
$CMD < ../schema/lk_gender.ddl

echo "Creating lk_lab_test_name"
$CMD < ../schema/lk_lab_test_name.ddl

echo "Creating lk_lab_test_panel_name"
$CMD < ../schema/lk_lab_test_panel_name.ddl

echo "Creating lk_locus_name"
$CMD < ../schema/lk_locus_name.ddl

echo "Creating lk_mass_spectrometry_type"
$CMD < ../schema/lk_mass_spectrometry_type.ddl

echo "Creating lk_organization"
$CMD < ../schema/lk_organization.ddl

echo "Creating lk_personnel_role"
$CMD < ../schema/lk_personnel_role.ddl

echo "Creating lk_plate_type"
$CMD < ../schema/lk_plate_type.ddl

echo "Creating lk_protein_name"
$CMD < ../schema/lk_protein_name.ddl

echo "Creating lk_protocol_type"
$CMD < ../schema/lk_protocol_type.ddl

echo "Creating lk_public_repository"
$CMD < ../schema/lk_public_repository.ddl

echo "Creating lk_race"
$CMD < ../schema/lk_race.ddl

echo "Creating lk_reagent_type"
$CMD < ../schema/lk_reagent_type.ddl

echo "Creating lk_research_focus"
$CMD < ../schema/lk_research_focus.ddl

echo "Creating lk_sample_type"
$CMD < ../schema/lk_sample_type.ddl

echo "Creating lk_source_type"
$CMD < ../schema/lk_source_type.ddl

echo "Creating lk_species"
$CMD < ../schema/lk_species.ddl

echo "Creating lk_study_file_type"
$CMD < ../schema/lk_study_file_type.ddl

echo "Creating lk_study_panel"
$CMD < ../schema/lk_study_panel.ddl

#echo "Creating lk_study_type"
#$CMD < ../schema/lk_study_type.ddl

echo "Creating lk_subject_location"
$CMD < ../schema/lk_subject_location.ddl

echo "Creating lk_t0_event"
$CMD < ../schema/lk_t0_event.ddl

echo "Creating lk_time_unit"
$CMD < ../schema/lk_time_unit.ddl

echo "Creating lk_transcript_type"
$CMD < ../schema/lk_transcript_type.ddl

echo "Creating lk_unit_of_measure"
$CMD < ../schema/lk_unit_of_measure.ddl

echo "Creating lk_user_role_type"
$CMD < ../schema/lk_user_role_type.ddl

echo "Creating lk_virus_strain"
$CMD < ../schema/lk_virus_strain.ddl

echo "Creating lk_visibility_category"
$CMD < ../schema/lk_visibility_category.ddl
