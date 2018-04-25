view: vw_plaintiff_count_by_address_pivot  {
  sql_table_name: dbo.vw_Plaintiff_Count_by_Address_Pivot ;;

  dimension: Loc_ID {
    type: number
    sql: ${TABLE}.Loc_ID ;;
  }
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

  dimension: FullName {
    label: "FullName"
    type: string
    sql: ${TABLE}.FullName ;;
  }
  dimension: PlaintiffNum {
    label: "PlaintiffNum"
    type: number
    sql: ${TABLE}.PlaintiffNum ;;
    # html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{gps_lat._value | encode_url }}" target="_blank">{{value}} ;;
  }
  dimension: AcuteClaim{
    label: "Acute Claim"
    type: string
    sql: ${TABLE}.Acute Claim ;;
  }
  dimension: ChronicClaim{
    label: "Chronc Claim"
    type: string
    sql: ${TABLE}.Chronic Claim ;;
  }
  dimension: ChronicClaimDescription{
    label: "Chronc Claim Description"
    type: string
    sql: ${TABLE}.Chronic Claim Description;;
  }
}
