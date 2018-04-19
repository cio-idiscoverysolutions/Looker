view: vw_plaintiff_count_by_address_details {
  sql_table_name: dbo.vw_plaintiff_count_by_address_details ;;

  dimension: PlaintiffAddress {
    type: string
    sql: ${TABLE}.PlaintiffAddress ;;
  }
  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
    html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{gps_lat._value | encode_url }}" target="_blank">{{value}} ;;
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
    label: "Plaintiff No."
    type: number
    sql: ${TABLE}.Plaintiff No. ;;
    # html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{gps_lat._value | encode_url }}" target="_blank">{{value}} ;;
  }
  dimension: QuestionID {
    label: "Question No."
    type: string
    sql: ${TABLE}.QuestionID ;;
  }
  dimension: Answer {
    label: "Answer"
    type: string
    sql: ${TABLE}.Answer ;;
  }
  dimension: ClaimType {
    label: "Clainm Type"
    type: string
    sql: ${TABLE}.ClaimType ;;
  }
}
