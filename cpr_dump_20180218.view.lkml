view: cpr_dump_20180218 {
  sql_table_name: PUBLIC.CPR_DUMP_20180218 ;;

  label: "CPR"

  measure: actives {
    type: sum
    sql: ${TABLE}.ACTIVES ;;
  }

  measure: bet_days {
    type: sum
    sql: ${TABLE}.BET_DAYS ;;
  }

# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: bet_days_pooled_statistic {
#     type: number
#     sql: ${TABLE}.BET_DAYS_POOLED_STATISTIC ;;
#   }

# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: bet_days_stdev {
#     type: number
#     sql: ${TABLE}.BET_DAYS_STDEV ;;
#   }

  measure: bounces {
    type: sum
    sql: ${TABLE}.BOUNCES ;;
  }

  dimension: campaign_code {
    type: string
    sql: ${TABLE}.CAMPAIGNCODE ;;
  }

  dimension: channel_match {
    type: yesno
    sql: ${TABLE}.CHANNEL_MATCH ;;
  }

  measure: clicks {
    type: sum
    sql: ${TABLE}.CLICKS ;;
  }

  dimension: emailengagementstatus {
    type: string
    sql: ${TABLE}.EMAILENGAGEMENTSTATUS ;;
  }

  dimension: flowchart_name {
    type: string
    sql: ${TABLE}.FLOWCHARTNAME ;;
  }

  measure: free_bets {
    type: sum
    sql: ${TABLE}.FREE_BETS ;;
  }

  measure: free_bets_normalised {
    type: sum
    sql: ${TABLE}.FREE_BETS_NORMALISED ;;
  }


# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: free_bets_pooled_statistic {
#     type: number
#     sql: ${TABLE}.FREE_BETS_POOLED_STATISTIC ;;
#   }


# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: free_bets_stdev {
#     type: number
#     sql: ${TABLE}.FREE_BETS_STDEV ;;
#   }

  dimension: greater_than_from_date {
    type: yesno
    sql: ${TABLE}.GREATER_THAN_FROM_DATE ;;
  }

  dimension: iscontrol {
    type: yesno
    sql: ${TABLE}.ISCONTROL ;;
  }

  dimension: less_than_to_date {
    type: yesno
    sql: ${TABLE}.LESS_THAN_TO_DATE ;;
  }

  dimension: lights_out_filter_match {
    type: yesno
    sql: ${TABLE}.LIGHTS_OUT_FILTER_MATCH ;;
  }

  dimension: lookup {
    type: string
    sql: ${TABLE}.LOOKUP ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MAILING_ID ;;
  }

  dimension: mailing_name {
    type: string
    sql: ${TABLE}.MAILING_NAME ;;
  }

  dimension: mailing_name_by_day_match {
    type: yesno
    sql: ${TABLE}.MAILING_NAME_BY_DAY_MATCH ;;
  }

  measure: margin {
    type: sum
    sql: ${TABLE}.MARGIN ;;
  }

  measure: margin_normalised {
    type: sum
    sql: ${TABLE}.MARGIN_NORMALISED ;;
  }


# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: margin_pooled_statistic {
#     type: number
#     sql: ${TABLE}.MARGIN_POOLED_STATISTIC ;;
#   }


# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: margin_stdev {
#     type: number
#     sql: ${TABLE}.MARGIN_STDEV ;;
#   }

  dimension: name_match {
    type: yesno
    sql: ${TABLE}.NAME_MATCH ;;
  }

  dimension: opens {
    type: number
    sql: ${TABLE}.OPENS ;;
  }

  dimension: os_channel {
    type: string
    sql: ${TABLE}.OS_CHANNEL ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.PRODUCT ;;
  }

  dimension: product_match {
    type: yesno
    sql: ${TABLE}.PRODUCT_MATCH ;;
  }

  dimension_group: selection {
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
    sql: ${TABLE}.SELECTION_DATE ;;
  }

  dimension_group: send {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      time
    ]
    convert_tz: no
    sql: ${TABLE}.SENDDATETIME ;;
  }

  dimension: sent_date_filter {
    description: "Field to be used for filtering as it autopopulated suggestions for dates"
    type: string
    sql: to_varchar(${TABLE}.SENDDATETIME,'DD-MON-YYYY') ;;
    order_by_field: send_raw
    full_suggestions: yes
    }

  measure: sends {
    type: sum
    sql: ${TABLE}.SENDS ;;
  }

  measure: stakes {
    type: sum
    sql: ${TABLE}.STAKES ;;
  }

  measure: stakes_normalised {
    type: sum
    sql: ${TABLE}.STAKES_NORMALISED ;;
  }


# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: stakes_pooled_statistic {
#     type: number
#     sql: ${TABLE}.STAKES_POOLED_STATISTIC ;;
#   }


# I THINK THE MEASURE BELOW CANNOT BE AGGREGATED POST INITIAL AGGREGATION
#   dimension: stakes_stdev {
#     type: number
#     sql: ${TABLE}.STAKES_STDEV ;;
#   }

  dimension: subject {
    type: string
    sql: ${TABLE}.SUBJECT ;;
  }

  dimension: treatmentcode {
    type: number
    sql: ${TABLE}.TREATMENTCODE ;;
  }

  measure: unique_bounces {
    type: sum
    sql: ${TABLE}.UNIQUE_BOUNCES ;;
  }

  measure: unique_clicks {
    type: sum
    sql: ${TABLE}.UNIQUE_CLICKS ;;
  }

  measure: unique_opens {
    type: sum
    sql: ${TABLE}.UNIQUE_OPENS ;;
  }

  measure: unique_unsubscribes {
    type: sum
    sql: ${TABLE}.UNIQUE_UNSUBSCRIBES ;;
  }

  measure: uniques {
    type: sum
    sql: ${TABLE}.UNIQUES ;;
  }

  measure: unsubscribes {
    type: sum
    sql: ${TABLE}.UNSUBSCRIBES ;;
  }

  measure: count {
    type: count
    drill_fields: [flowchart_name, mailing_name]
  }
}
