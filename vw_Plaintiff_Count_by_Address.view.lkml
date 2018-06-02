view: vw_plaintiff_count_by_address {
  sql_table_name: dbo.vw_Plaintiff_Count_by_Address ;;

  dimension: id {
  primary_key: yes
  sql: ${TABLE}.loc_id ;;
  }

  dimension: PlaintiffAddress {
    type: string
    label:  "Plaintiff Address"
    sql: ${TABLE}.PlaintiffAddress ;;
    #html:  <a href="https://idssda.looker.com/dashboards/85?gps_location='{{gps_location._value | encode_url }}'" target="_new">{{value}} ;;
    html:  <a href="https://idssda.looker.com/dashboards/101?Plaintiff%20Address=%22{{PlaintiffAddress._value | encode_url }}%22" target="_new">{{value}} ;;
  #was DB 85
  }

  dimension: City {
    type: string
    sql: ${TABLE}.City ;;
     # suggest_persist_for: "1 minute"
   }

  dimension: Street_Name {
    type: string
    sql: ${TABLE}.Street_Name ;;
    # suggest_persist_for: "1 minute"
  }

  dimension: Zip {
    type: string
    sql: ${TABLE}.Zip ;;
    # suggest_persist_for: "1 minute"
  }

  dimension: PlaintiffNumbers {
    label:  "Plaintiff Numbers"
    type: string
    sql: ${TABLE}.PlaintiffNumbers ;;
    # suggest_persist_for: "1 minute"
  }

  dimension: PlaintiffNames {
    label:  "Plaintiff Names"
    type: string
    sql: ${TABLE}.PlaintiffNames ;;
    # suggest_persist_for: "1 minute"
  }

  dimension: CitySuggestion {
    sql: ${TABLE}.vw_Plaintiff_City_Suggestions ;;
    suggest_dimension: CitySuggestion
    suggest_persist_for: "5 hours"
    #suggest_persist_for: "30 minutes"
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

  dimension: PhysicalInjuryClaims {
    label:  "Physical Injury Claims"
    type:  number
    sql: ${TABLE}.PhysicalInjuryCount ;;
  }

  dimension: EmotionalClaims {
    label:  "Mental or Emotional Injury Claims"
    type:  number
    sql: ${TABLE}.EmotionalCount ;;
  }



  dimension: Zone {
    type: string
    sql: ${TABLE}.Zone ;;
    #Use this to color code by zone
    #html:
    #{% if value == 'Paid' %}
    #<p style="color: black; background-color: lightblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
    #{% elsif value == 'Shipped' %}
    #<p style="color: black; background-color: lightgreen; font-size:100%; text-align:center">{{ rendered_value }}</p>
    #{% else %}
    #<p style="color: black; background-color: orange; font-size:100%; text-align:center">{{ rendered_value }}</p>
    #{% endif %}
    #;;
  }
  dimension: DistanceInMiles {
    label: "Distance In Miles"
    type: number
    value_format: "0.00"
    sql: ${TABLE}.DistanceInMiles ;;
  }

  measure: Plaintiffs_Represented {
    label: "Plaintiffs Represented"
    sql: ${TABLE}.PlaintiffCount ;;
    type: sum
  }
  measure: Address_Plotted {
    label: "Address Plotted"
    sql: ${TABLE}.PlaintiffAddress ;;
    type: count_distinct
  }
  measure: Location_Plotted {
    label: "Location Plotted"
    sql:  ${TABLE}.gps_location ;;
    type:  count_distinct
  }
  measure: AverageDistance {
    label: "Average Distance"
    sql: ${TABLE}.DistanceInMiles ;;
    type: average
    value_format: "0.00"
  }
}
