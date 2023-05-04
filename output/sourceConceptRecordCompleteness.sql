/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.GENDER_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.GENDER_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.RACE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.RACE_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.ETHNICITY_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.ETHNICITY_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.VISIT_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DRUG_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PROCEDURE_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.DEVICE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.DEVICE_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_DETAIL_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.ADMITTING_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.OBSERVATION_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.SPECIALTY_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE cdmTable.SPECIALTY_SOURCE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

