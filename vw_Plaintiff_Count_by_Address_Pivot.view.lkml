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
    type: string
    sql: ${TABLE}.PlaintiffNum ;;
    html:  <a href="https://idssda.looker.com/dashboards/43?Plaintiff%20No.:={{PlaintiffNum._value | encode_url }}" target="_blank">{{value}}  ;;
  }
  dimension: AcuteClaim{
    label: "Acute Claim"
    type: string
    sql: ${TABLE}.AcuteClaim ;;
  }
  dimension: ChronicClaim{
    label: "Chronc Claim"
    type: string
    sql: ${TABLE}.ChronicClaim ;;
  }
  dimension: ChronicClaimDescription{
    label: "Chronc Claim Description"
    type: string
    sql: ${TABLE}.ChronicClaimDescription;;
  }
  dimension: MedicalMonitoringClaim{
    label: "Medica Monitoring Claim"
    type: string
    sql: ${TABLE}.MedicalMonitoringClaim;;
  }
  dimension: WrongfulDeathClaim{
    label: "Wrongful Death Claim"
    type: string
    sql: ${TABLE}.WrongfulDeathClaim;;
  }
  dimension: PropertyDamageClaim{
    label: "Property Damage Claim"
    type: string
    sql: ${TABLE}.PropertyDamageClaim;;
  }
  dimension: PropertyValueClaim{
    label: "Property Value Claim"
    type: string
    sql: ${TABLE}.PropertyValueClaim;;
  }
  dimension: RelocationClaim{
    label: "Relocation Claim"
    type: string
    sql: ${TABLE}.RelocationClaim;;
  }
  dimension: LossofWagesClaim{
    label: "Loss of Wages Claim"
    type: string
    sql: ${TABLE}.LossofWagesClaim;;
  }

  dimension: CurrentResidence{
    label: "Current Residence"
    type: string
    sql: ${TABLE}.CurrentResidence;;
  }

  dimension: PreviousResidence{
    label: "Previous Residence"
    type: string
    sql: ${TABLE}.PreviousResidence;;
  }

  dimension: ExposureAddress{
    label: "Exposure Address"
    type: string
    sql: ${TABLE}.ExposureAddress;;
  }

  dimension: RelocationFromAddress{
    label: "Relocation From Address"
    type: string
    sql: ${TABLE}.RelocationFromAddress;;
  }

  dimension: RelocationToAddress{
    label: "Relocation To Address"
    type: string
    sql: ${TABLE}.RelocationToAddress;;
  }

  dimension: DamagedAddress{
    label: "Damaged Address"
    type: string
    sql: ${TABLE}.DamagedAddress;;
  }

  dimension: SourceOfIncomeAddress{
    label: "Source Of Income Address"
    type: string
    sql: ${TABLE}.SourceOfIncomeAddress;;
  }

  dimension: EmploymentAddress{
    label: "Employment Address"
    type: string
    sql: ${TABLE}.EmploymentAddress;;
  }

  dimension: Zone {
    type: string
    sql: ${TABLE}.Zone ;;
  }
  dimension: DistanceInMiles {
    label: "Distance In Miles"
    type: number
    value_format: "0.00"
    sql: ${TABLE}.DistanceInMiles ;;
  }

  measure: count {
    type: count
    drill_fields: [PlaintiffAddress,DistanceInMiles,PlaintiffNum,FullName,AcuteClaim,ChronicClaim,ChronicClaimDescription,MedicalMonitoringClaim,WrongfulDeathClaim,PropertyDamageClaim,PropertyValueClaim,RelocationClaim,LossofWagesClaim,CurrentResidence,PreviousResidence,ExposureAddress,RelocationFromAddress,RelocationToAddress,DamagedAddress,SourceOfIncomeAddress,EmploymentAddress]
  }

}
