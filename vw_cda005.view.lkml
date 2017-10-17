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
  dimension: Loc_Attribute_Numeric_Value {
    label: "Attribute"
    type: string
    sql: ${TABLE}.loc_attribute_numeric_value ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
