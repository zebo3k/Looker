view: adsets {
  sql_table_name: `facebook.adsets`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: adlabels {
    hidden: yes
    sql: ${TABLE}.adlabels ;;
  }

  dimension: budget_remaining {
    type: number
    sql: ${TABLE}.budget_remaining ;;
  }

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
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

  dimension: daily_budget {
    type: number
    sql: ${TABLE}.daily_budget ;;
  }

  dimension: effective_status {
    type: string
    sql: ${TABLE}.effective_status ;;
  }

  dimension: lifetime_budget {
    type: number
    sql: ${TABLE}.lifetime_budget ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: promoted_object__custom_event_type {
    type: string
    sql: ${TABLE}.promoted_object.custom_event_type ;;
    group_label: "Promoted Object"
    group_item_label: "Custom Event Type"
  }

  dimension: promoted_object__page_id {
    type: string
    sql: ${TABLE}.promoted_object.page_id ;;
    group_label: "Promoted Object"
    group_item_label: "Page ID"
  }

  dimension: promoted_object__pixel_id {
    type: string
    sql: ${TABLE}.promoted_object.pixel_id ;;
    group_label: "Promoted Object"
    group_item_label: "Pixel ID"
  }

  dimension: promoted_object__product_set_id {
    type: string
    sql: ${TABLE}.promoted_object.product_set_id ;;
    group_label: "Promoted Object"
    group_item_label: "Product Set ID"
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
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
      id,
      created_time,
      name,
      campaigns.name,
      campaigns.id,
      ads_insights_age_and_gender.count,
      ads.count,
      ads_insights.count
    ]
  }
}

view: adsets__adlabels {
  dimension: adsets__adlabels {
    type: string
    hidden: yes
    sql: adsets__adlabels ;;
  }

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

view: adsets__targeting__genders {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__locales {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__device_platforms {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__facebook_positions {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__messenger_positions {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__custom_audiences {
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

view: adsets__targeting__publisher_platforms {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__instagram_positions {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__geo_locations__countries {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__geo_locations__cities {
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

view: adsets__targeting__geo_locations__regions {
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

view: adsets__targeting__geo_locations__location_types {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__geo_locations__country_groups {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__excluded_custom_audiences {
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

view: adsets__targeting__flexible_spec__value__interests {
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

view: adsets__targeting__excluded_geo_locations__countries {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__flexible_spec__value__work_positions {
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

view: adsets__targeting__flexible_spec__value__work_employers {
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

view: adsets__targeting__excluded_geo_locations__location_types {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adsets__targeting__flexible_spec__value__education_majors {
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
