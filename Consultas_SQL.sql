#Cuántos valores alterados hay por citoquina
SELECT COUNT(analyte_preferred) AS 'IL1B VALUES'
FROM elisa_result
WHERE analyte_preferred IN ('IL1B') AND value_preferred > 0.5;

SELECT COUNT(analyte_preferred) AS 'IL6 VALUES'
FROM elisa_result
WHERE analyte_preferred IN ('IL6') AND value_preferred > 70;

SELECT COUNT(analyte_preferred) AS 'TNFA VALUES'
FROM elisa_result
WHERE analyte_preferred IN ('IL6') AND value_preferred > 35;

SELECT COUNT(analyte_preferred) AS 'IL8 VALUES'
FROM elisa_result
WHERE analyte_preferred IN ('IL6') AND value_preferred > 50;

SELECT COUNT(name_reported) AS 'PCR_COVID'
FROM lab_test
WHERE name_reported = 'SARS-CoV-2 PCR';

UPDATE elisa_result 
SET value_preferred = POWER(2, value_preferred);

SELECT COUNT(subject_accession)
FROM final
WHERE MAX_SEVERITY=1;

#CREATE TABLE cito_val_filtr AS
SELECT subject_accession, biosample_accession, study_time_collected,
  CASE WHEN analyte_preferred = 'IL6' THEN value_preferred ELSE NULL END AS IL6,
  CASE WHEN analyte_preferred = 'IL8' THEN value_preferred ELSE NULL END AS IL8,
  CASE WHEN analyte_preferred = 'TNFA' THEN value_preferred ELSE NULL END AS TNFA,
  CASE WHEN analyte_preferred = 'IL1B' THEN value_preferred ELSE NULL END AS IL1B
FROM elisa_result
WHERE 
  ((analyte_preferred = 'IL6' AND value_preferred > 70) OR
  (analyte_preferred = 'IL8' AND value_preferred > 50) OR
  (analyte_preferred = 'TNFA' AND value_preferred > 35) OR
  (analyte_preferred = 'IL1B' AND value_preferred > 0.5))
GROUP BY biosample_accession;


#TABLA CON TODOS LOS DATOS SIN FILTRAR SI ESTÁN POR ENCIMA O POR DEBAJO DEL UMBRAL
CREATE TABLE cito_val AS
SELECT e.subject_accession, s.gender, asu.max_subject_age AS Age, MIN(e.study_time_collected) AS study_time_collected, ac.name,
  MAX(CASE WHEN analyte_preferred = 'IL6' THEN value_preferred ELSE NULL END) AS IL6,
  MAX(CASE WHEN analyte_preferred = 'IL8' THEN value_preferred ELSE NULL END) AS IL8,
  MAX(CASE WHEN analyte_preferred = 'TNFA' THEN value_preferred ELSE NULL END) AS TNFA,
  MAX(CASE WHEN analyte_preferred = 'IL1B' THEN value_preferred ELSE NULL END) AS IL1B
FROM elisa_result e , arm_2_subject a, arm_or_cohort ac, subject s, arm_2_subject asu
WHERE 
  e.analyte_preferred IN ('IL6', 'IL8', 'TNFA', 'IL1B') AND e.subject_accession=a.subject_accession AND a.arm_accession = ac.arm_accession AND e.subject_accession = s.subject_accession AND asu.subject_accession = e.subject_accession
group by e.subject_accession;

SELECT COUNT(subject_accession) 
FROM cito_val_no_filtr_2
WHERE IL6 > 70 AND IL8 > 50 AND TNFA > 35 AND IL1B > 0.5;

SELECT COUNT(subject_accession) 
FROM cito_val_no_filtr_2
WHERE IL6 > 70;

UPDATE cito_val_no_filtr_2 
SET IL6 = ROUND(IL6, 1),
    IL8 = ROUND(IL8, 1),
    TNFA = ROUND(TNFA, 1),
    IL1B = ROUND(IL1B, 1);

