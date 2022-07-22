# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: order_refunds {


  join: order_refunds__transactions {
    view_label: "Order Refunds: Transactions"
    sql: LEFT JOIN UNNEST(${order_refunds.transactions}) as order_refunds__transactions ;;
    relationship: one_to_many
  }

  join: order_refunds__order_adjustments {
    view_label: "Order Refunds: Order Adjustments"
    sql: LEFT JOIN UNNEST(${order_refunds.order_adjustments}) as order_refunds__order_adjustments ;;
    relationship: one_to_many
  }

  join: order_refunds__refund_line_items {
    view_label: "Order Refunds: Refund Line Items"
    sql: LEFT JOIN UNNEST(${order_refunds.refund_line_items}) as order_refunds__refund_line_items ;;
    relationship: one_to_many
  }

  join: order_refunds__refund_line_items__value__line_item__discount_allocations {
    view_label: "Order Refunds: Refund Line Items Value Line Item Discount Allocations"
    sql: LEFT JOIN UNNEST(${order_refunds__refund_line_items.value__line_item__discount_allocations}) as order_refunds__refund_line_items__value__line_item__discount_allocations ;;
    relationship: one_to_many
  }
}

view: order_refunds {
  sql_table_name: `datafy-357011.shopify.order_refunds`
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

  dimension: order_adjustments {
    hidden: yes
    sql: ${TABLE}.order_adjustments ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: processed_at {
    type: string
    sql: ${TABLE}.processed_at ;;
  }

  dimension: refund_line_items {
    hidden: yes
    sql: ${TABLE}.refund_line_items ;;
  }

  dimension: restock {
    type: yesno
    sql: ${TABLE}.restock ;;
  }

  dimension: transactions {
    hidden: yes
    sql: ${TABLE}.transactions ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      _sdc_shop_name,
      orders._sdc_shop_name,
      orders.name,
      orders.source_name,
      orders.customer__last_name,
      orders.customer__first_name,
      orders.billing_address__name,
      orders.shipping_address__name,
      orders.customer__last_order_id,
      orders.customer__last_order_name,
      orders.billing_address__last_name,
      orders.billing_address__first_name,
      orders.shipping_address__last_name,
      orders.shipping_address__first_name,
      orders.customer__default_address__name,
      orders.customer__default_address__last_name,
      orders.customer__default_address__first_name,
      orders.customer__default_address__country_name
    ]
  }
}

view: order_refunds__transactions {
  dimension: order_refunds__transactions {
    type: string
    hidden: yes
    sql: order_refunds__transactions ;;
  }

  dimension: value__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.value.admin_graphql_api_id ;;
    group_label: "Value"
    group_item_label: "Admin Graphql API ID"
  }

  dimension: value__amount {
    type: number
    sql: ${TABLE}.value.amount ;;
    group_label: "Value"
    group_item_label: "Amount"
  }

  dimension: value__created_at {
    type: string
    sql: ${TABLE}.value.created_at ;;
    group_label: "Value"
    group_item_label: "Created At"
  }

  dimension: value__currency {
    type: string
    sql: ${TABLE}.value.currency ;;
    group_label: "Value"
    group_item_label: "Currency"
  }

  dimension: value__gateway {
    type: string
    sql: ${TABLE}.value.gateway ;;
    group_label: "Value"
    group_item_label: "Gateway"
  }

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__kind {
    type: string
    sql: ${TABLE}.value.kind ;;
    group_label: "Value"
    group_item_label: "Kind"
  }

  dimension: value__message {
    type: string
    sql: ${TABLE}.value.message ;;
    group_label: "Value"
    group_item_label: "Message"
  }

  dimension: value__parent_id {
    type: number
    sql: ${TABLE}.value.parent_id ;;
    group_label: "Value"
    group_item_label: "Parent ID"
  }

  dimension: value__processed_at {
    type: string
    sql: ${TABLE}.value.processed_at ;;
    group_label: "Value"
    group_item_label: "Processed At"
  }

  dimension: value__source_name {
    type: string
    sql: ${TABLE}.value.source_name ;;
    group_label: "Value"
    group_item_label: "Source Name"
  }

  dimension: value__status {
    type: string
    sql: ${TABLE}.value.status ;;
    group_label: "Value"
    group_item_label: "Status"
  }

  dimension: value__test {
    type: yesno
    sql: ${TABLE}.value.test ;;
    group_label: "Value"
    group_item_label: "Test"
  }
}

