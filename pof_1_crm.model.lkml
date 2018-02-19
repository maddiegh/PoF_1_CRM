connection: "redkite_snowflake"
label: "PoF 1 CRM"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: pof_1_crm_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pof_1_crm_default_datagroup

explore: cpr_dump_20180218 {}
