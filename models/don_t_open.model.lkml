connection: "bigquery-public-data-looker-test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: don_t_open_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: don_t_open_default_datagroup

explore: crime {}

explore: crime_partitioned_1 {}

