/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.OBSERVATION_PERIOD_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.OBSERVATION_PERIOD_END_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_START_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_END_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_END_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.CONDITION_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.CONDITION_START_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.CONDITION_END_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.CONDITION_END_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DRUG_EXPOSURE_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DRUG_EXPOSURE_START_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DRUG_EXPOSURE_END_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DRUG_EXPOSURE_END_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VERBATIM_END_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.PROCEDURE_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.PROCEDURE_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DEVICE_EXPOSURE_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DEVICE_EXPOSURE_START_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DEVICE_EXPOSURE_END_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DEVICE_EXPOSURE_END_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_DETAIL_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_DETAIL_START_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_DETAIL_END_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.VISIT_DETAIL_END_DATETIME AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DRUG_ERA_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.DOSE_ERA_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)
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
    	JOIN cdm_synthea10.death de ON cdmTable.person_id = de.person_id
    	WHERE cast(cdmTable.CONDITION_ERA_START_DATE AS DATE) > (cast(de.death_date AS DATE) + 60*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
	WHERE person_id IN
		(SELECT 
			person_id 
		FROM cdm_synthea10.death)
) denominator
;

