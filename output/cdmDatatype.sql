/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.GENDER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.GENDER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.GENDER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.GENDER_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.YEAR_OF_BIRTH' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.YEAR_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.YEAR_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.YEAR_OF_BIRTH) AS varchar),'.') != 0))
      AND cdmTable.YEAR_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.MONTH_OF_BIRTH' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.MONTH_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.MONTH_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.MONTH_OF_BIRTH) AS varchar),'.') != 0))
      AND cdmTable.MONTH_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.DAY_OF_BIRTH' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DAY_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DAY_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DAY_OF_BIRTH) AS varchar),'.') != 0))
      AND cdmTable.DAY_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.RACE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.RACE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.RACE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.RACE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.RACE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.ETHNICITY_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.ETHNICITY_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.ETHNICITY_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.ETHNICITY_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.ETHNICITY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = LOCATION_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.LOCATION_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.LOCATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.LOCATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.LOCATION_ID) AS varchar),'.') != 0))
      AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.CARE_SITE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar),'.') != 0))
      AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION_PERIOD.OBSERVATION_PERIOD_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.OBSERVATION_PERIOD_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.OBSERVATION_PERIOD_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.OBSERVATION_PERIOD_ID) AS varchar),'.') != 0))
      AND cdmTable.OBSERVATION_PERIOD_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION_PERIOD.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.CARE_SITE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar),'.') != 0))
      AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.VISIT_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.ADMITTING_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.ADMITTING_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.ADMITTING_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.ADMITTING_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DISCHARGE_TO_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DISCHARGE_TO_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DISCHARGE_TO_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DISCHARGE_TO_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.PRECEDING_VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PRECEDING_VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PRECEDING_VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PRECEDING_VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.PRECEDING_VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CONDITION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CONDITION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CONDITION_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CONDITION_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CONDITION_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CONDITION_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.CONDITION_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CONDITION_STATUS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CONDITION_STATUS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CONDITION_STATUS_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.CONDITION_STATUS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CONDITION_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CONDITION_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CONDITION_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.CONDITION_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRUG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRUG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRUG_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRUG_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRUG_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRUG_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DRUG_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.REFILLS' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.REFILLS AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.REFILLS AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.REFILLS) AS varchar),'.') != 0))
      AND cdmTable.REFILLS IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DAYS_SUPPLY' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DAYS_SUPPLY AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DAYS_SUPPLY AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DAYS_SUPPLY) AS varchar),'.') != 0))
      AND cdmTable.DAYS_SUPPLY IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.ROUTE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.ROUTE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.ROUTE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.ROUTE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DRUG_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRUG_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRUG_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRUG_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DRUG_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROCEDURE_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROCEDURE_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROCEDURE_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.PROCEDURE_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROCEDURE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROCEDURE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROCEDURE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PROCEDURE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROCEDURE_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROCEDURE_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROCEDURE_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PROCEDURE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.MODIFIER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.MODIFIER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.MODIFIER_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.MODIFIER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.QUANTITY' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.QUANTITY AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.QUANTITY AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.QUANTITY) AS varchar),'.') != 0))
      AND cdmTable.QUANTITY IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROCEDURE_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROCEDURE_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROCEDURE_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PROCEDURE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DEVICE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DEVICE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DEVICE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DEVICE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DEVICE_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DEVICE_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DEVICE_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DEVICE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.QUANTITY' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.QUANTITY AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.QUANTITY AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.QUANTITY) AS varchar),'.') != 0))
      AND cdmTable.QUANTITY IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.DEVICE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DEVICE_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DEVICE_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DEVICE_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DEVICE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.MEASUREMENT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.MEASUREMENT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.MEASUREMENT_ID) AS varchar),'.') != 0))
      AND cdmTable.MEASUREMENT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.MEASUREMENT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.MEASUREMENT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.MEASUREMENT_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.MEASUREMENT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.MEASUREMENT_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.MEASUREMENT_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.MEASUREMENT_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.MEASUREMENT_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.OPERATOR_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.OPERATOR_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.OPERATOR_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.OPERATOR_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.OPERATOR_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.VALUE_AS_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VALUE_AS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VALUE_AS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VALUE_AS_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.VALUE_AS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.CARE_SITE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar),'.') != 0))
      AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.NOTE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.NOTE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.NOTE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.NOTE_ID) AS varchar),'.') != 0))
      AND cdmTable.NOTE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.NOTE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.NOTE_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.NOTE_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.NOTE_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.NOTE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.NOTE_CLASS_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.NOTE_CLASS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.NOTE_CLASS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.NOTE_CLASS_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.NOTE_CLASS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.ENCODING_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.ENCODING_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.ENCODING_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.ENCODING_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.ENCODING_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.LANGUAGE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.LANGUAGE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.LANGUAGE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.LANGUAGE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.LANGUAGE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.NOTE_NLP_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.NOTE_NLP_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.NOTE_NLP_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.NOTE_NLP_ID) AS varchar),'.') != 0))
      AND cdmTable.NOTE_NLP_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.NOTE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.NOTE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.NOTE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.NOTE_ID) AS varchar),'.') != 0))
      AND cdmTable.NOTE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.SECTION_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SECTION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SECTION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SECTION_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.SECTION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.NOTE_NLP_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.NOTE_NLP_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.NOTE_NLP_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.NOTE_NLP_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.NOTE_NLP_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.NOTE_NLP_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.OBSERVATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.OBSERVATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.OBSERVATION_ID) AS varchar),'.') != 0))
      AND cdmTable.OBSERVATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.OBSERVATION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.OBSERVATION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.OBSERVATION_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.OBSERVATION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.OBSERVATION_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.OBSERVATION_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.OBSERVATION_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.OBSERVATION_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.QUALIFIER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.QUALIFIER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.QUALIFIER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.QUALIFIER_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.QUALIFIER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_OCCURRENCE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.VISIT_DETAIL_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar),'.') != 0))
      AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.OBSERVATION_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.OBSERVATION_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.OBSERVATION_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.OBSERVATION_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.SPECIMEN_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SPECIMEN_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SPECIMEN_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SPECIMEN_ID) AS varchar),'.') != 0))
      AND cdmTable.SPECIMEN_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.SPECIMEN_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SPECIMEN_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SPECIMEN_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SPECIMEN_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.SPECIMEN_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SPECIMEN_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SPECIMEN_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SPECIMEN_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.SPECIMEN_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.ANATOMIC_SITE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.ANATOMIC_SITE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.ANATOMIC_SITE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.ANATOMIC_SITE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.ANATOMIC_SITE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.DISEASE_STATUS_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DISEASE_STATUS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DISEASE_STATUS_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DISEASE_STATUS_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DISEASE_STATUS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DOMAIN_CONCEPT_ID_1 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DOMAIN_CONCEPT_ID_1 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DOMAIN_CONCEPT_ID_1) AS varchar),'.') != 0))
      AND cdmTable.DOMAIN_CONCEPT_ID_1 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.FACT_ID_1' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.FACT_ID_1 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.FACT_ID_1 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.FACT_ID_1) AS varchar),'.') != 0))
      AND cdmTable.FACT_ID_1 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DOMAIN_CONCEPT_ID_2 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DOMAIN_CONCEPT_ID_2 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DOMAIN_CONCEPT_ID_2) AS varchar),'.') != 0))
      AND cdmTable.DOMAIN_CONCEPT_ID_2 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.FACT_ID_2' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.FACT_ID_2 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.FACT_ID_2 AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.FACT_ID_2) AS varchar),'.') != 0))
      AND cdmTable.FACT_ID_2 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.RELATIONSHIP_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.RELATIONSHIP_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.RELATIONSHIP_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.RELATIONSHIP_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'LOCATION.LOCATION_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.LOCATION cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.LOCATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.LOCATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.LOCATION_ID) AS varchar),'.') != 0))
      AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.LOCATION
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CARE_SITE.CARE_SITE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CARE_SITE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar),'.') != 0))
      AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CARE_SITE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CARE_SITE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PLACE_OF_SERVICE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PLACE_OF_SERVICE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PLACE_OF_SERVICE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PLACE_OF_SERVICE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CARE_SITE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CARE_SITE.LOCATION_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CARE_SITE cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.LOCATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.LOCATION_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.LOCATION_ID) AS varchar),'.') != 0))
      AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CARE_SITE
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.PROVIDER_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PROVIDER_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PROVIDER_ID) AS varchar),'.') != 0))
      AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.SPECIALTY_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SPECIALTY_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SPECIALTY_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SPECIALTY_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.SPECIALTY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.CARE_SITE_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CARE_SITE_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar),'.') != 0))
      AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = YEAR_OF_BIRTH
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.YEAR_OF_BIRTH' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.YEAR_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.YEAR_OF_BIRTH AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.YEAR_OF_BIRTH) AS varchar),'.') != 0))
      AND cdmTable.YEAR_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.GENDER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.GENDER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.GENDER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.GENDER_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.SPECIALTY_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SPECIALTY_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SPECIALTY_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SPECIALTY_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.SPECIALTY_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.GENDER_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.GENDER_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.GENDER_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.GENDER_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.GENDER_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PAYER_PLAN_PERIOD_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PAYER_PLAN_PERIOD_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PAYER_PLAN_PERIOD_ID) AS varchar),'.') != 0))
      AND cdmTable.PAYER_PLAN_PERIOD_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PAYER_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PAYER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PAYER_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PAYER_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PAYER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PAYER_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PAYER_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PAYER_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PAYER_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PAYER_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PLAN_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PLAN_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PLAN_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PLAN_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PLAN_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PLAN_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PLAN_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PLAN_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PLAN_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.PLAN_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.SPONSOR_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SPONSOR_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SPONSOR_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SPONSOR_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.SPONSOR_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.SPONSOR_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.SPONSOR_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.SPONSOR_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.SPONSOR_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.STOP_REASON_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.STOP_REASON_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.STOP_REASON_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.STOP_REASON_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.STOP_REASON_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.STOP_REASON_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.STOP_REASON_SOURCE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.STOP_REASON_SOURCE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.STOP_REASON_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'COST.COST_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.COST_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.COST_TYPE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.COST_TYPE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.COST_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'COST.CURRENCY_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CURRENCY_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CURRENCY_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CURRENCY_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.CURRENCY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'COST.REVENUE_CODE_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.REVENUE_CODE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.REVENUE_CODE_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.REVENUE_CODE_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.REVENUE_CODE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'COST.DRG_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRG_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DRG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_ERA.DRUG_ERA_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRUG_ERA_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRUG_ERA_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRUG_ERA_ID) AS varchar),'.') != 0))
      AND cdmTable.DRUG_ERA_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_ERA.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRUG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRUG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRUG_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_ERA.DRUG_EXPOSURE_COUNT' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRUG_EXPOSURE_COUNT AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRUG_EXPOSURE_COUNT AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRUG_EXPOSURE_COUNT) AS varchar),'.') != 0))
      AND cdmTable.DRUG_EXPOSURE_COUNT IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_ERA.GAP_DAYS' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.GAP_DAYS AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.GAP_DAYS AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.GAP_DAYS) AS varchar),'.') != 0))
      AND cdmTable.GAP_DAYS IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DOSE_ERA.DOSE_ERA_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DOSE_ERA_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DOSE_ERA_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DOSE_ERA_ID) AS varchar),'.') != 0))
      AND cdmTable.DOSE_ERA_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DOSE_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DOSE_ERA.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.DRUG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.DRUG_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.DRUG_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'DOSE_ERA.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.UNIT_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_ERA.CONDITION_ERA_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CONDITION_ERA_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CONDITION_ERA_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CONDITION_ERA_ID) AS varchar),'.') != 0))
      AND cdmTable.CONDITION_ERA_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.PERSON_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.PERSON_ID) AS varchar),'.') != 0))
      AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
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
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_ERA.CONDITION_CONCEPT_ID' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CONDITION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CONDITION_CONCEPT_ID AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CONDITION_CONCEPT_ID) AS varchar),'.') != 0))
      AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA
) denominator
;

/*********
FIELD_CDM_DATATYPE
At a minimum, for each field that is supposed to be an integer, verify it is an integer
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT
**********/
SELECT 
  num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
	denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_ERA.CONDITION_OCCURRENCE_COUNT' AS violating_field, 
		  cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE 
		  (CASE WHEN (CAST(cdmTable.CONDITION_OCCURRENCE_COUNT AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 0 
		    OR (CASE WHEN (CAST(cdmTable.CONDITION_OCCURRENCE_COUNT AS VARCHAR) ~ '^([0-9]+\.?[0-9]*|\.[0-9]+)$') THEN 1 ELSE 0 END = 1 
		      AND STRPOS(CAST(ABS(cdmTable.CONDITION_OCCURRENCE_COUNT) AS varchar),'.') != 0))
      AND cdmTable.CONDITION_OCCURRENCE_COUNT IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA
) denominator
;

