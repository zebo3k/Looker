# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: events {


  join: events__arguments {
    view_label: "Events: Arguments"
    sql: LEFT JOIN UNNEST(${events.arguments}) as events__arguments ;;
    relationship: one_to_many
  }
}

view: events {
  sql_table_name: `datafy-357011.shopify.events`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
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

  dimension: _sdc_shop_id {
    type: number
    sql: ${TABLE}._sdc_shop_id ;;
  }

  dimension: _sdc_shop_myshopify_domain {
    type: string
    sql: ${TABLE}._sdc_shop_myshopify_domain ;;
  }

  dimension: _sdc_shop_name {
    type: string
    sql: ${TABLE}._sdc_shop_name ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: arguments {
    hidden: yes
    sql: ${TABLE}.arguments ;;
  }

  dimension: author {
    type: string
    sql: ${TABLE}.author ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: subject_id {
    type: number
    sql: ${TABLE}.subject_id ;;
  }

  dimension: subject_type {
    type: string
    sql: ${TABLE}.subject_type ;;
  }

  dimension: verb {
    type: string
    sql: ${TABLE}.verb ;;
  }

  measure: count {
    type: count
    drill_fields: [id, _sdc_shop_name]
  }
}

view: events__arguments {
  dimension: events__arguments {
    type: string
    hidden: yes
    sql: events__arguments ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }

  dimension: value__it {
    type: number
    sql: value__it ;;
  }

  dimension: value__re__new_status {
    type: string
    sql: ${TABLE}.value__re.new_status ;;
    group_label: "Value Re"
    group_item_label: "New Status"
  }

  dimension: value__re__previous_status {
    type: string
    sql: ${TABLE}.value__re.previous_status ;;
    group_label: "Value Re"
    group_item_label: "Previous Status"
  }
}
