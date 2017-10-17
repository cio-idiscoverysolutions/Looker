view: location_details {
  derived_table: {
    sql: Select Count(Distinct udf.PPL_ID) 'Plaintiffs'
        , SUM(CASE WHEN ISNULL(e.Name,'') = 'Physical Injury (Acute) Claim' THEN 1 ELSE 0 END) 'Acute Claims'
        , SUM(CASE WHEN ISNULL(e.Name,'') = 'Physical Injury (Chronic) Claim' THEN 1 ELSE 0 END) 'Chronic Claims'
        , SUM(CASE WHEN ISNULL(e.Name,'') = 'Real Property (Damage) Claim' THEN 1 ELSE 0 END) 'Real Property Damage Claims'
        , SUM(CASE WHEN ISNULL(e.Name,'') = 'Relocation Claim' THEN 1 ELSE 0 END) 'Relocation Claims'
        , SUM(CASE WHEN ISNULL(e.Name,'') = 'Loss of Wages Claim' THEN 1 ELSE 0 END) 'Loss of Wages Claim'
        ,(Select Address From dim.loc Where {% condition LocationID_Filter %} loc_id {% endcondition %}
 ) Address
      From udf.udf udf (NOLOCK)
        Inner Join dim.EVT e (NOLOCK)
          ON e.EVT_ID = udf.EVT_ID
      Where Exists (Select udf.PPL_ID
              --Select udf.*, e.*
              From udf.udf udfz (NOLOCK)
                Inner Join dim.LOC lz (NOLOCK)
                  ON lz.LOC_ID = udfz.LOC_ID
              Where udfz.loc_id IS NOT NULL
                AND udfz.ppl_id IS NOT NULL
                And
                {% condition LocationID_Filter %} udfz.LOC_ID {% endcondition %}

                And udfz.PPL_ID = udf.PPL_ID)
       ;;
  }
  filter: LocationID_Filter {
    type: number
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: plaintiffs {
    type: string
    sql: ${TABLE}.Plaintiffs ;;
  }

  dimension: acute_claims {
    type: string
    label: "Acute Claims"
    sql: ${TABLE}."Acute Claims" ;;
  }

  dimension: chronic_claims {
    type: string
    label: "Chronic Claims"
    sql: ${TABLE}."Chronic Claims" ;;
  }

  dimension: real_property_damage_claims {
    type: string
    label: "Real Property Damage Claims"
    sql: ${TABLE}."Real Property Damage Claims" ;;
  }

  dimension: relocation_claims {
    type: string
    label: "Relocation Claims"
    sql: ${TABLE}."Relocation Claims" ;;
  }

  dimension: loss_of_wages_claim {
    type: string
    label: "Loss of Wages Claim"
    sql: ${TABLE}."Loss of Wages Claim" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  set: detail {
    fields: [
      plaintiffs,
      acute_claims,
      chronic_claims,
      real_property_damage_claims,
      relocation_claims,
      loss_of_wages_claim,
      address
    ]
  }
}
