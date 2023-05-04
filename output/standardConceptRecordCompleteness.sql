/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
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
		  'PERSON.GENDER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.GENDER_CONCEPT_ID = 0 
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
cdmFieldName = RACE_CONCEPT_ID
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
		  'PERSON.RACE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.RACE_CONCEPT_ID = 0 
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
cdmFieldName = ETHNICITY_CONCEPT_ID
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
		  'PERSON.ETHNICITY_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.ETHNICITY_CONCEPT_ID = 0 
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
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
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
		  'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE cdmTable.PERIOD_TYPE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
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
		  'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_CONCEPT_ID = 0 
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
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
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
		  'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_TYPE_CONCEPT_ID = 0 
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
cdmTableName = VISIT_OCCURRENCE
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
		  'VISIT_OCCURRENCE.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.ADMITTING_SOURCE_CONCEPT_ID = 0 
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
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
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
		  'VISIT_OCCURRENCE.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.DISCHARGE_TO_CONCEPT_ID = 0 
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
cdmFieldName = CONDITION_CONCEPT_ID
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
		  'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_CONCEPT_ID = 0 
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
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
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
		  'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_TYPE_CONCEPT_ID = 0 
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
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
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
		  'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_STATUS_CONCEPT_ID = 0 
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
cdmFieldName = DRUG_CONCEPT_ID
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
		  'DRUG_EXPOSURE.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_CONCEPT_ID = 0 
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
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
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
		  'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_TYPE_CONCEPT_ID = 0 
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
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
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
		  'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.ROUTE_CONCEPT_ID = 0 
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
cdmFieldName = PROCEDURE_CONCEPT_ID
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PROCEDURE_CONCEPT_ID = 0 
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
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PROCEDURE_TYPE_CONCEPT_ID = 0 
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
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
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
		  'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.MODIFIER_CONCEPT_ID = 0 
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
cdmFieldName = DEVICE_CONCEPT_ID
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
		  'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.DEVICE_CONCEPT_ID = 0 
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
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
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
		  'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.DEVICE_TYPE_CONCEPT_ID = 0 
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
cdmFieldName = MEASUREMENT_CONCEPT_ID
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
		  'MEASUREMENT.MEASUREMENT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.MEASUREMENT_CONCEPT_ID = 0 
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
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
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
		  'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = 0 
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
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
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
		  'MEASUREMENT.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.UNIT_CONCEPT_ID = 0 AND cdmTable.value_as_number IS NOT NULL
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
	WHERE cdmTable.value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
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
		  'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_CONCEPT_ID = 0 
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
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
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
		  'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = 0 
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
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
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
		  'VISIT_DETAIL.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.DISCHARGE_TO_CONCEPT_ID = 0 
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
cdmFieldName = OBSERVATION_CONCEPT_ID
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
		  'OBSERVATION.OBSERVATION_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.OBSERVATION_CONCEPT_ID = 0 
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
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
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
		  'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.OBSERVATION_TYPE_CONCEPT_ID = 0 
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
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
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
		  'OBSERVATION.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.UNIT_CONCEPT_ID = 0 AND cdmTable.value_as_number IS NOT NULL
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
	WHERE cdmTable.value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
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
		  'SPECIMEN.SPECIMEN_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.SPECIMEN_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
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
		  'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.SPECIMEN_TYPE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID
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
		  'SPECIMEN.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.UNIT_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1
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
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE cdmTable.DOMAIN_CONCEPT_ID_1 = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2
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
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE cdmTable.DOMAIN_CONCEPT_ID_2 = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
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
		  'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE cdmTable.RELATIONSHIP_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
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
		  'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CARE_SITE cdmTable
		WHERE cdmTable.PLACE_OF_SERVICE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.CARE_SITE cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
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
		  'PROVIDER.SPECIALTY_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE cdmTable.SPECIALTY_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
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
		  'PROVIDER.GENDER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE cdmTable.GENDER_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
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
		  'COST.COST_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE cdmTable.COST_TYPE_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
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
		  'DRUG_ERA.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE cdmTable.DRUG_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
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
		  'DOSE_ERA.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.DRUG_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
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
		  'DOSE_ERA.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.UNIT_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
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
		  'CONDITION_ERA.CONDITION_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE cdmTable.CONDITION_CONCEPT_ID = 0 
		/*violatedRowsEnd*/
		) violated_rows
) violated_row_count,
( 
	SELECT COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

