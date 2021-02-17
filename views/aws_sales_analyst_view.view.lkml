view: aws_sales_analyst_view {
# view: sales_analyst_view {
#   # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT
         territory as territory
         , country as country
         , rep as rep
         , customername as customername
         , SUM(sales) as sales
       FROM transactions
       GROUP BY territory
       , country
       , rep
       , customername
       ORDER BY sales DESC
       ;;
  }
#
#   # Define your dimensions and measures here, like this:
  dimension: territory {
    description: "Territory"
    type: string
    sql: ${TABLE}.territory
      ;;
  }
#   # Define your dimensions and measures here, like this:
  dimension: country {
    description: "Country"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country
      ;;
  }
  #   # Define your dimensions and measures here, like this:
  dimension: rep {
    description: "Rep"
    type: string
    sql: ${TABLE}.rep
      ;;
  }
#   # Define your dimensions and measures here, like this:
  dimension: customername {
    description: "Customer Name"
    type: string
    sql: ${TABLE}.customername
      ;;
  }
#   # Define your dimensions and measures here, like this:
  dimension: sales {
    description: "Sales"
    type: number
    sql: ${TABLE}.sales
      ;;
  }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
  measure: total_sales {
    description: "Total Sales by Territory, Rep and Customer"
    type: sum
    sql: ${sales} ;;
  }
  measure: customer_count {
    description: "Customer Count by Territory, Rep and Customer"
    type: count_distinct
    sql: ${customername} ;;
  }
}
