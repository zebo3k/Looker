view: custom_collections {
  sql_table_name: `datafy-357011.shopify.custom_collections`
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

  dimension: admin_graphql_api_id {
    type: string
    sql: ${TABLE}.admin_graphql_api_id ;;
  }

  dimension: handle {
    type: string
    sql: ${TABLE}.handle ;;
  }

  dimension: published_at {
    type: string
    sql: ${TABLE}.published_at ;;
  }

  dimension: published_scope {
    type: string
    sql: ${TABLE}.published_scope ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.sort_order ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, _sdc_shop_name]
  }
}
