view: vw_Plaintiff_City_Suggestions {

  derived_table: {
    sql:
      Select Distinct City 'CitySuggestion' from [dbo].[vw_Plaintiff_Count_by_Address]
          group by City ;;
  }
  dimension: CitySuggestion {
    type: string
    primary_key: yes
    sql: ${TABLE}.CitySuggestion ;;
  }
}
