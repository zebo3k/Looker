view: ads_insights {
  sql_table_name: `facebook.ads_insights`
    ;;

  dimension_group: _sdc_batched {
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
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_extracted {
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
    sql: ${TABLE}._sdc_extracted_at ;;
  }

  dimension_group: _sdc_received {
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
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: action_values {
    hidden: yes
    sql: ${TABLE}.action_values ;;
  }

  dimension: actions {
    hidden: yes
    sql: ${TABLE}.actions ;;
  }

  dimension: ad_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: adset_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.adset_id ;;
  }

  dimension: adset_name {
    type: string
    sql: ${TABLE}.adset_name ;;
  }

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_rate_ranking {
    type: string
    sql: ${TABLE}.conversion_rate_ranking ;;
  }

  dimension: cost_per_inline_link_click {
    type: number
    sql: ${TABLE}.cost_per_inline_link_click ;;
  }

  dimension: cost_per_inline_post_engagement {
    type: number
    sql: ${TABLE}.cost_per_inline_post_engagement ;;
  }

  dimension: cost_per_unique_click {
    type: number
    sql: ${TABLE}.cost_per_unique_click ;;
  }

  dimension: cost_per_unique_inline_link_click {
    type: number
    sql: ${TABLE}.cost_per_unique_inline_link_click ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }

  dimension: cpp {
    type: number
    sql: ${TABLE}.cpp ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension_group: date_start {
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
    sql: ${TABLE}.date_start ;;
  }

  dimension_group: date_stop {
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
    sql: ${TABLE}.date_stop ;;
  }

  dimension: engagement_rate_ranking {
    type: string
    sql: ${TABLE}.engagement_rate_ranking ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: inline_link_click_ctr {
    type: number
    sql: ${TABLE}.inline_link_click_ctr ;;
  }

  dimension: inline_link_clicks {
    type: number
    sql: ${TABLE}.inline_link_clicks ;;
  }

  dimension: inline_post_engagement {
    type: number
    sql: ${TABLE}.inline_post_engagement ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: outbound_clicks {
    hidden: yes
    sql: ${TABLE}.outbound_clicks ;;
  }

  dimension: quality_ranking {
    type: string
    sql: ${TABLE}.quality_ranking ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: social_spend {
    type: number
    sql: ${TABLE}.social_spend ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: unique_actions {
    hidden: yes
    sql: ${TABLE}.unique_actions ;;
  }

  dimension: unique_clicks {
    type: number
    sql: ${TABLE}.unique_clicks ;;
  }

  dimension: unique_ctr {
    type: number
    sql: ${TABLE}.unique_ctr ;;
  }

  dimension: unique_inline_link_click_ctr {
    type: number
    sql: ${TABLE}.unique_inline_link_click_ctr ;;
  }

  dimension: unique_inline_link_clicks {
    type: number
    sql: ${TABLE}.unique_inline_link_clicks ;;
  }

  dimension: unique_link_clicks_ctr {
    type: number
    sql: ${TABLE}.unique_link_clicks_ctr ;;
  }

  dimension: unique_outbound_clicks {
    hidden: yes
    sql: ${TABLE}.unique_outbound_clicks ;;
  }

  dimension: video_30_sec_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_30_sec_watched_actions ;;
  }

  dimension: video_p100_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p100_watched_actions ;;
  }

  dimension: video_p25_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p25_watched_actions ;;
  }

  dimension: video_p50_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p50_watched_actions ;;
  }

  dimension: video_p75_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p75_watched_actions ;;
  }

  dimension: video_play_curve_actions {
    hidden: yes
    sql: ${TABLE}.video_play_curve_actions ;;
  }

  dimension: website_ctr {
    hidden: yes
    sql: ${TABLE}.website_ctr ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      adset_name,
      campaign_name,
      account_name,
      ad_name,
      campaigns.name,
      campaigns.id,
      ads.created_time,
      ads.name,
      ads.source_ad_id,
      adsets.created_time,
      adsets.name,
      adsets.id
    ]
  }
}

