--
-- Relations Service Template - Director Field
-- For default deployment
--

# Services for Windwows SQL Server
INSERT IGNORE icinga_service_field (service_id, datafield_id, is_required) VALUES ((select id from icinga_service where object_name = "generic_alyvix"),(select id from director_datafield where varname = "nrpe_address"),"n");
INSERT IGNORE icinga_service_field (service_id, datafield_id, is_required) VALUES ((select id from icinga_service where object_name = "generic_alyvix"),(select id from director_datafield where varname = "nrpe_argument"),"n");
INSERT IGNORE icinga_service_field (service_id, datafield_id, is_required) VALUES ((select id from icinga_service where object_name = "generic_alyvix"),(select id from director_datafield where varname = "nrpe_command"),"n");
INSERT IGNORE icinga_service_field (service_id, datafield_id, is_required) VALUES ((select id from icinga_service where object_name = "generic_alyvix"),(select id from director_datafield where varname = "custom_analytics_dashboard"),"n");
