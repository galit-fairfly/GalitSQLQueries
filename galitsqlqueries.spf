<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ContentFilters</key>
	<dict/>
	<key>auto_connect</key>
	<true/>
	<key>data</key>
	<dict>
		<key>connection</key>
		<dict>
			<key>database</key>
			<string>fair_fly</string>
			<key>host</key>
			<string>fairfly.cirsjsrxccdq.eu-west-1.rds.amazonaws.com</string>
			<key>kcid</key>
			<string>7422303069718092150</string>
			<key>name</key>
			<string>Fairfly - Production</string>
			<key>rdbms_type</key>
			<string>mysql</string>
			<key>sslCACertFileLocation</key>
			<string></string>
			<key>sslCACertFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslCertificateFileLocation</key>
			<string></string>
			<key>sslCertificateFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslKeyFileLocation</key>
			<string></string>
			<key>sslKeyFileLocationEnabled</key>
			<integer>0</integer>
			<key>type</key>
			<string>SPTCPIPConnection</string>
			<key>useSSL</key>
			<integer>0</integer>
			<key>user</key>
			<string>rootl3r</string>
		</dict>
		<key>session</key>
		<dict>
			<key>connectionEncoding</key>
			<string>utf8</string>
			<key>contentPageNumber</key>
			<integer>1</integer>
			<key>contentSelection</key>
			<data>
			YnBsaXN0MDDUAQIDBAUGJCVYJHZlcnNpb25YJG9iamVjdHNZJGFy
			Y2hpdmVyVCR0b3ASAAGGoKgHCBMUFRYaIVUkbnVsbNMJCgsMDxJX
			TlMua2V5c1pOUy5vYmplY3RzViRjbGFzc6INDoACgAOiEBGABIAF
			gAdUdHlwZVRyb3dzXxAdU2VsZWN0aW9uRGV0YWlsVHlwZU5TSW5k
			ZXhTZXTSFwsYGVxOU1JhbmdlQ291bnQQAIAG0hscHR5aJGNsYXNz
			bmFtZVgkY2xhc3Nlc1pOU0luZGV4U2V0oh8gWk5TSW5kZXhTZXRY
			TlNPYmplY3TSGxwiI1xOU0RpY3Rpb25hcnmiIiBfEA9OU0tleWVk
			QXJjaGl2ZXLRJidUZGF0YYABAAgAEQAaACMALQAyADcAQABGAE0A
			VQBgAGcAagBsAG4AcQBzAHUAdwB8AIEAoQCmALMAtQC3ALwAxwDQ
			ANsA3gDpAPIA9wEEAQcBGQEcASEAAAAAAAACAQAAAAAAAAAoAAAA
			AAAAAAAAAAAAAAABIw==
			</data>
			<key>contentSortColIsAsc</key>
			<true/>
			<key>contentViewport</key>
			<string>{{0, 0}, {1364, 724}}</string>
			<key>isToolbarVisible</key>
			<true/>
			<key>queries</key>
			<string>select count(*) from queue_tasks_scanlog 
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
and `created_at`&gt;= '2016-05-15 00:54:26.402621' 


select *from `api_resultitinerary`
where`id`in ( 742130, 742131, 742132, 742133, 742134, 742135, 742136, 742137, 742138, 742139, 742140)


select * from `api_resultitinerary`
where `result_status` in (11,3)
and `user_itinerary_id` = 71

and `created_at`&gt;= '2016-05-15 00:54:26.402621' 
---------------------


select *from `api_resultitinerary` 
where `data_source` = 'sabre'
and `created_at` &gt;= '2016-05-09 08:54:26.402621' 

-------------------------

select *from `api_resultitinerary`
where`result_status` in (11, 12) 
and `is_identical`= 1
and `user_itinerary_id` = 65

-------------------------

select *from `api_resultitinerary`
where`created_at`&gt;= '2016-05-09 08:54:26.402621' 
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
and itin. `created_at` &gt;= '2016-05-08 08:54:26.402621' 

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
--------------------------------</string>
			<key>view</key>
			<string>SP_VIEW_CUSTOMQUERY</string>
			<key>windowVerticalDividerPosition</key>
			<real>329</real>
		</dict>
	</dict>
	<key>encrypted</key>
	<false/>
	<key>format</key>
	<string>connection</string>
	<key>queryFavorites</key>
	<array/>
	<key>queryHistory</key>
	<array>
		<string>select count(*) from `api_resultitinerary`
where `result_status` in (11,3)
and `user_itinerary_id` = 71</string>
		<string>select count(*)from `api_resultitinerary`
where`result_status` = 11
and `user_itinerary_id` = 71</string>
		<string>select *from `api_resultitinerary`
where `result_status` in (11,3)
and `user_itinerary_id` = 71</string>
		<string>select *from `api_resultitinerary`
where `result_status` in (11,3,2)
and `user_itinerary_id` = 71</string>
		<string>select *from `api_resultitinerary`
where `result_status` in (11,3,1)
and `user_itinerary_id` = 71</string>
		<string>select *from `api_resultitinerary`
where`user_itinerary_id` = 71</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where `itin_id` = 71</string>
		<string>select *from `api_resultitinerary`
where`result_status` in (11, 3)
and `user_itinerary_id` = 71</string>
		<string>select *from `api_resultitinerary`
where`result_status` in (11, 3)
and `is_identical` =1
and `user_itinerary_id` = 71</string>
		<string>select *from `api_resultitinerary`
where`result_status` = 11
and `user_itinerary_id` = 71</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where ds.`name` = 'Kayak'</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where ds.`name` in ('Travelocity', 'Expedia', 'United')</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where ds.`name` in ('Travelocity', 'Expedia')</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where `itin_id` = 69</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where ds.`name` = 'Travelocity'</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where `itin_id` = 127</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where `itin_id` = 130</string>
		<string>select scans.`created_at`, scans.`done_at`, `started_at`, ds.`name`as datasource_name,
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
where `itin_id` = 70</string>
		<string>select *from `api_resultitinerary`
where`result_status` in (11, 3)
and `user_itinerary_id` = 70</string>
		<string>select *from `api_resultitinerary`
where`is_identical` = 1
and `user_itinerary_id` = 70</string>
	</array>
	<key>rdbms_type</key>
	<string>mysql</string>
	<key>rdbms_version</key>
	<string>5.6.21-log</string>
	<key>version</key>
	<integer>1</integer>
</dict>
</plist>