view: order_refunds__order_adjustments {
  dimension: order_refunds__order_adjustments {
    type: string
    hidden: yes
    sql: order_refunds__order_adjustments ;;
  }

  dimension: value__amount {
    type: number
    sql: ${TABLE}.value.amount ;;
    group_label: "Value"
    group_item_label: "Amount"
  }

  dimension: value__amount_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.amount_set.presentment_money.amount ;;
    group_label: "Value Amount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__amount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.amount_set.presentment_money.currency_code ;;
    group_label: "Value Amount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__amount_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.amount_set.shop_money.amount ;;
    group_label: "Value Amount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__amount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.amount_set.shop_money.currency_code ;;
    group_label: "Value Amount Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__kind {
    type: string
    sql: ${TABLE}.value.kind ;;
    group_label: "Value"
    group_item_label: "Kind"
  }

  dimension: value__reason {
    type: string
    sql: ${TABLE}.value.reason ;;
    group_label: "Value"
    group_item_label: "Reason"
  }

  dimension: value__refund_id {
    type: number
    sql: ${TABLE}.value.refund_id ;;
    group_label: "Value"
    group_item_label: "Refund ID"
  }

  dimension: value__tax_amount {
    type: number
    sql: ${TABLE}.value.tax_amount ;;
    group_label: "Value"
    group_item_label: "Tax Amount"
  }

  dimension: value__tax_amount_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.tax_amount_set.presentment_money.amount ;;
    group_label: "Value Tax Amount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__tax_amount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.tax_amount_set.presentment_money.currency_code ;;
    group_label: "Value Tax Amount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__tax_amount_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.tax_amount_set.shop_money.amount ;;
    group_label: "Value Tax Amount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__tax_amount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.tax_amount_set.shop_money.currency_code ;;
    group_label: "Value Tax Amount Set Shop Money"
    group_item_label: "Currency Code"
  }
}