#Convertir columna lab test por pruebas medidas
CREATE TABLE lab_test_filtr AS
SELECT b.subject_accession, b.biosample_accession, asu.max_subject_age AS Age, s.gender, MIN(b.study_time_collected) AS study_time_collected, ac.name,
       MAX(CASE WHEN l.name_reported = 'CRP_log2' THEN l.result_value_preferred END) AS CRP,
       MAX(CASE WHEN l.name_reported = 'D-DIMER_log2' THEN l.result_value_preferred END) AS D_DIMER,
	   MAX(CASE WHEN l.name_reported = 'FERRITIN_log2' THEN l.result_value_preferred END) AS FERRETIN,
       MAX(CASE WHEN l.name_reported = 'FIBRINOGEN_log2' THEN l.result_value_preferred END) AS FIBRINOGEN,
       MAX(CASE WHEN l.name_reported = 'INTERLEUKIN-6, SERUM_LabCorp_log2' THEN l.result_value_preferred END) AS IL6,
       MAX(CASE WHEN l.name_reported = 'Albumin' THEN l.result_value_preferred END) AS Albumin,
       MAX(CASE WHEN l.name_reported = 'ALT_log2' THEN l.result_value_preferred END) AS ALT,
       MAX(CASE WHEN l.name_reported = 'ANION_GAP' THEN l.result_value_preferred END) AS ANION_GAP,
       MAX(CASE WHEN l.name_reported = 'APTT_log2' THEN l.result_value_preferred END) AS APTT,
       MAX(CASE WHEN l.name_reported = 'AST_log2' THEN l.result_value_preferred END) AS AST,
       MAX(CASE WHEN l.name_reported = 'BASE_EXCESS_ARTERIAL' THEN l.result_value_preferred END) AS BASE_EXCESS_ARTERIAL,
       MAX(CASE WHEN l.name_reported = 'BASE_EXCESS_VENOUS' THEN l.result_value_preferred END) AS BASE_EXCESS_VENOUS,
       MAX(CASE WHEN l.name_reported = 'Bilirubin' THEN l.result_value_preferred END) AS Bilirubin,
       MAX(CASE WHEN l.name_reported = 'BRAIN_TRIURETIC_PROTEIN_log2' THEN l.result_value_preferred END) AS BRAIN_TRIURETIC_PROTEIN,
       MAX(CASE WHEN l.name_reported = 'BUN' THEN l.result_value_preferred END) AS BUN,
       MAX(CASE WHEN l.name_reported = 'Calcium' THEN l.result_value_preferred END) AS Calcium,
       MAX(CASE WHEN l.name_reported = 'CREATINE_KINASE' THEN l.result_value_preferred END) AS CREATINE_KINASE,
       MAX(CASE WHEN l.name_reported = 'CREATININE_log2' THEN l.result_value_preferred END) AS CREATININE,
       MAX(CASE WHEN l.name_reported = 'EGFR' THEN l.result_value_preferred END) AS EGFR,
       MAX(CASE WHEN l.name_reported = 'ESR' THEN l.result_value_preferred END) AS ESR,
       MAX(CASE WHEN l.name_reported = 'Glucose' THEN l.result_value_preferred END) AS Glucose,
       MAX(CASE WHEN l.name_reported = 'HCO3_ARTERIAL' THEN l.result_value_preferred END) AS HCO3_ARTERIAL,
       MAX(CASE WHEN l.name_reported = 'HCO3_VENOUS' THEN l.result_value_preferred END) AS HCO3_VENOUS,
       MAX(CASE WHEN l.name_reported = 'HEMATOCRIT_log2' THEN l.result_value_preferred END) AS HEMATOCRIT_log2,
       MAX(CASE WHEN l.name_reported = 'Hemoglobin' THEN l.result_value_preferred END) AS Hemoglobin,
       MAX(CASE WHEN l.name_reported = 'INR_log2' THEN l.result_value_preferred END) AS INR,
       MAX(CASE WHEN l.name_reported = 'LDH_log2' THEN l.result_value_preferred END) AS LDH,
       MAX(CASE WHEN l.name_reported = 'O2_SATURATION_ARTERIAL' THEN l.result_value_preferred END) AS O2_SATURATION_ARTERIAL,
       MAX(CASE WHEN l.name_reported = 'O2_SATURATION_VENOUS' THEN l.result_value_preferred END) AS O2_SATURATION_VENOUS,
       MAX(CASE WHEN l.name_reported = 'PC02_VENOUS' THEN l.result_value_preferred END) AS PC02_VENOUS,
       MAX(CASE WHEN l.name_reported = 'PCO2_ARTERIAL' THEN l.result_value_preferred END) AS PCO2_ARTERIAL,
       MAX(CASE WHEN l.name_reported = 'PH_ARTERIAL' THEN l.result_value_preferred END) AS PH_ARTERIAL,
       MAX(CASE WHEN l.name_reported = 'PH_VENOUS' THEN l.result_value_preferred END) AS PH_VENOUS,
       MAX(CASE WHEN l.name_reported = 'PO2_ARTERIAL' THEN l.result_value_preferred END) AS PO2_ARTERIAL,
       MAX(CASE WHEN l.name_reported = 'PO2_VENOUS' THEN l.result_value_preferred END) AS PO2_VENOUS,
       MAX(CASE WHEN l.name_reported = 'Potassium' THEN l.result_value_preferred END) AS Potassium,
       MAX(CASE WHEN l.name_reported = 'PROTHROMBIN_TIME' THEN l.result_value_preferred END) AS PROTHROMBIN_TIME,
       MAX(CASE WHEN l.name_reported = 'PROCALCITONIN_log2' THEN l.result_value_preferred END) AS PROCALCITONIN,
       MAX(CASE WHEN l.name_reported = 'Sodium' THEN l.result_value_preferred END) AS Sodium,
       MAX(CASE WHEN l.name_reported = 'Chloride' THEN l.result_value_preferred END) AS Chloride,
       MAX(CASE WHEN l.name_reported = 'URIC_ACID' THEN l.result_value_preferred END) AS URIC_ACID,
       MAX(CASE WHEN l.name_reported = 'TROPONIN-I_log2' THEN l.result_value_preferred END) AS TROPONIN_I,
       MAX(CASE WHEN l.name_reported = 'BASOPHIL_NO' THEN l.result_value_preferred END) AS BASOPHIL_NO,
       MAX(CASE WHEN l.name_reported = 'BASOPHIL_PERCENT' THEN l.result_value_preferred END) AS BASOPHIL_PERCENT,
       MAX(CASE WHEN l.name_reported = 'EOSINOPHIL_NO' THEN l.result_value_preferred END) AS EOSINOPHIL_NO,
       MAX(CASE WHEN l.name_reported = 'EOSINOPHIL_(PERCENT)' THEN l.result_value_preferred END) AS EOSINOPHIL_PERCENT,
       MAX(CASE WHEN l.name_reported = 'LYMPHOCYTE_NO' THEN l.result_value_preferred END) AS LYMPHOCYTE_NO,
       MAX(CASE WHEN l.name_reported = 'LYMPHOCYTE_(PERCENT)' THEN l.result_value_preferred END) AS LYMPHOCYTE_PERCENT,
       MAX(CASE WHEN l.name_reported = 'MEAN_PLATELET_VOLUME' THEN l.result_value_preferred END) AS MEAN_PLATELET_VOLUME,
       MAX(CASE WHEN l.name_reported = 'MONOCYTE_NO' THEN l.result_value_preferred END) AS MONOCYTE_NO,
       MAX(CASE WHEN l.name_reported = 'MONOCYTE_(PERCENT)' THEN l.result_value_preferred END) AS MONOCYTE_PERCENT,
       MAX(CASE WHEN l.name_reported = 'NEUTROPHIL_NO' THEN l.result_value_preferred END) AS NEUTROPHIL_NO,
       MAX(CASE WHEN l.name_reported = 'NEUTROPHIL_(PERCENT)' THEN l.result_value_preferred END) AS NEUTROPHIL_PERCENT,
       MAX(CASE WHEN l.name_reported = 'PLATELET' THEN l.result_value_preferred END) AS PLATELET,
       MAX(CASE WHEN l.name_reported = 'RBC_COUNT' THEN l.result_value_preferred END) AS RBC_COUNT,
       MAX(CASE WHEN l.name_reported = 'WBC_COUNT' THEN l.result_value_preferred END) AS WBC_COUNT
