view: vw_plaintiff_count_by_address {
  sql_table_name: dbo.vw_Plaintiff_Count_by_Address ;;

  dimension: PlaintiffAddress {
    type: string
    sql: ${TABLE}.PlaintiffAddress ;;
    html:  <a href="https://idssda.looker.com/dashboards/85?gps_location={{gps_location._value | encode_url }}" target="_new">{{value}} ;;
  }
  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
   # html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{gps_lat._value | encode_url }}" target="_blank">{{value}} ;;
  }

  dimension: gps_long {
    type: number
    sql: ${TABLE}.GPS_LONG ;;
  }
  dimension: gps_location {
    type: location
    sql_latitude: ${TABLE}.gps_lat ;;
    sql_longitude: ${TABLE}.gps_long ;;
    html:  <a href="https://idssda.looker.com/dashboards/85?gps_location:={{gps_location._value | encode_url }}" target="_new">{{value}} ;;
  }
  dimension: Plaintiffs {
    label: "No. Plaintiff(s)"
    type: number
    sql: ${TABLE}.PlaintiffCount ;;
    # html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{gps_lat._value | encode_url }}" target="_blank">{{value}} ;;
  }
  dimension: AcuteClaims {
    label: "Acute Claims"
    type: number
    sql: ${TABLE}.AcuteCount ;;
  }
  dimension: ChronicClaims {
    label: "Chronic Claims"
    type: number
    sql: ${TABLE}.ChronicCount ;;
  }
  dimension: MedicalClaims {
    label: "Medical Monitoring Claims"
    type: number
    sql: ${TABLE}.MedicalMonitoringCount ;;
  }
  dimension: WrongfulDeathClaims {
    label: "Wrongful Death Claims"
    type: number
    sql: ${TABLE}.WrongfulDeathCount ;;
  }
  dimension: PropertyDamageClaims {
    label: "Property Damage Claims"
    type: number
    sql: ${TABLE}.PropertyDamageCount ;;
  }
  dimension: PropertValueClaims {
    label: "Property Value Claims"
    type: number
    sql: ${TABLE}.PropertyValueCount ;;
  }
  dimension: RelocationClaims {
    label: "Relocation Claims"
    type: number
    sql: ${TABLE}.RelocationCount ;;
  }
  dimension: LossWagesClaims {
    label: "Loss Wages Claims"
    type: number
    sql: ${TABLE}.LossWagesCount ;;
  }
}
