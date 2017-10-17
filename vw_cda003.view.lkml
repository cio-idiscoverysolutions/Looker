view: vw_cda003 {
  sql_table_name: dbo.vw_CDA003 ;;

  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
  }

  dimension: gps_long {
    type: number
    sql: ${TABLE}.GPS_LONG ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: loc_id {
    type: number
    sql: ${TABLE}.Loc_id ;;
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
