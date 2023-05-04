/*********
Table Level:  
MEASURE_CONDITION_ERA_COMPLETENESS
Determine what #/% of persons have condition_era built successfully 
for persons in condition_occurrence table
Parameters used in this template:
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
		SELECT DISTINCT 
		co.person_id
		FROM cdm_synthea10.condition_occurrence co
		LEFT JOIN cdm_synthea10.CONDITION_ERA cdmTable 
		ON co.person_id = cdmTable.person_id
  	WHERE cdmTable.person_id IS NULL
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(DISTINCT person_id) AS num_rows
	FROM cdm_synthea10.condition_occurrence co
) denominator
;

