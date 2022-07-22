# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: abandoned_checkouts {


  join: abandoned_checkouts__line_items {
    view_label: "Abandoned Checkouts: Line Items"
    sql: LEFT JOIN UNNEST(${abandoned_checkouts.line_items}) as abandoned_checkouts__line_items ;;
    relationship: one_to_many
  }

  join: abandoned_checkouts__shipping_lines {
    view_label: "Abandoned Checkouts: Shipping Lines"
    sql: LEFT JOIN UNNEST(${abandoned_checkouts.shipping_lines}) as abandoned_checkouts__shipping_lines ;;
    relationship: one_to_many
  }
}

view: abandoned_checkouts {
  sql_table_name: `datafy-357011.shopify.abandoned_checkouts`
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

  dimension: abandoned_checkout_url {
    type: string
    sql: ${TABLE}.abandoned_checkout_url ;;
  }

  dimension: buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accepts_marketing ;;
  }

  dimension: buyer_accepts_sms_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accepts_sms_marketing ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer__accepts_marketing {
    type: yesno
    sql: ${TABLE}.customer.accepts_marketing ;;
    group_label: "Customer"
    group_item_label: "Accepts Marketing"
  }

  dimension_group: customer__accepts_marketing_updated {
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
    sql: ${TABLE}.customer.accepts_marketing_updated_at ;;
  }

  dimension: customer__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.customer.admin_graphql_api_id ;;
    group_label: "Customer"
    group_item_label: "Admin Graphql API ID"
  }

  dimension_group: customer__created {
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
    sql: ${TABLE}.customer.created_at ;;
  }

  dimension: customer__currency {
    type: string
    sql: ${TABLE}.customer.currency ;;
    group_label: "Customer"
    group_item_label: "Currency"
  }

  dimension: customer__default_address__address1 {
    type: string
    sql: ${TABLE}.customer.default_address.address1 ;;
    group_label: "Customer Default Address"
    group_item_label: "Address1"
  }

  dimension: customer__default_address__address2 {
    type: string
    sql: ${TABLE}.customer.default_address.address2 ;;
    group_label: "Customer Default Address"
    group_item_label: "Address2"
  }

  dimension: customer__default_address__city {
    type: string
    sql: ${TABLE}.customer.default_address.city ;;
    group_label: "Customer Default Address"
    group_item_label: "City"
  }

  dimension: customer__default_address__country {
    type: string
    sql: ${TABLE}.customer.default_address.country ;;
    group_label: "Customer Default Address"
    group_item_label: "Country"
  }

  dimension: customer__default_address__country_code {
    type: string
    sql: ${TABLE}.customer.default_address.country_code ;;
    group_label: "Customer Default Address"
    group_item_label: "Country Code"
  }

  dimension: customer__default_address__country_name {
    type: string
    sql: ${TABLE}.customer.default_address.country_name ;;
    group_label: "Customer Default Address"
    group_item_label: "Country Name"
  }

  dimension: customer__default_address__customer_id {
    type: number
    sql: ${TABLE}.customer.default_address.customer_id ;;
    group_label: "Customer Default Address"
    group_item_label: "Customer ID"
  }

  dimension: customer__default_address__default {
    type: yesno
    sql: ${TABLE}.customer.default_address.`default` ;;
    group_label: "Customer Default Address"
    group_item_label: "Default"
  }

  dimension: customer__default_address__first_name {
    type: string
    sql: ${TABLE}.customer.default_address.first_name ;;
    group_label: "Customer Default Address"
    group_item_label: "First Name"
  }

  dimension: customer__default_address__id {
    type: number
    sql: ${TABLE}.customer.default_address.id ;;
    group_label: "Customer Default Address"
    group_item_label: "ID"
  }

  dimension: customer__default_address__last_name {
    type: string
    sql: ${TABLE}.customer.default_address.last_name ;;
    group_label: "Customer Default Address"
    group_item_label: "Last Name"
  }

  dimension: customer__default_address__name {
    type: string
    sql: ${TABLE}.customer.default_address.name ;;
    group_label: "Customer Default Address"
    group_item_label: "Name"
  }

  dimension: customer__default_address__province {
    type: string
    sql: ${TABLE}.customer.default_address.province ;;
    group_label: "Customer Default Address"
    group_item_label: "Province"
  }

  dimension: customer__default_address__province_code {
    type: string
    sql: ${TABLE}.customer.default_address.province_code ;;
    group_label: "Customer Default Address"
    group_item_label: "Province Code"
  }

  dimension: customer__default_address__zip {
    type: string
    sql: ${TABLE}.customer.default_address.zip ;;
    group_label: "Customer Default Address"
    group_item_label: "Zip"
  }

  dimension: customer__email {
    type: string
    sql: ${TABLE}.customer.email ;;
    group_label: "Customer"
    group_item_label: "Email"
  }

  dimension: customer__first_name {
    type: string
    sql: ${TABLE}.customer.first_name ;;
    group_label: "Customer"
    group_item_label: "First Name"
  }

  dimension: customer__id {
    type: number
    sql: ${TABLE}.customer.id ;;
    group_label: "Customer"
    group_item_label: "ID"
  }

  dimension: customer__last_name {
    type: string
    sql: ${TABLE}.customer.last_name ;;
    group_label: "Customer"
    group_item_label: "Last Name"
  }

  dimension: customer__last_order_id {
    type: number
    sql: ${TABLE}.customer.last_order_id ;;
    group_label: "Customer"
    group_item_label: "Last Order ID"
  }

  dimension: customer__last_order_name {
    type: string
    sql: ${TABLE}.customer.last_order_name ;;
    group_label: "Customer"
    group_item_label: "Last Order Name"
  }

  dimension: customer__orders_count {
    type: number
    sql: ${TABLE}.customer.orders_count ;;
    group_label: "Customer"
    group_item_label: "Orders Count"
  }

  dimension: customer__state {
    type: string
    sql: ${TABLE}.customer.state ;;
    group_label: "Customer"
    group_item_label: "State"
  }

  dimension: customer__tags {
    type: string
    sql: ${TABLE}.customer.tags ;;
    group_label: "Customer"
    group_item_label: "Tags"
  }

  dimension: customer__tax_exempt {
    type: yesno
    sql: ${TABLE}.customer.tax_exempt ;;
    group_label: "Customer"
    group_item_label: "Tax Exempt"
  }

  dimension: customer__total_spent {
    type: string
    sql: ${TABLE}.customer.total_spent ;;
    group_label: "Customer"
    group_item_label: "Total Spent"
  }

  dimension_group: customer__updated {
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
    sql: ${TABLE}.customer.updated_at ;;
  }

  dimension: customer__verified_email {
    type: yesno
    sql: ${TABLE}.customer.verified_email ;;
    group_label: "Customer"
    group_item_label: "Verified Email"
  }

  dimension: customer_locale {
    type: string
    sql: ${TABLE}.customer_locale ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: landing_site {
    type: string
    sql: ${TABLE}.landing_site ;;
  }

  dimension: line_items {
    hidden: yes
    sql: ${TABLE}.line_items ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: presentment_currency {
    type: string
    sql: ${TABLE}.presentment_currency ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }

  dimension: shipping_address__address1 {
    type: string
    sql: ${TABLE}.shipping_address.address1 ;;
    group_label: "Shipping Address"
    group_item_label: "Address1"
  }

  dimension: shipping_address__address2 {
    type: string
    sql: ${TABLE}.shipping_address.address2 ;;
    group_label: "Shipping Address"
    group_item_label: "Address2"
  }

  dimension: shipping_address__city {
    type: string
    sql: ${TABLE}.shipping_address.city ;;
    group_label: "Shipping Address"
    group_item_label: "City"
  }

  dimension: shipping_address__country {
    type: string
    sql: ${TABLE}.shipping_address.country ;;
    group_label: "Shipping Address"
    group_item_label: "Country"
  }

  dimension: shipping_address__country_code {
    type: string
    sql: ${TABLE}.shipping_address.country_code ;;
    group_label: "Shipping Address"
    group_item_label: "Country Code"
  }

  dimension: shipping_address__first_name {
    type: string
    sql: ${TABLE}.shipping_address.first_name ;;
    group_label: "Shipping Address"
    group_item_label: "First Name"
  }

  dimension: shipping_address__last_name {
    type: string
    sql: ${TABLE}.shipping_address.last_name ;;
    group_label: "Shipping Address"
    group_item_label: "Last Name"
  }

  dimension: shipping_address__latitude {
    type: number
    sql: ${TABLE}.shipping_address.latitude ;;
    group_label: "Shipping Address"
    group_item_label: "Latitude"
  }

  dimension: shipping_address__longitude {
    type: number
    sql: ${TABLE}.shipping_address.longitude ;;
    group_label: "Shipping Address"
    group_item_label: "Longitude"
  }

  dimension: shipping_address__name {
    type: string
    sql: ${TABLE}.shipping_address.name ;;
    group_label: "Shipping Address"
    group_item_label: "Name"
  }

  dimension: shipping_address__province {
    type: string
    sql: ${TABLE}.shipping_address.province ;;
    group_label: "Shipping Address"
    group_item_label: "Province"
  }

  dimension: shipping_address__province_code {
    type: string
    sql: ${TABLE}.shipping_address.province_code ;;
    group_label: "Shipping Address"
    group_item_label: "Province Code"
  }

  dimension: shipping_address__zip {
    type: string
    sql: ${TABLE}.shipping_address.zip ;;
    group_label: "Shipping Address"
    group_item_label: "Zip"
  }

  dimension: shipping_lines {
    hidden: yes
    sql: ${TABLE}.shipping_lines ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
  }

  dimension: taxes_included {
    type: yesno
    sql: ${TABLE}.taxes_included ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}.total_line_items_price ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.total_weight ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      source_name,
      _sdc_shop_name,
      name,
      customer__last_name,
      customer__first_name,
      shipping_address__name,
      customer__last_order_name,
      shipping_address__last_name,
      shipping_address__first_name,
      customer__default_address__name,
      customer__default_address__last_name,
      customer__default_address__first_name,
      customer__default_address__country_name
    ]
  }
}