FROM lab_test l, biosample b, arm_2_subject a, arm_or_cohort ac, subject s, arm_2_subject asu
WHERE l.biosample_accession = b.biosample_accession AND b.subject_accession=a.subject_accession AND a.arm_accession = ac.arm_accession AND b.subject_accession = s.subject_accession AND asu.subject_accession = b.subject_accession
GROUP BY b.subject_accession;

#Convertir columna name_reported para que aparezcan por cada pacientes todas sus comorbilidades y sea más fácil de interpretar los datos
CREATE TABLE comorbilidades AS
SELECT a.subject_accession, s.gender, asu.max_subject_age AS Age,
	MAX(CASE WHEN a.name_reported = 'SMOKING_STATUS' THEN a.result_value_reported END) AS SMOKING_STATUS,
    MAX(CASE WHEN a.name_reported = 'DIABETES' THEN a.result_value_reported END) AS DIABETES,
    MAX(CASE WHEN a.name_reported = 'ARDS' THEN a.result_value_reported END) AS ARDS,
    MAX(CASE WHEN a.name_reported = 'CANCER_FLAG' THEN a.result_value_reported END) AS CANCER_FLAG,
    MAX(CASE WHEN a.name_reported = 'Acute Respiratory Distress Syndrome' THEN a.result_value_reported END) AS Acute_Respiratory_Distress_Syndrome,
    MAX(CASE WHEN a.name_reported = 'BMI' THEN a.result_value_preferred END) AS BMI,
    MAX(CASE WHEN a.name_reported = 'TEMP_MAX' THEN a.result_value_preferred END) AS TEMP_MAX,
    MAX(CASE WHEN a.name_reported = 'HEART_RATE_MAX' THEN a.result_value_preferred END) AS HEART_RATE_MAX,
    MAX(CASE WHEN a.name_reported = 'RESP_RATE_MAX' THEN a.result_value_preferred END) AS RESP_RATE_MAX,
    MAX(CASE WHEN a.name_reported = 'SYSTOL_BP_MAX' THEN a.result_value_preferred END) AS SYSTOL_BP_MAX,
    MAX(CASE WHEN a.name_reported = 'DIASTOL_BP_MAX' THEN a.result_value_preferred END) AS DIASTOL_BP_MAX,
    MAX(CASE WHEN a.name_reported = 'O2SAT_MIN' THEN a.result_value_preferred END) AS O2SAT_MIN,
    MAX(CASE WHEN a.name_reported = 'DECEASED?' THEN a.result_value_reported END) AS DECEASED_Question,
    MAX(CASE WHEN a.name_reported = 'DECEASED' THEN a.result_value_reported END) AS DECEASED,
    MAX(CASE WHEN a.name_reported = 'DISEASE SEVERITY' THEN a.result_value_reported END) AS DISEASE_SEVERITY,
    MAX(CASE WHEN a.name_reported = 'SEVERITY' THEN a.result_value_reported END) AS SEVERITY,
    MAX(CASE WHEN a.name_reported = 'SEVERITY_NUMERIC' THEN a.result_value_reported END) AS SEVERITY_NUMERIC,
    MAX(CASE WHEN a.name_reported = 'MAX_SEVERITY' THEN a.result_value_reported END) AS MAX_SEVERITY,
    MAX(CASE WHEN a.name_reported = 'SOFA_SCORE' THEN a.result_value_reported END) AS SOFA_SCORE,
    MAX(CASE WHEN a.name_reported = 'MAX_SOFA_SCORE' THEN a.result_value_reported END) AS MAX_SOFA_SCORE,
    MAX(CASE WHEN a.name_reported = 'BLOOD_TYPE' THEN a.result_value_reported END) AS BLOOD_TYPE,
    MAX(CASE WHEN a.name_reported = 'Chronic Kidney Disease' THEN a.result_value_reported END) AS Chronic_Kidney_Disease,
    MAX(CASE WHEN a.name_reported = 'Admission to Hospital' THEN a.result_value_reported END) AS Admission_to_Hospital,
    MAX(CASE WHEN a.name_reported = 'ASTHMA' THEN a.result_value_reported END) AS ASTHMA,
    MAX(CASE WHEN a.name_reported = 'Congestive Heart Failure' THEN a.result_value_reported END) AS Congestive_Heart_Failure,
    MAX(CASE WHEN a.name_reported = 'Chronic Obstructive Pulmonary Disease' THEN a.result_value_reported END) AS Chronic_Obstructive_Pulmonary_Disease,
    MAX(CASE WHEN a.name_reported = 'SLEEP_APNEA' THEN a.result_value_reported END) AS SLEEP_APNEA,
    MAX(CASE WHEN a.name_reported = 'ATRIAL_FIBRILLATION' THEN a.result_value_reported END) AS ATRIAL_FIBRILLATION,
    MAX(CASE WHEN a.name_reported = 'CORONARY_ARTERY_DISEASE' THEN a.result_value_reported END) AS CORONARY_ARTERY_DISEASE,
    MAX(CASE WHEN a.name_reported = 'CHRONIC_VIRAL_HEPATITIS' THEN a.result_value_reported END) AS CHRONIC_VIRAL_HEPATITIS,
    MAX(CASE WHEN a.name_reported = 'ALCOHOLIC_NONALCOHOLIC_LIVER_DISEASE' THEN a.result_value_reported END) AS ALCOHOLIC_NONALCOHOLIC_LIVER_DISEASE,
    MAX(CASE WHEN a.name_reported = 'ACUTE_KIDNEY_INJURY' THEN a.result_value_reported END) AS ACUTE_KIDNEY_INJURY,
    MAX(CASE WHEN a.name_reported = 'ACUTE_VENOUS_THROMBOEMBOLISM' THEN a.result_value_reported END) AS ACUTE_VENOUS_THROMBOEMBOLISM,
    MAX(CASE WHEN a.name_reported = 'CEREBRAL_INFARCTION' THEN a.result_value_reported END) AS CEREBRAL_INFARCTION,
    MAX(CASE WHEN a.name_reported = 'INTRACEREBRAL_HEMORRHAGE' THEN a.result_value_reported END) AS INTRACEREBRAL_HEMORRHAGE
