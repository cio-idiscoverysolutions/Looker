view: vw_cda005 {
  sql_table_name: dbo.vw_CDA005 ;;

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }
  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
  }
    dimension: gps_long {
    type: number
    sql: ${TABLE}.GPS_LONG ;;
  }
  dimension: gps_location {
    type: location
    sql_latitude: ${TABLE}.gps_lat ;;
    sql_longitude: ${TABLE}.gps_long ;;
  }
  dimension: ppl_id {
    type: number
    sql: ${TABLE}.PPL_ID ;;
  }
  dimension: Loc_Attribute_Name {
    label: "Location"
    type: string
    sql: ${TABLE}.[Loc Attribute Name] ;;
  }
  dimension: Loc_Attribute_Numeric_Value {
    label: "Attribute"
    type: string
    sql: ${TABLE}.[loc attribute numeric value] ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
}
