view: whoami {
  sql_table_name: okera_sample.whoami ;;
  suggestions: no

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
