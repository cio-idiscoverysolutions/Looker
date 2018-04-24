view: vw_Plaintiff_City_Suggestions {

  derived_table: {
    sql:
      Select Distinct City from [dbo].[vw_Plaintiff_Count_by_Address]
          group by City
          Order by City ;;
  }
  dimension: City {
    type: string
    primary_key: yes
    sql: ${TABLE}.City ;;
  }
}
