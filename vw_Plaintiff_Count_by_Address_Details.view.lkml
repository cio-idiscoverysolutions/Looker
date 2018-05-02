view: vw_plaintiff_count_by_address_details {
  sql_table_name: dbo.vw_plaintiff_count_by_address_details ;;

  dimension: PlaintiffAddress {
    type: string
    sql: ${TABLE}.PlaintiffAddress ;;
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
  dimension: FullName {
    label: "FullName"
    type: string
    sql: ${TABLE}.FullName ;;
  }
  dimension: PlaintiffNum {
    label: "PlaintiffNum"
    type: string
    sql: ${TABLE}.PlaintiffNum ;;
    # html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{gps_lat._value | encode_url }}" target="_blank">{{value}} ;;
  }
  dimension: QuestionID {
    label: "Question_No"
    type: string
    sql: ${TABLE}.QuestionID ;;
  }
  dimension: Answer {
    label: "Answer"
    type: string
    sql: ${TABLE}.Answer ;;
  }
  dimension: ClaimType {
    label: "Claim_Type"
    type: string
    sql: ${TABLE}.ClaimType ;;
  }
}
