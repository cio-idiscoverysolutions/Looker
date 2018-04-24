connection: "litdev01-sql2016"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: primary_audit {}

explore: relationship {}

# Add Views as Standalone so visible in Explore
explore: CDA001 {
  from: vw_cda001
}
explore: CDA002 {
  from: vw_cda002
}
explore: CDA003 {
  from: vw_cda003
}
explore: CDA004 {
  from: vw_cda005
}
explore: CDA005 {
  from: vw_cda005
}
explore: CDA006 {
  from: vw_cda006
}
explore: CDA007 {
  from: vw_cda007
}
explore: CDA008 {
  from: vw_cda008
}
#explore: CDA009 {
#  from: vw_cda009
#}
#explore: law_firm_profile {
#  from: vw_law_firm_profile
#}

#These views used for Interactive Map
explore: plaintiff_count_by_address {
  from: vw_plaintiff_count_by_address
  }
explore: plaintiff_count_by_address_details {
  from: vw_plaintiff_count_by_address_details
  }
explore: vw_Plaintiff_City_Suggestions {
  from: vw_Plaintiff_City_Suggestions
}
explore: script {
  join: users {
    type: left_outer
    sql_on: ${script.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: udf {
  label: "Universal Data Format"
  join: ppl{
    type: left_outer
    sql_on: ${udf.ppl_id} = ${ppl.ppl_id} ;;
    relationship: one_to_many
    view_label: "People "

  }
  join:physical_injury_analysis  {
    type: left_outer
    sql_on: ${ppl.ppl_id} = ${physical_injury_analysis.ppl_id} ;;
    relationship: one_to_one
    view_label: "People"
  }
  join: obj{
    type: left_outer
    sql_on: ${udf.obj_id} = ${obj.obj_id} ;;
    relationship: one_to_many
    view_label: "Object"
  }
  join: loc{
    type: left_outer
    sql_on: ${udf.loc_id} = ${loc.loc_id} ;;
    relationship: one_to_many
  }
  join: evt{
    type: left_outer
    sql_on: ${udf.evt_id} = ${evt.evt_id} ;;
    relationship: one_to_many
  }
  join: src{
    type: left_outer
    sql_on: ${udf.src_id} = ${src.src_id} ;;
    relationship: one_to_many
  }
  join: cda_results{
    type: left_outer
    sql_on: ${udf.udf_id} = ${cda_results.udf_id} ;;
    relationship: one_to_many
  }
  join: ppl_attribute{
    from: attribute
    type: left_outer
    sql_on: ${ppl.ppl_id} = ${ppl_attribute.ppl_id} ;;
    relationship: one_to_many
      }

      join: obj_attribute{
    from: attribute
    type: left_outer
    sql_on: ${obj.obj_id} = ${obj_attribute.obj_id} ;;
    relationship: one_to_many
  }
  join: loc_attribute{
    from: attribute
    type: left_outer
    sql_on: ${loc.loc_id} = ${loc_attribute.loc_id} ;;
    relationship: one_to_many
  }
  join: evt_attribute{
    from: attribute
    type: left_outer
    sql_on: ${evt_attribute.evt_id} = ${evt_attribute.evt_id} ;;
    relationship: one_to_many
  }

}
explore: location_details {}
