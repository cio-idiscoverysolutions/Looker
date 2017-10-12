view: physical_injury_analysis {
  derived_table: {
    sql: Select a.*
        , CASE WHEN Acute = 1 And Chronic = 1 THEN 1 ELSE 0 END Acute_And_Chronic
        , CASE WHEN Acute = 1 OR Chronic = 1 THEN 1 ELSE 0 END Acute_OR_Chronic
      From (
          Select zz.ppl_id
            , max(CASE when evt_id = 34 then 1 Else 0 end) as Acute
            , max(CASE when evt_id = 35 then 1 Else 0 end) as Chronic
          From udf.UDF zz
          WHere zz.EVT_ID in (34, 35)
          Group by ppl_id
        ) a
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_acute {
    type: count
    filters: {

      field: acute
      value: "1"
    }
  }

  measure: count_chronic {
    type: count
    filters: {

      field: chronic
      value: "1"
    }
  }

  measure: count_acute_and_chronic {
    type: count
    filters: {

      field: acute_and_chronic
      value: "1"
    }
  }

  measure: count_acute_or_chronic {
    type: count
    filters: {

      field: acute_or_chronic
      value: "1"
    }
  }

  dimension: ppl_id {
    type: string
    sql: ${TABLE}.ppl_id ;;
    hidden: yes
    primary_key: yes

  }

  dimension: acute {
    type: string
    sql: ${TABLE}.Acute ;;
  }

  dimension: chronic {
    type: string
    sql: ${TABLE}.Chronic ;;
  }

  dimension: acute_and_chronic {
    type: string
    sql: ${TABLE}.Acute_And_Chronic ;;
  }

  dimension: acute_or_chronic {
    type: string
    sql: ${TABLE}.Acute_OR_Chronic ;;
  }

  set: detail {
    fields: [ppl_id, acute, chronic, acute_and_chronic, acute_or_chronic]
  }
}
