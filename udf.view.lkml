view: udf {
  sql_table_name: udf.UDF ;;

  dimension: udf_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UDF_ID ;;
  }

  dimension: confidence {
    type: number
    sql: ${TABLE}.CONFIDENCE ;;
  }

  dimension_group: date_beg_lcl {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_BEG_LCL ;;
  }

  dimension_group: date_beg_source {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_BEG_SOURCE ;;
  }

  dimension_group: date_beg_utc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_BEG_UTC ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_end_lcl {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_END_LCL ;;
  }

  dimension_group: date_end_source {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_END_SOURCE ;;
  }

  dimension_group: date_end_utc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_END_UTC ;;
  }

  dimension_group: date_lastmodified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE_LASTMODIFIED ;;
  }

  dimension: evt_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.EVT_ID ;;
  }

  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
  }

  dimension: gps_long {
    type: number
    sql: ${TABLE}.GPS_LONG ;;
  }

  dimension: loc_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LOC_ID ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: obj_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OBJ_ID ;;
  }

  dimension: ppl_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PPL_ID ;;
  }

  dimension: src_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SRC_ID ;;
  }

  dimension: src_record_id {
    type: number
    sql: ${TABLE}.SRC_RECORD_ID ;;
  }

  dimension: version_status {
    type: string
    sql: ${TABLE}.VERSION_STATUS ;;
  }
  dimension: is_acute_injury {
    type: yesno
    sql: ${evt_id} = 1 ;;
    }



  measure: count_of_acute_injury {
    type: count
    filters: {
      field:  is_acute_injury
      value: "yes"
    }

  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      udf_id,
      ppl.ppl_id,
      ppl.full_name,
      ppl.first_name,
      ppl.middle_name,
      ppl.last_name,
      obj.obj_id,
      obj.name,
      loc.loc_id,
      loc.name,
      evt.evt_id,
      evt.name,
      src.src_id,
      src.name,
      cda_results.count,
      udf_enrichment_audit.count
    ]
  }
}
