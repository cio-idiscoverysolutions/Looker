view: vw_cda001 {
  sql_table_name: dbo.vw_CDA001 ;;

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
