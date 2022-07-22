# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: products {


  join: products__images {
    view_label: "Products: Images"
    sql: LEFT JOIN UNNEST(${products.images}) as products__images ;;
    relationship: one_to_many
  }

  join: products__options {
    view_label: "Products: Options"
    sql: LEFT JOIN UNNEST(${products.options}) as products__options ;;
    relationship: one_to_many
  }

  join: products__variants {
    view_label: "Products: Variants"
    sql: LEFT JOIN UNNEST(${products.variants}) as products__variants ;;
    relationship: one_to_many
  }

  join: products__options__value__values {
    view_label: "Products: Options Value Values"
    sql: LEFT JOIN UNNEST(${products__options.value__values}) as products__options__value__values ;;
    relationship: one_to_many
  }
}

view: products {
  sql_table_name: `datafy-357011.shopify.products`
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

  dimension: body_html {
    type: string
    sql: ${TABLE}.body_html ;;
  }

  dimension_group: created_at {
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

  dimension: handle {
    type: string
    sql: ${TABLE}.handle ;;
  }

  dimension: image__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.image.admin_graphql_api_id ;;
    group_label: "Image"
    group_item_label: "Admin Graphql API ID"
  }

  dimension_group: image__created {
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
    sql: ${TABLE}.image.created_at ;;
  }

  dimension: image__height {
    type: number
    sql: ${TABLE}.image.height ;;
    group_label: "Image"
    group_item_label: "Height"
  }

  dimension: image__id {
    type: number
    sql: ${TABLE}.image.id ;;
    group_label: "Image"
    group_item_label: "ID"
  }

  dimension: image__position {
    type: number
    sql: ${TABLE}.image.position ;;
    group_label: "Image"
    group_item_label: "Position"
  }

  dimension: image__src {
    type: string
    sql: ${TABLE}.image.src ;;
    group_label: "Image"
    group_item_label: "Src"
  }

  dimension_group: image__updated {
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
    sql: ${TABLE}.image.updated_at ;;
  }

  dimension: image__width {
    type: number
    sql: ${TABLE}.image.width ;;
    group_label: "Image"
    group_item_label: "Width"
  }

  dimension: images {
    hidden: yes
    sql: ${TABLE}.images ;;
  }

  dimension: options {
    hidden: yes
    sql: ${TABLE}.options ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: published_scope {
    type: string
    sql: ${TABLE}.published_scope ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: template_suffix {
    type: string
    sql: ${TABLE}.template_suffix ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated_at {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: variants {
    hidden: yes
    sql: ${TABLE}.variants ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id, _sdc_shop_name, collects.count]
  }
}

view: products__images {
  dimension: products__images {
    type: string
    hidden: yes
    sql: products__images ;;
  }

  dimension: value__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.value.admin_graphql_api_id ;;
    group_label: "Value"
    group_item_label: "Admin Graphql API ID"
  }

  dimension_group: value__created {
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
    sql: ${TABLE}.value.created_at ;;
  }

  dimension: value__height {
    type: number
    sql: ${TABLE}.value.height ;;
    group_label: "Value"
    group_item_label: "Height"
  }

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__position {
    type: number
    sql: ${TABLE}.value.position ;;
    group_label: "Value"
    group_item_label: "Position"
  }

  dimension: value__src {
    type: string
    sql: ${TABLE}.value.src ;;
    group_label: "Value"
    group_item_label: "Src"
  }

  dimension_group: value__updated {
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
    sql: ${TABLE}.value.updated_at ;;
  }

  dimension: value__width {
    type: number
    sql: ${TABLE}.value.width ;;
    group_label: "Value"
    group_item_label: "Width"
  }
}

view: products__options {
  dimension: products__options {
    type: string
    hidden: yes
    sql: products__options ;;
  }

  dimension: value__id {
    type: number
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

  dimension: value__position {
    type: number
    sql: ${TABLE}.value.position ;;
    group_label: "Value"
    group_item_label: "Position"
  }

  dimension: value__product_id {
    type: number
    sql: ${TABLE}.value.product_id ;;
    group_label: "Value"
    group_item_label: "Product ID"
  }

  dimension: value__values {
    hidden: yes
    sql: ${TABLE}.value.values ;;
    group_label: "Value"
    group_item_label: "Values"
  }
}

view: products__variants {
  dimension: products__variants {
    type: string
    hidden: yes
    sql: products__variants ;;
  }

  dimension: value__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.value.admin_graphql_api_id ;;
    group_label: "Value"
    group_item_label: "Admin Graphql API ID"
  }

  dimension: value__barcode {
    type: string
    sql: ${TABLE}.value.barcode ;;
    group_label: "Value"
    group_item_label: "Barcode"
  }

  dimension: value__compare_at_price {
    type: number
    sql: ${TABLE}.value.compare_at_price ;;
    group_label: "Value"
    group_item_label: "Compare At Price"
  }

  dimension_group: value__created {
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
    sql: ${TABLE}.value.created_at ;;
  }

  dimension: value__fulfillment_service {
    type: string
    sql: ${TABLE}.value.fulfillment_service ;;
    group_label: "Value"
    group_item_label: "Fulfillment Service"
  }

  dimension: value__grams {
    type: number
    sql: ${TABLE}.value.grams ;;
    group_label: "Value"
    group_item_label: "Grams"
  }

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__inventory_item_id {
    type: number
    sql: ${TABLE}.value.inventory_item_id ;;
    group_label: "Value"
    group_item_label: "Inventory Item ID"
  }

  dimension: value__inventory_management {
    type: string
    sql: ${TABLE}.value.inventory_management ;;
    group_label: "Value"
    group_item_label: "Inventory Management"
  }

  dimension: value__inventory_policy {
    type: string
    sql: ${TABLE}.value.inventory_policy ;;
    group_label: "Value"
    group_item_label: "Inventory Policy"
  }

  dimension: value__inventory_quantity {
    type: number
    sql: ${TABLE}.value.inventory_quantity ;;
    group_label: "Value"
    group_item_label: "Inventory Quantity"
  }

  dimension: value__old_inventory_quantity {
    type: number
    sql: ${TABLE}.value.old_inventory_quantity ;;
    group_label: "Value"
    group_item_label: "Old Inventory Quantity"
  }

  dimension: value__option1 {
    type: string
    sql: ${TABLE}.value.option1 ;;
    group_label: "Value"
    group_item_label: "Option1"
  }

  dimension: value__position {
    type: number
    sql: ${TABLE}.value.position ;;
    group_label: "Value"
    group_item_label: "Position"
  }

  dimension: value__price {
    type: number
    sql: ${TABLE}.value.price ;;
    group_label: "Value"
    group_item_label: "Price"
  }

  dimension: value__requires_shipping {
    type: yesno
    sql: ${TABLE}.value.requires_shipping ;;
    group_label: "Value"
    group_item_label: "Requires Shipping"
  }

  dimension: value__sku {
    type: string
    sql: ${TABLE}.value.sku ;;
    group_label: "Value"
    group_item_label: "SKU"
  }

  dimension: value__taxable {
    type: yesno
    sql: ${TABLE}.value.taxable ;;
    group_label: "Value"
    group_item_label: "Taxable"
  }

  dimension: value__title {
    type: string
    sql: ${TABLE}.value.title ;;
    group_label: "Value"
    group_item_label: "Title"
  }

  dimension_group: value__updated {
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
    sql: ${TABLE}.value.updated_at ;;
  }

  dimension: value__weight {
    type: number
    sql: ${TABLE}.value.weight ;;
    group_label: "Value"
    group_item_label: "Weight"
  }

  dimension: value__weight_unit {
    type: string
    sql: ${TABLE}.value.weight_unit ;;
    group_label: "Value"
    group_item_label: "Weight Unit"
  }
}

view: products__options__value__values {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}
