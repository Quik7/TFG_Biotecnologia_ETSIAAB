#!/bin/bash

if [ $# != 4 ]
  then
    echo ""
    echo "Usage: loadLkData.sh Host, User, Password, Database"
    echo ""
    exit 1
fi

HOST=$1
USER=$2
PASSWORD=$3
DATABASE=$4

CMD="mysql --local_infile -h $HOST -u $USER -p$PASSWORD $DATABASE"

echo "Loading lk_adverse_event_severity"
$CMD < ../load/lk_adverse_event_severity.load

echo "Loading lk_age_event"
$CMD < ../load/lk_age_event.load

echo "Loading lk_analyte"
$CMD < ../load/lk_analyte.load

echo "Loading lk_ancestral_population"
$CMD < ../load/lk_ancestral_population.load

echo "Loading lk_arm_type"
$CMD < ../load/lk_arm_type.load

echo "Loading lk_cell_population"
$CMD < ../load/lk_cell_population.load

echo "Loading lk_cell_population_marker"
$CMD < ../load/lk_cell_population_marker.load

echo "Loading lk_compound_role"
$CMD < ../load/lk_compound_role.load

echo "Loading lk_criterion_category"
$CMD < ../load/lk_criterion_category.load

echo "Loading lk_data_completeness"
$CMD < ../load/lk_data_completeness.load

# Removed DR21
#echo "Loading lk_data_format"
#$CMD < ../load/lk_data_format.load

echo "Loading lk_disease"
$CMD < ../load/lk_disease.load

echo "Loading lk_disease_stage"
$CMD < ../load/lk_disease_stage.load

echo "Loading lk_ethnicity"
$CMD < ../load/lk_ethnicity.load

echo "Loading lk_exp_measurement_tech"
$CMD < ../load/lk_exp_measurement_tech.load

# Removed DR23
#echo "Loading lk_experiment_purpose"
#$CMD < ../load/lk_experiment_purpose.load

echo "Loading lk_exposure_material"
$CMD < ../load/lk_exposure_material.load

echo "Loading lk_exposure_process"
$CMD < ../load/lk_exposure_process.load

echo "Loading lk_expsample_result_schema"
$CMD < ../load/lk_expsample_result_schema.load

echo "Loading lk_file_detail"
$CMD < ../load/lk_file_detail.load

# Removed DR23
#echo "Loading lk_file_purpose"
#$CMD < ../load/lk_file_purpose.load

echo "Loading lk_gender"
$CMD < ../load/lk_gender.load

echo "Loading lk_hmdb"
$CMD < ../load/lk_hmdb.load

echo "Loading lk_lab_test_name"
$CMD < ../load/lk_lab_test_name.load

echo "Loading lk_lab_test_panel_name"
$CMD < ../load/lk_lab_test_panel_name.load

echo "Loading lk_locus_name"
$CMD < ../load/lk_locus_name.load

echo "Loading lk_mass_spectrometry_type"
$CMD < ../load/lk_mass_spectrometry_type.load

echo "Loading lk_organization"
$CMD < ../load/lk_organization.load

echo "Loading lk_personnel_role"
$CMD < ../load/lk_personnel_role.load

echo "Loading lk_plate_type"
$CMD < ../load/lk_plate_type.load

echo "Loading lk_protein_name"
$CMD < ../load/lk_protein_name.load

echo "Loading lk_protocol_type"
$CMD < ../load/lk_protocol_type.load

echo "Loading lk_public_repository"
$CMD < ../load/lk_public_repository.load

echo "Loading lk_race"
$CMD < ../load/lk_race.load

echo "Loading lk_reagent_type"
$CMD < ../load/lk_reagent_type.load

echo "Loading lk_research_focus"
$CMD < ../load/lk_research_focus.load

echo "Loading lk_sample_type"
$CMD < ../load/lk_sample_type.load

echo "Loading lk_source_type"
$CMD < ../load/lk_source_type.load

echo "Loading lk_species"
$CMD < ../load/lk_species.load

echo "Loading lk_study_file_type"
$CMD < ../load/lk_study_file_type.load

echo "Loading lk_study_panel"
$CMD < ../load/lk_study_panel.load

#echo "Loading lk_study_type"
#$CMD < ../load/lk_study_type.load

echo "Loading lk_subject_location"
$CMD < ../load/lk_subject_location.load

echo "Loading lk_t0_event"
$CMD < ../load/lk_t0_event.load

echo "Loading lk_time_unit"
$CMD < ../load/lk_time_unit.load

echo "Loading lk_transcript_type"
$CMD < ../load/lk_transcript_type.load

echo "Loading lk_unit_of_measure"
$CMD < ../load/lk_unit_of_measure.load

echo "Loading lk_user_role_type"
$CMD < ../load/lk_user_role_type.load

echo "Loading lk_virus_strain"
$CMD < ../load/lk_virus_strain.load

echo "Loading lk_visibility_category"
$CMD < ../load/lk_visibility_category.load
