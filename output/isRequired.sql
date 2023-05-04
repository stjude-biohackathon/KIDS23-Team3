/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = PERSON_ID
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
		  'PERSON.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.GENDER_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH
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
		  'PERSON.YEAR_OF_BIRTH' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.YEAR_OF_BIRTH IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.RACE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.ETHNICITY_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_ID
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
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE cdmTable.OBSERVATION_PERIOD_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID
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
		  'OBSERVATION_PERIOD.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
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
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE cdmTable.OBSERVATION_PERIOD_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
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
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE cdmTable.OBSERVATION_PERIOD_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.PERIOD_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
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
		  'VISIT_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_OCCURRENCE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID
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
		  'VISIT_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.VISIT_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
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
		  'VISIT_OCCURRENCE.VISIT_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
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
		  'VISIT_OCCURRENCE.VISIT_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.VISIT_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_OCCURRENCE_ID
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
		  'CONDITION_OCCURRENCE.CONDITION_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_OCCURRENCE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID
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
		  'CONDITION_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.CONDITION_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
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
		  'CONDITION_OCCURRENCE.CONDITION_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.CONDITION_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_ID
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_EXPOSURE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID
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
		  'DRUG_EXPOSURE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DRUG_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_EXPOSURE_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_EXPOSURE_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DRUG_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_OCCURRENCE_ID
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PROCEDURE_OCCURRENCE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID
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
		  'PROCEDURE_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.PROCEDURE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PROCEDURE_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.PROCEDURE_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_ID
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
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.DEVICE_EXPOSURE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID
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
		  'DEVICE_EXPOSURE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DEVICE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
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
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.DEVICE_EXPOSURE_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DEVICE_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_ID
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
		  'MEASUREMENT.MEASUREMENT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.MEASUREMENT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID
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
		  'MEASUREMENT.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.MEASUREMENT_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
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
		  'MEASUREMENT.MEASUREMENT_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.MEASUREMENT_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.MEASUREMENT_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_ID
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
		  'VISIT_DETAIL.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID
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
		  'VISIT_DETAIL.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.VISIT_DETAIL_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
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
		  'VISIT_DETAIL.VISIT_DETAIL_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
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
		  'VISIT_DETAIL.VISIT_DETAIL_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID
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
		  'VISIT_DETAIL.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_OCCURRENCE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_ID
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
		  'NOTE.NOTE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.NOTE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = PERSON_ID
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
		  'NOTE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
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
		  'NOTE.NOTE_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.NOTE_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
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
		  'NOTE.NOTE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.NOTE_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
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
		  'NOTE.NOTE_CLASS_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.NOTE_CLASS_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_TEXT
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
		  'NOTE.NOTE_TEXT' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.NOTE_TEXT IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
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
		  'NOTE.ENCODING_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.ENCODING_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
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
		  'NOTE.LANGUAGE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.LANGUAGE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_ID
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
		  'NOTE_NLP.NOTE_NLP_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE cdmTable.NOTE_NLP_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_ID
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
		  'NOTE_NLP.NOTE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE cdmTable.NOTE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = LEXICAL_VARIANT
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
		  'NOTE_NLP.LEXICAL_VARIANT' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE cdmTable.LEXICAL_VARIANT IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATE
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
		  'NOTE_NLP.NLP_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE cdmTable.NLP_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_ID
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
		  'OBSERVATION.OBSERVATION_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.OBSERVATION_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID
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
		  'OBSERVATION.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.OBSERVATION_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
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
		  'OBSERVATION.OBSERVATION_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.OBSERVATION_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.OBSERVATION_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_ID
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
		  'SPECIMEN.SPECIMEN_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.SPECIMEN_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID
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
		  'SPECIMEN.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.SPECIMEN_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.SPECIMEN_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
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
		  'SPECIMEN.SPECIMEN_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.SPECIMEN_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DOMAIN_CONCEPT_ID_1 IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_1
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
		  'FACT_RELATIONSHIP.FACT_ID_1' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE cdmTable.FACT_ID_1 IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DOMAIN_CONCEPT_ID_2 IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_2
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
		  'FACT_RELATIONSHIP.FACT_ID_2' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE cdmTable.FACT_ID_2 IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.RELATIONSHIP_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = LOCATION_ID
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
		  'LOCATION.LOCATION_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.LOCATION cdmTable
		WHERE cdmTable.LOCATION_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.LOCATION cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_ID
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
		  'CARE_SITE.CARE_SITE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CARE_SITE cdmTable
		WHERE cdmTable.CARE_SITE_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CARE_SITE cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_ID
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
		  'PROVIDER.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE cdmTable.PROVIDER_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_ID
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
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.PAYER_PLAN_PERIOD_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID
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
		  'PAYER_PLAN_PERIOD.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
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
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.PAYER_PLAN_PERIOD_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
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
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.PAYER_PLAN_PERIOD_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_ID
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
		  'COST.COST_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE cdmTable.COST_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_EVENT_ID
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
		  'COST.COST_EVENT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE cdmTable.COST_EVENT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID
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
		  'COST.COST_DOMAIN_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE cdmTable.COST_DOMAIN_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.COST_TYPE_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_ID
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
		  'DRUG_ERA.DRUG_ERA_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE cdmTable.DRUG_ERA_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID
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
		  'DRUG_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DRUG_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
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
		  'DRUG_ERA.DRUG_ERA_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE cdmTable.DRUG_ERA_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
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
		  'DRUG_ERA.DRUG_ERA_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE cdmTable.DRUG_ERA_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_ID
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
		  'DOSE_ERA.DOSE_ERA_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.DOSE_ERA_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID
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
		  'DOSE_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.DRUG_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.UNIT_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE
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
		  'DOSE_ERA.DOSE_VALUE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.DOSE_VALUE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
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
		  'DOSE_ERA.DOSE_ERA_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.DOSE_ERA_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
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
		  'DOSE_ERA.DOSE_ERA_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.DOSE_ERA_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_ID
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
		  'CONDITION_ERA.CONDITION_ERA_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE cdmTable.CONDITION_ERA_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID
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
		  'CONDITION_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE cdmTable.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
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
		WHERE cdmTable.CONDITION_CONCEPT_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
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
		  'CONDITION_ERA.CONDITION_ERA_START_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE cdmTable.CONDITION_ERA_START_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

/*********
FIELD_IS_NOT_NULLABLE
For each table, check that the fields in which IS_NOT_NULLABLE == TRUE, there are no null values in that field.
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
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
		  'CONDITION_ERA.CONDITION_ERA_END_DATE' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE cdmTable.CONDITION_ERA_END_DATE IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

