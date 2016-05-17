select count(*) from queue_tasks_scanlog 
where `itin_id` = 69

------------------------

select* from `api_flightitinerary` 
where id = 15;
-------------------------

select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
	case `task_type`
		when 0 then "IDENTICAL"
		when 1 then "ALTERNATIVE"
		when 2 then "DEAL_VERIFICATION"
	END as real_task_type,
	
	case `scan_state`
		when 0 then "QUEUED_FOR_SCAN"
		when 1 then "BEING_SCANNED"
		when 2 then "SCAN_SUCCESS"
		when 3 then "SCAN_FAILED"
		when 4 then "SCAN_TIMEOUT"
		when 5 then "SCAN_CALLBACK"
	END as real_scan_state,
	
	case `scan_type`
		when 0 then "CRONJOB"
		when 1 then "CELERY"
		when 2 then "TEST"
		when 3 then "OCTOPUS"
		when 4 then "SABRE"
	END as real_scan_type
	
from `queue_tasks_scanlog` scans
join `queue_tasks_datasource` ds on ds.id = scans.`data_source_id`
where `itin_id` = 71;

---------------------------



select `created_at`, `updated_at`,`user_itinerary_id`,`unique_id`,`result_status`, `is_identical` from `api_resultitinerary`
where `result_status`= '3'
ORDER BY `user_itinerary_id`desc



------------------

select count(*)from `api_resultitinerary`
where`result_status` = 11
and `user_itinerary_id` = 71
and `created_at`>= '2016-05-15 00:54:26.402621' 


select *from `api_resultitinerary`
where`id`in ( 742130, 742131, 742132, 742133, 742134, 742135, 742136, 742137, 742138, 742139, 742140)


select * from `api_resultitinerary`
where `result_status` in (11,3)
and `user_itinerary_id` = 71

and `created_at`>= '2016-05-15 00:54:26.402621' 
---------------------


select *from `api_resultitinerary` 
where `data_source` = 'sabre'
and `created_at` >= '2016-05-09 08:54:26.402621' 

-------------------------

select *from `api_resultitinerary`
where`result_status` in (11, 12) 
and `is_identical`= 1
and `user_itinerary_id` = 65

-------------------------

select *from `api_resultitinerary`
where`created_at`>= '2016-05-09 08:54:26.402621' 
group by `result_status`


----------------

select *from `api_resultitinerary`
where`user_itinerary_id` = 67
and `result_status`= 11

--------------

select * from `api_resultitinerary`
where`user_itinerary_id` = 65
and `result_status` in (11,3)
and `is_identical`= 1


------------------

select * from `api_resultsegment` seg join `api_resultitinerary`itin
on seg.`itinerary_id` = itin. `id` 
where itin. `data_source` = 'sabre'
order by seg. `created_at`desc
and itin. `created_at` >= '2016-05-08 08:54:26.402621' 

---------------------

select * from `api_resultsegment` limit 5

---------------------

select * from `api_resultitinerary` limit 5


------------------------
# Sabre searces + DEAL_VERIFICATION

select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
	case `task_type`
		when 0 then "IDENTICAL"
		when 1 then "ALTERNATIVE"
		when 2 then "DEAL_VERIFICATION"
	END as real_task_type,
	
	case `scan_state`
		when 0 then "QUEUED_FOR_SCAN"
		when 1 then "BEING_SCANNED"
		when 2 then "SCAN_SUCCESS"
		when 3 then "SCAN_FAILED"
		when 4 then "SCAN_TIMEOUT"
		when 5 then "SCAN_CALLBACK"
	END as real_scan_state,
	
	case `scan_type`
		when 0 then "CRONJOB"
		when 1 then "CELERY"
		when 2 then "TEST"
		when 3 then "OCTOPUS"
		when 4 then "SABRE"
	END as real_scan_type
	
from `queue_tasks_scanlog` scans
join `queue_tasks_datasource` ds on ds.id = scans.`data_source_id`
where `task_type` = 2
and ds.`name` = 'Sabre';

--------------
# Sabre searches

select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
	case `task_type`
		when 0 then "IDENTICAL"
		when 1 then "ALTERNATIVE"
		when 2 then "DEAL_VERIFICATION"
	END as real_task_type,
	
	case `scan_state`
		when 0 then "QUEUED_FOR_SCAN"
		when 1 then "BEING_SCANNED"
		when 2 then "SCAN_SUCCESS"
		when 3 then "SCAN_FAILED"
		when 4 then "SCAN_TIMEOUT"
		when 5 then "SCAN_CALLBACK"
	END as real_scan_state,
	
	case `scan_type`
		when 0 then "CRONJOB"
		when 1 then "CELERY"
		when 2 then "TEST"
		when 3 then "OCTOPUS"
		when 4 then "SABRE"
	END as real_scan_type
	
from `queue_tasks_scanlog` scans
join `queue_tasks_datasource` ds on ds.id = scans.`data_source_id`
where ds.`name` = 'Kayak';


------------

--------------
# Travelocity searches

select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
	case `task_type`
		when 0 then "IDENTICAL"
		when 1 then "ALTERNATIVE"
		when 2 then "DEAL_VERIFICATION"
	END as real_task_type,
	
	case `scan_state`
		when 0 then "QUEUED_FOR_SCAN"
		when 1 then "BEING_SCANNED"
		when 2 then "SCAN_SUCCESS"
		when 3 then "SCAN_FAILED"
		when 4 then "SCAN_TIMEOUT"
		when 5 then "SCAN_CALLBACK"
	END as real_scan_state,
	
	case `scan_type`
		when 0 then "CRONJOB"
		when 1 then "CELERY"
		when 2 then "TEST"
		when 3 then "OCTOPUS"
		when 4 then "SABRE"
	END as real_scan_type
	
from `queue_tasks_scanlog` scans
join `queue_tasks_datasource` ds on ds.id = scans.`data_source_id`
where ds.`name` in ('Travelocity', 'Expedia', 'United');


----------------------
 # scan failed
 
select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
	case `task_type`
		when 0 then "IDENTICAL"
		when 1 then "ALTERNATIVE"
		when 2 then "DEAL_VERIFICATION"
	END as real_task_type,
	
	case `scan_state`
		when 0 then "QUEUED_FOR_SCAN"
		when 1 then "BEING_SCANNED"
		when 2 then "SCAN_SUCCESS"
		when 3 then "SCAN_FAILED"
		when 4 then "SCAN_TIMEOUT"
		when 5 then "SCAN_CALLBACK"
	END as real_scan_state,
	
	case `scan_type`
		when 0 then "CRONJOB"
		when 1 then "CELERY"
		when 2 then "TEST"
		when 3 then "OCTOPUS"
		when 4 then "SABRE"
	END as real_scan_type
	
from `queue_tasks_scanlog` scans
join `queue_tasks_datasource` ds on ds.id = scans.`data_source_id`
where `scan_state`  = 3
--------------------------------