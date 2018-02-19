view: cpr_dump_20180218 {
  sql_table_name: PUBLIC.CPR_DUMP_20180218 ;;

  dimension: actives {
    type: number
    sql: ${TABLE}.ACTIVES ;;
  }

  dimension: bet_days {
    type: number
    sql: ${TABLE}.BET_DAYS ;;
  }

  dimension: bet_days_pooled_statistic {
    type: number
    sql: ${TABLE}.BET_DAYS_POOLED_STATISTIC ;;
  }

  dimension: bet_days_stdev {
    type: number
    sql: ${TABLE}.BET_DAYS_STDEV ;;
  }

  dimension: bounces {
    type: number
    sql: ${TABLE}.BOUNCES ;;
  }

  dimension: campaigncode {
    type: string
    sql: ${TABLE}.CAMPAIGNCODE ;;
  }

  dimension: channel_match {
    type: yesno
    sql: ${TABLE}.CHANNEL_MATCH ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.CLICKS ;;
  }

  dimension: emailengagementstatus {
    type: string
    sql: ${TABLE}.EMAILENGAGEMENTSTATUS ;;
  }

  dimension: flowchartname {
    type: string
    sql: ${TABLE}.FLOWCHARTNAME ;;
  }

  dimension: free_bets {
    type: number
    sql: ${TABLE}.FREE_BETS ;;
  }

  dimension: free_bets_normalised {
    type: number
    sql: ${TABLE}.FREE_BETS_NORMALISED ;;
  }

  dimension: free_bets_pooled_statistic {
    type: number
    sql: ${TABLE}.FREE_BETS_POOLED_STATISTIC ;;
  }

  dimension: free_bets_stdev {
    type: number
    sql: ${TABLE}.FREE_BETS_STDEV ;;
  }

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

  dimension: margin {
    type: number
    sql: ${TABLE}.MARGIN ;;
  }

  dimension: margin_normalised {
    type: number
    sql: ${TABLE}.MARGIN_NORMALISED ;;
  }

  dimension: margin_pooled_statistic {
    type: number
    sql: ${TABLE}.MARGIN_POOLED_STATISTIC ;;
  }

  dimension: margin_stdev {
    type: number
    sql: ${TABLE}.MARGIN_STDEV ;;
  }

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

  dimension: senddatetime {
    type: string
    sql: ${TABLE}.SENDDATETIME ;;
  }

  dimension: sends {
    type: number
    sql: ${TABLE}.SENDS ;;
  }

  dimension: stakes {
    type: number
    sql: ${TABLE}.STAKES ;;
  }

  dimension: stakes_normalised {
    type: number
    sql: ${TABLE}.STAKES_NORMALISED ;;
  }

  dimension: stakes_pooled_statistic {
    type: number
    sql: ${TABLE}.STAKES_POOLED_STATISTIC ;;
  }

  dimension: stakes_stdev {
    type: number
    sql: ${TABLE}.STAKES_STDEV ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.SUBJECT ;;
  }

  dimension: treatmentcode {
    type: number
    sql: ${TABLE}.TREATMENTCODE ;;
  }

  dimension: unique_bounces {
    type: number
    sql: ${TABLE}.UNIQUE_BOUNCES ;;
  }

  dimension: unique_clicks {
    type: number
    sql: ${TABLE}.UNIQUE_CLICKS ;;
  }

  dimension: unique_opens {
    type: number
    sql: ${TABLE}.UNIQUE_OPENS ;;
  }

  dimension: unique_unsubscribes {
    type: number
    sql: ${TABLE}.UNIQUE_UNSUBSCRIBES ;;
  }

  dimension: uniques {
    type: number
    sql: ${TABLE}.UNIQUES ;;
  }

  dimension: unsubscribes {
    type: number
    sql: ${TABLE}.UNSUBSCRIBES ;;
  }

  measure: count {
    type: count
    drill_fields: [flowchartname, mailing_name]
  }
}