FROM assessment_component a, subject s, arm_2_subject asu
WHERE a.subject_accession = s.subject_accession AND asu.subject_accession = a.subject_accession
GROUP BY a.subject_accession;

#CREACIÓN DE UNA TABLA DONDE SE PUEDEN RELACIONAR LOS NIVELES DE LAS CITOQUINAS CON DISTINTAS COMORBILIDADES
CREATE TABLE relaciones AS
SELECT c.subject_accession, c.gender, c.name, c.Age, c.IL6, c.IL8, c.TNFA, c.IL1B, co.SMOKING_STATUS, co.DIABETES, co.ARDS, co.BMI, co.TEMP_MAX, co.HEART_RATE_MAX, co.RESP_RATE_MAX, co.SYSTOL_BP_MAX, co.DIASTOL_BP_MAX, co.O2SAT_MIN, co.DECEASED, co.DISEASE_SEVERITY, co.SEVERITY_NUMERIC, co.MAX_SEVERITY, co.SOFA_SCORE, co.MAX_SOFA_SCORE, co.Chronic_Kidney_Disease, co.Admission_to_Hospital, co.ASTHMA, co.Congestive_Heart_Failure,
co.Chronic_Obstructive_Pulmonary_Disease, co.CANCER_FLAG, co.SLEEP_APNEA, co.ATRIAL_FIBRILLATION, co.CORONARY_ARTERY_DISEASE, co.CHRONIC_VIRAL_HEPATITIS, co.ACUTE_VENOUS_THROMBOEMBOLISM, co.ALCOHOLIC_NONALCOHOLIC_LIVER_DISEASE, co.ACUTE_KIDNEY_INJURY, co.CEREBRAL_INFARCTION, co.INTRACEREBRAL_HEMORRHAGE
FROM cito_val_no_filtr_2 c, comorbilidades co
WHERE co.subject_accession = c.subject_accession;