view: order_refunds__refund_line_items {
  dimension: order_refunds__refund_line_items {
    type: string
    hidden: yes
    sql: order_refunds__refund_line_items ;;
  }

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__line_item__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.value.line_item.admin_graphql_api_id ;;
    group_label: "Value Line Item"
    group_item_label: "Admin Graphql API ID"
  }

  dimension: value__line_item__discount_allocations {
    hidden: yes
    sql: ${TABLE}.value.line_item.discount_allocations ;;
    group_label: "Value Line Item"
    group_item_label: "Discount Allocations"
  }

  dimension: value__line_item__fulfillable_quantity {
    type: number
    sql: ${TABLE}.value.line_item.fulfillable_quantity ;;
    group_label: "Value Line Item"
    group_item_label: "Fulfillable Quantity"
  }

  dimension: value__line_item__fulfillment_service {
    type: string
    sql: ${TABLE}.value.line_item.fulfillment_service ;;
    group_label: "Value Line Item"
    group_item_label: "Fulfillment Service"
  }

  dimension: value__line_item__fulfillment_status {
    type: string
    sql: ${TABLE}.value.line_item.fulfillment_status ;;
    group_label: "Value Line Item"
    group_item_label: "Fulfillment Status"
  }

  dimension: value__line_item__gift_card {
    type: yesno
    sql: ${TABLE}.value.line_item.gift_card ;;
    group_label: "Value Line Item"
    group_item_label: "Gift Card"
  }

  dimension: value__line_item__grams {
    type: number
    sql: ${TABLE}.value.line_item.grams ;;
    group_label: "Value Line Item"
    group_item_label: "Grams"
  }

  dimension: value__line_item__id {
    type: number
    sql: ${TABLE}.value.line_item.id ;;
    group_label: "Value Line Item"
    group_item_label: "ID"
  }

  dimension: value__line_item__name {
    type: string
    sql: ${TABLE}.value.line_item.name ;;
    group_label: "Value Line Item"
    group_item_label: "Name"
  }

  dimension: value__line_item__origin_location__address1 {
    type: string
    sql: ${TABLE}.value.line_item.origin_location.address1 ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "Address1"
  }

  dimension: value__line_item__origin_location__address2 {
    type: string
    sql: ${TABLE}.value.line_item.origin_location.address2 ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "Address2"
  }

  dimension: value__line_item__origin_location__city {
    type: string
    sql: ${TABLE}.value.line_item.origin_location.city ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "City"
  }

  dimension: value__line_item__origin_location__country_code {
    type: string
    sql: ${TABLE}.value.line_item.origin_location.country_code ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "Country Code"
  }

  dimension: value__line_item__origin_location__id {
    type: number
    sql: ${TABLE}.value.line_item.origin_location.id ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "ID"
  }

  dimension: value__line_item__origin_location__name {
    type: string
    sql: ${TABLE}.value.line_item.origin_location.name ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "Name"
  }

  dimension: value__line_item__origin_location__province_code {
    type: string
    sql: ${TABLE}.value.line_item.origin_location.province_code ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "Province Code"
  }

  dimension: value__line_item__origin_location__zip {
    type: string
    sql: ${TABLE}.value.line_item.origin_location.zip ;;
    group_label: "Value Line Item Origin Location"
    group_item_label: "Zip"
  }

  dimension: value__line_item__price {
    type: string
    sql: ${TABLE}.value.line_item.price ;;
    group_label: "Value Line Item"
    group_item_label: "Price"
  }

  dimension: value__line_item__price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.line_item.price_set.presentment_money.amount ;;
    group_label: "Value Line Item Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__line_item__price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.line_item.price_set.presentment_money.currency_code ;;
    group_label: "Value Line Item Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__line_item__price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.line_item.price_set.shop_money.amount ;;
    group_label: "Value Line Item Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__line_item__price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.line_item.price_set.shop_money.currency_code ;;
    group_label: "Value Line Item Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__line_item__product_exists {
    type: yesno
    sql: ${TABLE}.value.line_item.product_exists ;;
    group_label: "Value Line Item"
    group_item_label: "Product Exists"
  }

  dimension: value__line_item__product_id {
    type: number
    sql: ${TABLE}.value.line_item.product_id ;;
    group_label: "Value Line Item"
    group_item_label: "Product ID"
  }

  dimension: value__line_item__quantity {
    type: number
    sql: ${TABLE}.value.line_item.quantity ;;
    group_label: "Value Line Item"
    group_item_label: "Quantity"
  }

  dimension: value__line_item__requires_shipping {
    type: yesno
    sql: ${TABLE}.value.line_item.requires_shipping ;;
    group_label: "Value Line Item"
    group_item_label: "Requires Shipping"
  }

  dimension: value__line_item__sku {
    type: string
    sql: ${TABLE}.value.line_item.sku ;;
    group_label: "Value Line Item"
    group_item_label: "SKU"
  }

  dimension: value__line_item__taxable {
    type: yesno
    sql: ${TABLE}.value.line_item.taxable ;;
    group_label: "Value Line Item"
    group_item_label: "Taxable"
  }

  dimension: value__line_item__title {
    type: string
    sql: ${TABLE}.value.line_item.title ;;
    group_label: "Value Line Item"
    group_item_label: "Title"
  }

  dimension: value__line_item__total_discount {
    type: string
    sql: ${TABLE}.value.line_item.total_discount ;;
    group_label: "Value Line Item"
    group_item_label: "Total Discount"
  }

  dimension: value__line_item__total_discount_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.line_item.total_discount_set.presentment_money.amount ;;
    group_label: "Value Line Item Total Discount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__line_item__total_discount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.line_item.total_discount_set.presentment_money.currency_code ;;
    group_label: "Value Line Item Total Discount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__line_item__total_discount_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.line_item.total_discount_set.shop_money.amount ;;
    group_label: "Value Line Item Total Discount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__line_item__total_discount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.line_item.total_discount_set.shop_money.currency_code ;;
    group_label: "Value Line Item Total Discount Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__line_item__variant_id {
    type: number
    sql: ${TABLE}.value.line_item.variant_id ;;
    group_label: "Value Line Item"
    group_item_label: "Variant ID"
  }

  dimension: value__line_item__variant_inventory_management {
    type: string
    sql: ${TABLE}.value.line_item.variant_inventory_management ;;
    group_label: "Value Line Item"
    group_item_label: "Variant Inventory Management"
  }

  dimension: value__line_item__variant_title {
    type: string
    sql: ${TABLE}.value.line_item.variant_title ;;
    group_label: "Value Line Item"
    group_item_label: "Variant Title"
  }

  dimension: value__line_item__vendor {
    type: string
    sql: ${TABLE}.value.line_item.vendor ;;
    group_label: "Value Line Item"
    group_item_label: "Vendor"
  }

  dimension: value__line_item_id {
    type: number
    sql: ${TABLE}.value.line_item_id ;;
    group_label: "Value"
    group_item_label: "Line Item ID"
  }

  dimension: value__location_id {
    type: number
    sql: ${TABLE}.value.location_id ;;
    group_label: "Value"
    group_item_label: "Location ID"
  }

  dimension: value__quantity {
    type: number
    sql: ${TABLE}.value.quantity ;;
    group_label: "Value"
    group_item_label: "Quantity"
  }

  dimension: value__restock_type {
    type: string
    sql: ${TABLE}.value.restock_type ;;
    group_label: "Value"
    group_item_label: "Restock Type"
  }

  dimension: value__subtotal {
    type: number
    sql: ${TABLE}.value.subtotal ;;
    group_label: "Value"
    group_item_label: "Subtotal"
  }

  dimension: value__subtotal_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.subtotal_set.presentment_money.amount ;;
    group_label: "Value Subtotal Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__subtotal_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.subtotal_set.presentment_money.currency_code ;;
    group_label: "Value Subtotal Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__subtotal_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.subtotal_set.shop_money.amount ;;
    group_label: "Value Subtotal Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__subtotal_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.subtotal_set.shop_money.currency_code ;;
    group_label: "Value Subtotal Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__total_tax {
    type: number
    sql: ${TABLE}.value.total_tax ;;
    group_label: "Value"
    group_item_label: "Total Tax"
  }

  dimension: value__total_tax_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.total_tax_set.presentment_money.amount ;;
    group_label: "Value Total Tax Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__total_tax_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.total_tax_set.presentment_money.currency_code ;;
    group_label: "Value Total Tax Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__total_tax_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.total_tax_set.shop_money.amount ;;
    group_label: "Value Total Tax Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__total_tax_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.total_tax_set.shop_money.currency_code ;;
    group_label: "Value Total Tax Set Shop Money"
    group_item_label: "Currency Code"
  }
}

view: order_refunds__refund_line_items__value__line_item__discount_allocations {
  dimension: value__amount {
    type: string
    sql: ${TABLE}.value.amount ;;
    group_label: "Value"
    group_item_label: "Amount"
  }

  dimension: value__amount_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.amount_set.presentment_money.amount ;;
    group_label: "Value Amount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__amount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.amount_set.presentment_money.currency_code ;;
    group_label: "Value Amount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__amount_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.amount_set.shop_money.amount ;;
    group_label: "Value Amount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__amount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.amount_set.shop_money.currency_code ;;
    group_label: "Value Amount Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__discount_application_index {
    type: number
    sql: ${TABLE}.value.discount_application_index ;;
    group_label: "Value"
    group_item_label: "Discount Application Index"
  }
}
