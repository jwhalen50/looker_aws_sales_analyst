view: transactions {
  sql_table_name: salesdemo.transactions ;;
  suggestions: no

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: contactname {
    type: string
    sql: ${TABLE}.contactname ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}.customername ;;
  }

  dimension: dealsize {
    type: string
    sql: ${TABLE}.dealsize ;;
  }

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.ipaddress ;;
  }

  dimension: month_id {
    type: number
    sql: ${TABLE}.month_id ;;
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}.msrp ;;
  }

  dimension: orderdate {
    type: string
    sql: ${TABLE}.orderdate ;;
  }

  dimension: orderlinenumber {
    type: number
    sql: ${TABLE}.orderlinenumber ;;
  }

  dimension: ordernumber {
    type: number
    sql: ${TABLE}.ordernumber ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.postalcode ;;
  }

  dimension: priceeach {
    type: number
    sql: ${TABLE}.priceeach ;;
  }

  dimension: productcode {
    type: string
    sql: ${TABLE}.productcode ;;
  }

  dimension: productline {
    type: string
    sql: ${TABLE}.productline ;;
  }

  dimension: qtr_id {
    type: number
    sql: ${TABLE}.qtr_id ;;
  }

  dimension: quantityordered {
    type: number
    sql: ${TABLE}.quantityordered ;;
  }

  dimension: rep {
    type: string
    sql: ${TABLE}.rep ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: territory {
    type: string
    sql: ${TABLE}.territory ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.year_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customername, contactname]
  }
}