#COMBINAR DECESOS Y SEVERIDAD CON CITOQUINAS
CREATE TABLE Final AS
SELECT co.subject_accession, co.gender, co.Age, c.study_time_collected, c.name, c.IL6, c.IL8, c.TNFA, c.IL1B, co.DECEASED_Question, co.DECEASED, co.DISEASE_SEVERITY, co.SEVERITY, co.SEVERITY_NUMERIC, co.MAX_SEVERITY
FROM comorbilidades co
JOIN cito_val_no_filtr_2 c
ON co.subject_accession = c.subject_accession;

#ACTUALIZACIÓN DE VALORES DE LA TABLA FINAL PARA QUE SE PUEDA HACER UN CORRECTO ANÁLISIS DE DATOS
UPDATE final
SET DECEASED = COALESCE(DECEASED_Question, DECEASED);

UPDATE final
SET DISEASE_SEVERITY = COALESCE(DISEASE_SEVERITY, SEVERITY);

UPDATE comorbilidades
SET ARDS = COALESCE(ARDS, Acute_Respiratory_Distress_Syndrome);

ALTER TABLE final
DROP COLUMN DECEASED_Question,
DROP COLUMN Acute_Respiratory_Distress_Syndrome,
DROP COLUMN SEVERITY;

#ACTUALIZACIÓN DE VALORES DE LA TABLA COMORBILIDADES PARA QUE SE PUEDA HACER UN CORRECTO ANÁLISIS DE DATOS
UPDATE comorbilidades
SET 
    DECEASED = CASE WHEN DECEASED = 'NA' THEN NULL ELSE DECEASED END,
    DISEASE_SEVERITY = CASE WHEN DISEASE_SEVERITY = 'NA' THEN NULL ELSE DISEASE_SEVERITY END,
    SEVERITY_NUMERIC = CASE WHEN SEVERITY_NUMERIC = 'NA' THEN NULL ELSE SEVERITY_NUMERIC END,
    MAX_SEVERITY = CASE WHEN MAX_SEVERITY = 'NA' THEN NULL ELSE MAX_SEVERITY END;

