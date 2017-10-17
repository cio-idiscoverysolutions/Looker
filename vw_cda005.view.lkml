view: vw_cda005 {
  sql_table_name: dbo.vw_CDA005 ;;

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: ppl_id {
    type: number
    sql: ${TABLE}.PPL_ID ;;
  }
  dimension: Loc_Attribute_Name {
    label: "Location"
    type: string
    sql: ${TABLE}.loc_attribute_name ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
