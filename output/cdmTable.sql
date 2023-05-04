/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.CARE_SITE cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

/*********
TABLE LEVEL check:
CDM_TABLE - verify the table exists
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
    num_violated_rows 
  FROM
  (
    SELECT
      CASE 
        WHEN COUNT(*) = 0 THEN 0
        ELSE 0
    END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_ERA cdmTable
  ) violated_rows
) violated_row_count,
( 
	SELECT 1 AS num_rows
) denominator
;