UPDATE comorbilidades
SET CANCER_FLAG = NULL
WHERE CANCER_FLAG LIKE '%:%' AND CANCER_FLAG NOT LIKE '1:%';

UPDATE comorbilidades
SET CANCER_FLAG = 1
WHERE CANCER_FLAG LIKE '1:%';


UPDATE relaciones SET CANCER_FLAG = REPLACE(CANCER_FLAG, '1:%', '1');


#PASAR DE ºF A ºC
UPDATE comorbilidades
SET TEMP_MAX = (TEMP_MAX - 32) * 5 / 9; 

#CREACIÓN DE LA TABLA CON LOS RESULTADOS DE LA PCR DE LOS PACIENTES
CREATE TABLE PCR_COVID
SELECT b.subject_accession, a.max_subject_age AS Age, s.gender, ac.name, MIN(b.study_time_collected) AS study_time_collected,
       MAX(CASE WHEN l.name_reported = 'SARS-CoV-2 PCR' THEN l.result_value_reported END) AS SARS_CoV_2_PCR
FROM lab_test l, biosample b, arm_2_subject a, arm_or_cohort ac, subject s
WHERE l.biosample_accession = b.biosample_accession AND b.subject_accession=a.subject_accession AND a.arm_accession = ac.arm_accession AND b.subject_accession = s.subject_accession
AND l.name_reported = 'SARS-CoV-2 PCR'
GROUP BY b.biosample_accession;

