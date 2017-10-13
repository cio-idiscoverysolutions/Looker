view: vw_cda002 {
  sql_table_name: dbo.vw_CDA002 ;;

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: ppl_id {
    type: number
    sql: ${TABLE}.PPL_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
