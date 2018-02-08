view: vw_law_firm_profile {
  sql_table_name: dbo.vw_Law_Firm_Profile ;;

  dimension_group: file {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.File_Date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: plaintiff_name {
    type: string
    sql: ${TABLE}.Plaintiff_Name ;;
  }

  dimension: plaintiff_number {
    type: string
    sql: ${TABLE}.Plaintiff_Number ;;
  }

  dimension: xml_file {
    type: string
    sql: ${TABLE}.XML_File ;;
  }

  measure: count {
    type: count
    drill_fields: [name, plaintiff_name]
  }

  measure: count_distinct_plaintiff {
    type:  count_distinct
    sql: ${TABLE}.plaintiff_number ;;
  }
}
