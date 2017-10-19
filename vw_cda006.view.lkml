view: vw_cda006 {
  sql_table_name: dbo.vw_CDA006 ;;

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: unique_count {
    type: number
    sql: ${TABLE}.UniqueCount ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