#CONTEO DEL NÚMERO DE ANÁLISIS DE CITOQUINAS QUE SE LE HIZO A CADA PACIENTE
SELECT subject_accession, FLOOR(COUNT(*)/4) as "Número de análisis"
FROM elisa_result
GROUP BY subject_accession
HAVING COUNT(*) > 1;

#CONSULTA PARA SABER A CUÁNTOS PACIENTES SE LES HIZO MÁS DE UN ANÁLISIS
SELECT 
    SUM(IF(cantidad = 1, 1, 0)) AS conteo_de_unos,
    SUM(IF(cantidad > 1, 1, 0)) AS conteo_mayor_que_uno
FROM (
    SELECT subject_accession, FLOOR(COUNT(*)/4) as cantidad
    FROM elisa_result
    GROUP BY subject_accession
    HAVING COUNT(*) > 1
) subconsulta;


#AÑADIR LOS RESULTADOS DE LA PCR A LAS TABLAS DE INTERÉS
SELECT *
FROM PCR_COVID
WHERE subject_accession IN (
    SELECT subject_accession
    FROM PCR_COVID_PRUEBA
    GROUP BY subject_accession
    HAVING COUNT(*) > 1
);

ALTER TABLE comorbilidades
ADD COLUMN SARS_CoV_2_PCR VARCHAR(50);

UPDATE comorbilidades
JOIN pcr_covid
ON comorbilidades.subject_accession = pcr_covid.subject_accession
SET comorbilidades.SARS_CoV_2_PCR = pcr_covid.SARS_CoV_2_PCR;

ALTER TABLE final
ADD COLUMN SARS_CoV_2_PCR VARCHAR(50);

ALTER TABLE final
DROP COLUMN SARS_CoV_2_PCR;

UPDATE final
JOIN pcr_covid
ON final.subject_accession = pcr_covid.subject_accession
SET final.SARS_CoV_2_PCR = pcr_covid.SARS_CoV_2_PCR;

#COMBINACIÓN DE PACIENTES COVID +- CON WBC
CREATE TABLE COVID_WBC
SELECT p.subject_accession, p.gender, p.Age, p.name, p.SARS_CoV_2_PCR, l.BASOPHIL_NO, l.BASOPHIL_PERCENT, l.EOSINOPHIL_NO, l.EOSINOPHIL_PERCENT, l.LYMPHOCYTE_NO, l.LYMPHOCYTE_PERCENT, l.MEAN_PLATELET_VOLUME, l.MONOCYTE_NO, l.MONOCYTE_PERCENT, l.NEUTROPHIL_NO, l.NEUTROPHIL_PERCENT, l.PLATELET, l.RBC_COUNT, l.WBC_COUNT          
FROM pcr_covid p, lab_test_filtr l
WHERE p.subject_accession = l.subject_accession
GROUP BY p.subject_accession;

#SACAR EL NOMBRE DE TODAS LAS TABLAS Y SU DESCRIPCIÓN
SELECT TABLE_NAME, TABLE_ROWS, TABLE_COMMENT
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'sdy1662_2';