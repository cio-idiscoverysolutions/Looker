view: vw_plaintiff_count_by_address {
  sql_table_name: dbo.vw_plaintiff_count_by_address ;;

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
  dimension: Plaintiffs {
    label: "No. Plaintiff(s)"
    type: number
    sql: ${TABLE}.Plaintiffs ;;
    description: "Number of Plaintiffs"
  }
}
