view: ads {
  sql_table_name: `facebook.ads`
    ;;
  drill_fields: [source_ad_id]

  dimension: source_ad_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.source_ad_id ;;
  }

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

  dimension: adset_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.adset_id ;;
  }

  dimension: bid_type {
    type: string
    sql: ${TABLE}.bid_type ;;
  }

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: conversion_specs {
    hidden: yes
    sql: ${TABLE}.conversion_specs ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_time ;;
  }

  dimension: creative__id {
    type: string
    sql: ${TABLE}.creative.id ;;
    group_label: "Creative"
    group_item_label: "ID"
  }

  dimension: effective_status {
    type: string
    sql: ${TABLE}.effective_status ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: last_updated_by_app_id {
    type: string
    sql: ${TABLE}.last_updated_by_app_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: recommendations {
    hidden: yes
    sql: ${TABLE}.recommendations ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: targeting__age_max {
    type: number
    sql: ${TABLE}.targeting.age_max ;;
    group_label: "Targeting"
    group_item_label: "Age Max"
  }

  dimension: targeting__age_min {
    type: number
    sql: ${TABLE}.targeting.age_min ;;
    group_label: "Targeting"
    group_item_label: "Age Min"
  }

  dimension: targeting__custom_audiences {
    hidden: yes
    sql: ${TABLE}.targeting.custom_audiences ;;
    group_label: "Targeting"
    group_item_label: "Custom Audiences"
  }

  dimension: targeting__device_platforms {
    hidden: yes
    sql: ${TABLE}.targeting.device_platforms ;;
    group_label: "Targeting"
    group_item_label: "Device Platforms"
  }

  dimension: targeting__excluded_custom_audiences {
    hidden: yes
    sql: ${TABLE}.targeting.excluded_custom_audiences ;;
    group_label: "Targeting"
    group_item_label: "Excluded Custom Audiences"
  }

  dimension: targeting__excluded_geo_locations__countries {
    hidden: yes
    sql: ${TABLE}.targeting.excluded_geo_locations.countries ;;
    group_label: "Targeting Excluded Geo Locations"
    group_item_label: "Countries"
  }

  dimension: targeting__excluded_geo_locations__location_types {
    hidden: yes
    sql: ${TABLE}.targeting.excluded_geo_locations.location_types ;;
    group_label: "Targeting Excluded Geo Locations"
    group_item_label: "Location Types"
  }

  dimension: targeting__facebook_positions {
    hidden: yes
    sql: ${TABLE}.targeting.facebook_positions ;;
    group_label: "Targeting"
    group_item_label: "Facebook Positions"
  }

  dimension: targeting__flexible_spec__value__education_majors {
    hidden: yes
    sql: ${TABLE}.targeting.flexible_spec.value.education_majors ;;
    group_label: "Targeting Flexible Spec Value"
    group_item_label: "Education Majors"
  }

  dimension: targeting__flexible_spec__value__interests {
    hidden: yes
    sql: ${TABLE}.targeting.flexible_spec.value.interests ;;
    group_label: "Targeting Flexible Spec Value"
    group_item_label: "Interests"
  }

  dimension: targeting__flexible_spec__value__work_employers {
    hidden: yes
    sql: ${TABLE}.targeting.flexible_spec.value.work_employers ;;
    group_label: "Targeting Flexible Spec Value"
    group_item_label: "Work Employers"
  }

  dimension: targeting__flexible_spec__value__work_positions {
    hidden: yes
    sql: ${TABLE}.targeting.flexible_spec.value.work_positions ;;
    group_label: "Targeting Flexible Spec Value"
    group_item_label: "Work Positions"
  }

  dimension: targeting__genders {
    hidden: yes
    sql: ${TABLE}.targeting.genders ;;
    group_label: "Targeting"
    group_item_label: "Genders"
  }

  dimension: targeting__geo_locations__cities {
    hidden: yes
    sql: ${TABLE}.targeting.geo_locations.cities ;;
    group_label: "Targeting Geo Locations"
    group_item_label: "Cities"
  }

  dimension: targeting__geo_locations__countries {
    hidden: yes
    sql: ${TABLE}.targeting.geo_locations.countries ;;
    group_label: "Targeting Geo Locations"
    group_item_label: "Countries"
  }

  dimension: targeting__geo_locations__country_groups {
    hidden: yes
    sql: ${TABLE}.targeting.geo_locations.country_groups ;;
    group_label: "Targeting Geo Locations"
    group_item_label: "Country Groups"
  }

  dimension: targeting__geo_locations__location_types {
    hidden: yes
    sql: ${TABLE}.targeting.geo_locations.location_types ;;
    group_label: "Targeting Geo Locations"
    group_item_label: "Location Types"
  }

  dimension: targeting__geo_locations__regions {
    hidden: yes
    sql: ${TABLE}.targeting.geo_locations.regions ;;
    group_label: "Targeting Geo Locations"
    group_item_label: "Regions"
  }

  dimension: targeting__instagram_positions {
    hidden: yes
    sql: ${TABLE}.targeting.instagram_positions ;;
    group_label: "Targeting"
    group_item_label: "Instagram Positions"
  }

  dimension: targeting__locales {
    hidden: yes
    sql: ${TABLE}.targeting.locales ;;
    group_label: "Targeting"
    group_item_label: "Locales"
  }

  dimension: targeting__messenger_positions {
    hidden: yes
    sql: ${TABLE}.targeting.messenger_positions ;;
    group_label: "Targeting"
    group_item_label: "Messenger Positions"
  }

  dimension: targeting__publisher_platforms {
    hidden: yes
    sql: ${TABLE}.targeting.publisher_platforms ;;
    group_label: "Targeting"
    group_item_label: "Publisher Platforms"
  }

  dimension: targeting__targeting_optimization {
    type: string
    sql: ${TABLE}.targeting.targeting_optimization ;;
    group_label: "Targeting"
    group_item_label: "Targeting Optimization"
  }

  dimension: tracking_specs {
    hidden: yes
    sql: ${TABLE}.tracking_specs ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_time ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      source_ad_id,
      created_time,
      name,
      adsets.created_time,
      adsets.name,
      adsets.id,
      campaigns.name,
      campaigns.id,
      ads_insights_age_and_gender.count,
      ads_insights.count
    ]
  }
}

view: ads__tracking_specs {
  dimension: ads__tracking_specs {
    type: string
    hidden: yes
    sql: ads__tracking_specs ;;
  }

  dimension: value__action_type {
    hidden: yes
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__conversion_id {
    hidden: yes
    sql: ${TABLE}.value.conversion_id ;;
    group_label: "Value"
    group_item_label: "Conversion ID"
  }

  dimension: value__creative {
    hidden: yes
    sql: ${TABLE}.value.creative ;;
    group_label: "Value"
    group_item_label: "Creative"
  }

  dimension: value__fb_pixel {
    hidden: yes
    sql: ${TABLE}.value.fb_pixel ;;
    group_label: "Value"
    group_item_label: "Fb Pixel"
  }

  dimension: value__page {
    hidden: yes
    sql: ${TABLE}.value.page ;;
    group_label: "Value"
    group_item_label: "Page"
  }

  dimension: value__post {
    hidden: yes
    sql: ${TABLE}.value.post ;;
    group_label: "Value"
    group_item_label: "Post"
  }

  dimension: value__post_wall {
    hidden: yes
    sql: ${TABLE}.value.post_wall ;;
    group_label: "Value"
    group_item_label: "Post Wall"
  }
}

view: ads__recommendations {
  dimension: ads__recommendations {
    type: string
    hidden: yes
    sql: ads__recommendations ;;
  }

  dimension: value__blame_field {
    type: string
    sql: ${TABLE}.value.blame_field ;;
    group_label: "Value"
    group_item_label: "Blame Field"
  }

  dimension: value__code {
    type: number
    sql: ${TABLE}.value.code ;;
    group_label: "Value"
    group_item_label: "Code"
  }

  dimension: value__confidence {
    type: string
    sql: ${TABLE}.value.confidence ;;
    group_label: "Value"
    group_item_label: "Confidence"
  }

  dimension: value__importance {
    type: string
    sql: ${TABLE}.value.importance ;;
    group_label: "Value"
    group_item_label: "Importance"
  }

  dimension: value__message {
    type: string
    sql: ${TABLE}.value.message ;;
    group_label: "Value"
    group_item_label: "Message"
  }

  dimension: value__title {
    type: string
    sql: ${TABLE}.value.title ;;
    group_label: "Value"
    group_item_label: "Title"
  }
}

view: ads__conversion_specs {
  dimension: ads__conversion_specs {
    type: string
    hidden: yes
    sql: ads__conversion_specs ;;
  }

  dimension: value__action_type {
    hidden: yes
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__conversion_id {
    hidden: yes
    sql: ${TABLE}.value.conversion_id ;;
    group_label: "Value"
    group_item_label: "Conversion ID"
  }

  dimension: value__leadgen {
    hidden: yes
    sql: ${TABLE}.value.leadgen ;;
    group_label: "Value"
    group_item_label: "Leadgen"
  }

  dimension: value__page {
    hidden: yes
    sql: ${TABLE}.value.page ;;
    group_label: "Value"
    group_item_label: "Page"
  }

  dimension: value__post {
    hidden: yes
    sql: ${TABLE}.value.post ;;
    group_label: "Value"
    group_item_label: "Post"
  }

  dimension: value__post_wall {
    hidden: yes
    sql: ${TABLE}.value.post_wall ;;
    group_label: "Value"
    group_item_label: "Post Wall"
  }
}

view: ads__targeting__genders {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__locales {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads__tracking_specs__value__post {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__tracking_specs__value__page {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__device_platforms {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__conversion_specs__value__post {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__conversion_specs__value__page {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__facebook_positions {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__messenger_positions {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__custom_audiences {
  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}

view: ads__targeting__publisher_platforms {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__instagram_positions {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__tracking_specs__value__fb_pixel {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__tracking_specs__value__creative {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__conversion_specs__value__leadgen {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__tracking_specs__value__post_wall {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__conversion_specs__value__post_wall {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__tracking_specs__value__action_type {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__geo_locations__countries {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__conversion_specs__value__action_type {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__geo_locations__cities {
  dimension: value__country {
    type: string
    sql: ${TABLE}.value.country ;;
    group_label: "Value"
    group_item_label: "Country"
  }

  dimension: value__distance_unit {
    type: string
    sql: ${TABLE}.value.distance_unit ;;
    group_label: "Value"
    group_item_label: "Distance Unit"
  }

  dimension: value__key {
    type: string
    sql: ${TABLE}.value.key ;;
    group_label: "Value"
    group_item_label: "Key"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }

  dimension: value__radius {
    type: number
    sql: ${TABLE}.value.radius ;;
    group_label: "Value"
    group_item_label: "Radius"
  }

  dimension: value__region {
    type: string
    sql: ${TABLE}.value.region ;;
    group_label: "Value"
    group_item_label: "Region"
  }

  dimension: value__region_id {
    type: string
    sql: ${TABLE}.value.region_id ;;
    group_label: "Value"
    group_item_label: "Region ID"
  }
}

view: ads__tracking_specs__value__conversion_id {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__geo_locations__regions {
  dimension: value__country {
    type: string
    sql: ${TABLE}.value.country ;;
    group_label: "Value"
    group_item_label: "Country"
  }

  dimension: value__key {
    type: string
    sql: ${TABLE}.value.key ;;
    group_label: "Value"
    group_item_label: "Key"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}

view: ads__conversion_specs__value__conversion_id {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__geo_locations__location_types {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__geo_locations__country_groups {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__excluded_custom_audiences {
  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}

view: ads__targeting__flexible_spec__value__interests {
  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}

view: ads__targeting__excluded_geo_locations__countries {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__flexible_spec__value__work_positions {
  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}

view: ads__targeting__flexible_spec__value__work_employers {
  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}

view: ads__targeting__excluded_geo_locations__location_types {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: ads__targeting__flexible_spec__value__education_majors {
  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}
