/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.OBSERVATION_PERIOD cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.CONDITION_OCCURRENCE cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.DRUG_EXPOSURE cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.DEVICE_EXPOSURE cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.MEASUREMENT cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.VISIT_DETAIL cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.NOTE cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.OBSERVATION cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.SPECIMEN cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.PAYER_PLAN_PERIOD cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.DRUG_ERA cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.DOSE_ERA cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
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
		COUNT(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM cdm_synthea10.person cdmTable
			LEFT JOIN cdm_synthea10.CONDITION_ERA cdmTable2 
			ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.person cdmTable
) denominator
;