view: ads_insights__actions {
  dimension: ads_insights__actions {
    type: string
    hidden: yes
    sql: ads_insights__actions ;;
  }

  dimension: value___1d_click {
    type: number
    sql: ${TABLE}.value._1d_click ;;
    group_label: "Value"
    group_item_label: "1d Click"
  }

  dimension: value___1d_view {
    type: number
    sql: ${TABLE}.value._1d_view ;;
    group_label: "Value"
    group_item_label: "1d View"
  }

  dimension: value___28d_click {
    type: number
    sql: ${TABLE}.value._28d_click ;;
    group_label: "Value"
    group_item_label: "28d Click"
  }

  dimension: value___28d_view {
    type: number
    sql: ${TABLE}.value._28d_view ;;
    group_label: "Value"
    group_item_label: "28d View"
  }

  dimension: value___7d_click {
    type: number
    sql: ${TABLE}.value._7d_click ;;
    group_label: "Value"
    group_item_label: "7d Click"
  }

  dimension: value___7d_view {
    type: number
    sql: ${TABLE}.value._7d_view ;;
    group_label: "Value"
    group_item_label: "7d View"
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__website_ctr {
  dimension: ads_insights__website_ctr {
    type: string
    hidden: yes
    sql: ads_insights__website_ctr ;;
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__action_values {
  dimension: ads_insights__action_values {
    type: string
    hidden: yes
    sql: ads_insights__action_values ;;
  }

  dimension: value___1d_click {
    type: number
    sql: ${TABLE}.value._1d_click ;;
    group_label: "Value"
    group_item_label: "1d Click"
  }

  dimension: value___1d_view {
    type: number
    sql: ${TABLE}.value._1d_view ;;
    group_label: "Value"
    group_item_label: "1d View"
  }

  dimension: value___7d_click {
    type: number
    sql: ${TABLE}.value._7d_click ;;
    group_label: "Value"
    group_item_label: "7d Click"
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__unique_actions {
  dimension: ads_insights__unique_actions {
    type: string
    hidden: yes
    sql: ads_insights__unique_actions ;;
  }

  dimension: value___1d_click {
    type: number
    sql: ${TABLE}.value._1d_click ;;
    group_label: "Value"
    group_item_label: "1d Click"
  }

  dimension: value___1d_view {
    type: number
    sql: ${TABLE}.value._1d_view ;;
    group_label: "Value"
    group_item_label: "1d View"
  }

  dimension: value___28d_click {
    type: number
    sql: ${TABLE}.value._28d_click ;;
    group_label: "Value"
    group_item_label: "28d Click"
  }

  dimension: value___28d_view {
    type: number
    sql: ${TABLE}.value._28d_view ;;
    group_label: "Value"
    group_item_label: "28d View"
  }

  dimension: value___7d_click {
    type: number
    sql: ${TABLE}.value._7d_click ;;
    group_label: "Value"
    group_item_label: "7d Click"
  }

  dimension: value___7d_view {
    type: number
    sql: ${TABLE}.value._7d_view ;;
    group_label: "Value"
    group_item_label: "7d View"
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__outbound_clicks {
  dimension: ads_insights__outbound_clicks {
    type: string
    hidden: yes
    sql: ads_insights__outbound_clicks ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__unique_outbound_clicks {
  dimension: ads_insights__unique_outbound_clicks {
    type: string
    hidden: yes
    sql: ads_insights__unique_outbound_clicks ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__video_play_curve_actions {
  dimension: ads_insights__video_play_curve_actions {
    type: string
    hidden: yes
    sql: ads_insights__video_play_curve_actions ;;
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    hidden: yes
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__video_p75_watched_actions {
  dimension: ads_insights__video_p75_watched_actions {
    type: string
    hidden: yes
    sql: ads_insights__video_p75_watched_actions ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__video_p25_watched_actions {
  dimension: ads_insights__video_p25_watched_actions {
    type: string
    hidden: yes
    sql: ads_insights__video_p25_watched_actions ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__video_p50_watched_actions {
  dimension: ads_insights__video_p50_watched_actions {
    type: string
    hidden: yes
    sql: ads_insights__video_p50_watched_actions ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__video_p100_watched_actions {
  dimension: ads_insights__video_p100_watched_actions {
    type: string
    hidden: yes
    sql: ads_insights__video_p100_watched_actions ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__video_30_sec_watched_actions {
  dimension: ads_insights__video_30_sec_watched_actions {
    type: string
    hidden: yes
    sql: ads_insights__video_30_sec_watched_actions ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights__video_play_curve_actions__value__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}
