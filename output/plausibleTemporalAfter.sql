/*********
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.OBSERVATION_PERIOD_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
plausibleTemporalAfterTableName = OBSERVATION_PERIOD
plausibleTemporalAfterFieldName = OBSERVATION_PERIOD_START_DATE
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
			'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
    WHERE 
			CAST(cdmTable.OBSERVATION_PERIOD_START_DATE AS DATE)
		 > CAST(cdmTable.OBSERVATION_PERIOD_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'VISIT_OCCURRENCE.VISIT_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.VISIT_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'VISIT_OCCURRENCE.VISIT_START_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.VISIT_START_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
plausibleTemporalAfterTableName = VISIT_OCCURRENCE
plausibleTemporalAfterFieldName = VISIT_START_DATE
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
			'VISIT_OCCURRENCE.VISIT_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    WHERE 
			CAST(cdmTable.VISIT_START_DATE AS DATE)
		 > CAST(cdmTable.VISIT_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
plausibleTemporalAfterTableName = VISIT_OCCURRENCE
plausibleTemporalAfterFieldName = VISIT_START_DATETIME
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
			'VISIT_OCCURRENCE.VISIT_END_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    WHERE 
			CAST(cdmTable.VISIT_START_DATETIME AS DATE)
		 > CAST(cdmTable.VISIT_END_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'CONDITION_OCCURRENCE.CONDITION_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.CONDITION_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'CONDITION_OCCURRENCE.CONDITION_START_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.CONDITION_START_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
plausibleTemporalAfterTableName = CONDITION_OCCURRENCE
plausibleTemporalAfterFieldName = CONDITION_START_DATE
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
			'CONDITION_OCCURRENCE.CONDITION_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    WHERE 
			CAST(cdmTable.CONDITION_START_DATE AS DATE)
		 > CAST(cdmTable.CONDITION_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
plausibleTemporalAfterTableName = CONDITION_OCCURRENCE
plausibleTemporalAfterFieldName = CONDITION_START_DATETIME
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
			'CONDITION_OCCURRENCE.CONDITION_END_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    WHERE 
			CAST(cdmTable.CONDITION_START_DATETIME AS DATE)
		 > CAST(cdmTable.CONDITION_END_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.DRUG_EXPOSURE_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.DRUG_EXPOSURE_START_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
plausibleTemporalAfterTableName = DRUG_EXPOSURE
plausibleTemporalAfterFieldName = DRUG_EXPOSURE_START_DATE
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
			'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    WHERE 
			CAST(cdmTable.DRUG_EXPOSURE_START_DATE AS DATE)
		 > CAST(cdmTable.DRUG_EXPOSURE_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
plausibleTemporalAfterTableName = DRUG_EXPOSURE
plausibleTemporalAfterFieldName = DRUG_EXPOSURE_START_DATETIME
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
			'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    WHERE 
			CAST(cdmTable.DRUG_EXPOSURE_START_DATETIME AS DATE)
		 > CAST(cdmTable.DRUG_EXPOSURE_END_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
plausibleTemporalAfterTableName = DRUG_EXPOSURE
plausibleTemporalAfterFieldName = DRUG_EXPOSURE_START_DATE
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
			'DRUG_EXPOSURE.VERBATIM_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    WHERE 
			CAST(cdmTable.DRUG_EXPOSURE_START_DATE AS DATE)
		 > CAST(cdmTable.VERBATIM_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.PROCEDURE_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'PROCEDURE_OCCURRENCE.PROCEDURE_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.PROCEDURE_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.DEVICE_EXPOSURE_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.DEVICE_EXPOSURE_START_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
plausibleTemporalAfterTableName = DEVICE_EXPOSURE
plausibleTemporalAfterFieldName = DEVICE_EXPOSURE_START_DATE
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
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    WHERE 
			CAST(cdmTable.DEVICE_EXPOSURE_START_DATE AS DATE)
		 > CAST(cdmTable.DEVICE_EXPOSURE_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
plausibleTemporalAfterTableName = DEVICE_EXPOSURE
plausibleTemporalAfterFieldName = DEVICE_EXPOSURE_START_DATETIME
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
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    WHERE 
			CAST(cdmTable.DEVICE_EXPOSURE_START_DATETIME AS DATE)
		 > CAST(cdmTable.DEVICE_EXPOSURE_END_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'MEASUREMENT.MEASUREMENT_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.MEASUREMENT cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.MEASUREMENT_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'VISIT_DETAIL.VISIT_DETAIL_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_DETAIL cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.VISIT_DETAIL_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'VISIT_DETAIL.VISIT_DETAIL_START_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_DETAIL cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.VISIT_DETAIL_START_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
plausibleTemporalAfterTableName = VISIT_DETAIL
plausibleTemporalAfterFieldName = VISIT_DETAIL_START_DATE
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
			'VISIT_DETAIL.VISIT_DETAIL_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_DETAIL cdmTable
    WHERE 
			CAST(cdmTable.VISIT_DETAIL_START_DATE AS DATE)
		 > CAST(cdmTable.VISIT_DETAIL_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
plausibleTemporalAfterTableName = VISIT_DETAIL
plausibleTemporalAfterFieldName = VISIT_DETAIL_START_DATETIME
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
			'VISIT_DETAIL.VISIT_DETAIL_END_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.VISIT_DETAIL cdmTable
    WHERE 
			CAST(cdmTable.VISIT_DETAIL_START_DATETIME AS DATE)
		 > CAST(cdmTable.VISIT_DETAIL_END_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'NOTE.NOTE_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.NOTE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.NOTE_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'NOTE.NOTE_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.NOTE cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.NOTE_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'OBSERVATION.OBSERVATION_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.OBSERVATION cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.OBSERVATION_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'OBSERVATION.OBSERVATION_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.OBSERVATION cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.OBSERVATION_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'SPECIMEN.SPECIMEN_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.SPECIMEN cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.SPECIMEN_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'SPECIMEN.SPECIMEN_DATETIME' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.SPECIMEN cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.SPECIMEN_DATETIME AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
plausibleTemporalAfterTableName = PAYER_PLAN_PERIOD
plausibleTemporalAfterFieldName = PAYER_PLAN_PERIOD_START_DATE
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
			'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    WHERE 
			CAST(cdmTable.PAYER_PLAN_PERIOD_START_DATE AS DATE)
		 > CAST(cdmTable.PAYER_PLAN_PERIOD_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'DRUG_ERA.DRUG_ERA_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DRUG_ERA cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.DRUG_ERA_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
plausibleTemporalAfterTableName = DRUG_ERA
plausibleTemporalAfterFieldName = DRUG_ERA_START_DATE
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
			'DRUG_ERA.DRUG_ERA_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DRUG_ERA cdmTable
    WHERE 
			CAST(cdmTable.DRUG_ERA_START_DATE AS DATE)
		 > CAST(cdmTable.DRUG_ERA_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'DOSE_ERA.DOSE_ERA_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DOSE_ERA cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.DOSE_ERA_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'DOSE_ERA.DOSE_ERA_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.DOSE_ERA cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.DOSE_ERA_END_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'CONDITION_ERA.CONDITION_ERA_START_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.CONDITION_ERA cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.CONDITION_ERA_START_DATE AS DATE)
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
PLAUSIBLE_TEMPORAL_AFTER
get number of records and the proportion to total number of eligible records with datetimes that do not occur on or after their corresponding datetimes
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
plausibleTemporalAfterTableName = PERSON
plausibleTemporalAfterFieldName = BIRTH_DATETIME
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
			'CONDITION_ERA.CONDITION_ERA_END_DATE' AS violating_field, 
			cdmTable.*
    	FROM cdm_synthea10.CONDITION_ERA cdmTable
				JOIN cdm_synthea10.PERSON plausibleTable ON cdmTable.person_id = plausibleTable.person_id
    WHERE 
			COALESCE(
				CAST(plausibleTable.BIRTH_DATETIME AS DATE),
				CAST(CONCAT(plausibleTable.year_of_birth,'-06-01') AS DATE)
			) 
		 > CAST(cdmTable.CONDITION_ERA_END_DATE AS DATE)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