view: abandoned_checkouts__line_items {
  dimension: abandoned_checkouts__line_items {
    type: string
    hidden: yes
    sql: abandoned_checkouts__line_items ;;
  }

  dimension: value__compare_at_price {
    type: string
    sql: ${TABLE}.value.compare_at_price ;;
    group_label: "Value"
    group_item_label: "Compare At Price"
  }

  dimension: value__fulfillment_service {
    type: string
    sql: ${TABLE}.value.fulfillment_service ;;
    group_label: "Value"
    group_item_label: "Fulfillment Service"
  }

  dimension: value__gift_card {
    type: yesno
    sql: ${TABLE}.value.gift_card ;;
    group_label: "Value"
    group_item_label: "Gift Card"
  }

  dimension: value__grams {
    type: number
    sql: ${TABLE}.value.grams ;;
    group_label: "Value"
    group_item_label: "Grams"
  }

  dimension: value__key {
    type: string
    sql: ${TABLE}.value.key ;;
    group_label: "Value"
    group_item_label: "Key"
  }

  dimension: value__line_price {
    type: string
    sql: ${TABLE}.value.line_price ;;
    group_label: "Value"
    group_item_label: "Line Price"
  }

  dimension: value__origin_location_id {
    type: number
    sql: ${TABLE}.value.origin_location_id ;;
    group_label: "Value"
    group_item_label: "Origin Location ID"
  }

  dimension: value__presentment_title {
    type: string
    sql: ${TABLE}.value.presentment_title ;;
    group_label: "Value"
    group_item_label: "Presentment Title"
  }

  dimension: value__presentment_variant_title {
    type: string
    sql: ${TABLE}.value.presentment_variant_title ;;
    group_label: "Value"
    group_item_label: "Presentment Variant Title"
  }

  dimension: value__price {
    type: number
    sql: ${TABLE}.value.price ;;
    group_label: "Value"
    group_item_label: "Price"
  }

  dimension: value__product_id {
    type: number
    sql: ${TABLE}.value.product_id ;;
    group_label: "Value"
    group_item_label: "Product ID"
  }

  dimension: value__quantity {
    type: number
    sql: ${TABLE}.value.quantity ;;
    group_label: "Value"
    group_item_label: "Quantity"
  }

  dimension: value__rank {
    type: number
    sql: ${TABLE}.value.rank ;;
    group_label: "Value"
    group_item_label: "Rank"
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

  dimension: value__variant_id {
    type: number
    sql: ${TABLE}.value.variant_id ;;
    group_label: "Value"
    group_item_label: "Variant ID"
  }

  dimension: value__variant_price {
    type: string
    sql: ${TABLE}.value.variant_price ;;
    group_label: "Value"
    group_item_label: "Variant Price"
  }

  dimension: value__variant_title {
    type: string
    sql: ${TABLE}.value.variant_title ;;
    group_label: "Value"
    group_item_label: "Variant Title"
  }

  dimension: value__vendor {
    type: string
    sql: ${TABLE}.value.vendor ;;
    group_label: "Value"
    group_item_label: "Vendor"
  }
}

view: abandoned_checkouts__shipping_lines {
  dimension: abandoned_checkouts__shipping_lines {
    type: string
    hidden: yes
    sql: abandoned_checkouts__shipping_lines ;;
  }

  dimension: value__code {
    type: string
    sql: ${TABLE}.value.code ;;
    group_label: "Value"
    group_item_label: "Code"
  }

  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__markup {
    type: string
    sql: ${TABLE}.value.markup ;;
    group_label: "Value"
    group_item_label: "Markup"
  }

  dimension: value__price {
    type: number
    sql: ${TABLE}.value.price ;;
    group_label: "Value"
    group_item_label: "Price"
  }

  dimension: value__source {
    type: string
    sql: ${TABLE}.value.source ;;
    group_label: "Value"
    group_item_label: "Source"
  }

  dimension: value__title {
    type: string
    sql: ${TABLE}.value.title ;;
    group_label: "Value"
    group_item_label: "Title"
  }
}
