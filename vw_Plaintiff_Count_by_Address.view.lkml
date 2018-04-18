view: vw_plaintiff_count_by_address {
  sql_table_name: dbo.vw_plaintiff_count_by_address ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
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
    label: "No. Plaintiff(s)"
    type: number
    sql: ${TABLE}.Plaintiff Count ;;
    # html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{gps_lat._value | encode_url }}" target="_blank">{{value}} ;;
  }
  dimension: AcuteClaims {
    label: "Acute Claims"
    type: number
    sql: ${TABLE}.Acute Count ;;
  }
  dimension: ChronicClaims {
    label: "Chronic Claims"
    type: number
    sql: ${TABLE}.Chronic Count ;;
  }
  dimension: MedicalClaims {
    label: "Medical Monitoring Claims"
    type: number
    sql: ${TABLE}.Medical Monitoring Count ;;
  }
  dimension: WrongfulDeathClaims {
    label: "Wrongful Death Claims"
    type: number
    sql: ${TABLE}.Wrongful Death Count ;;
  }
  dimension: PropertyDamageClaims {
    label: "Property Damage Claims"
    type: number
    sql: ${TABLE}.Property Damage Count ;;
  }
  dimension: PropertValueClaims {
    label: "Property Value Claims"
    type: number
    sql: ${TABLE}.Property Value Count ;;
  }
  dimension: RelocationClaims {
    label: "Relocation Claims"
    type: number
    sql: ${TABLE}.Relocation Count ;;
  }
  dimension: LossWagesClaims {
    label: "Loss Wages Claims"
    type: number
    sql: ${TABLE}.Loss Wages Count ;;
  }
}
