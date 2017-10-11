view: lu_type {
  sql_table_name: spt.LU_TYPE ;;

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

  dimension: date_lastmodified {
    type: string
    sql: ${TABLE}.DATE_LASTMODIFIED ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.TYPE_ID ;;
  }

  dimension: type_of {
    type: string
    sql: ${TABLE}.TYPE_OF ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
