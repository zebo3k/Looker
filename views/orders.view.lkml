# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: orders {


  join: orders__refunds {
    view_label: "Orders: Refunds"
    sql: LEFT JOIN UNNEST(${orders.refunds}) as orders__refunds ;;
    relationship: one_to_many
  }

  join: orders__line_items {
    view_label: "Orders: Line Items"
    sql: LEFT JOIN UNNEST(${orders.line_items}) as orders__line_items ;;
    relationship: one_to_many
  }

  join: orders__fulfillments {
    view_label: "Orders: Fulfillments"
    sql: LEFT JOIN UNNEST(${orders.fulfillments}) as orders__fulfillments ;;
    relationship: one_to_many
  }

  join: orders__shipping_lines {
    view_label: "Orders: Shipping Lines"
    sql: LEFT JOIN UNNEST(${orders.shipping_lines}) as orders__shipping_lines ;;
    relationship: one_to_many
  }

  join: orders__discount_codes {
    view_label: "Orders: Discount Codes"
    sql: LEFT JOIN UNNEST(${orders.discount_codes}) as orders__discount_codes ;;
    relationship: one_to_many
  }

  join: orders__payment_gateway_names {
    view_label: "Orders: Payment Gateway Names"
    sql: LEFT JOIN UNNEST(${orders.payment_gateway_names}) as orders__payment_gateway_names ;;
    relationship: one_to_many
  }

  join: orders__discount_applications {
    view_label: "Orders: Discount Applications"
    sql: LEFT JOIN UNNEST(${orders.discount_applications}) as orders__discount_applications ;;
    relationship: one_to_many
  }

  join: orders__fulfillments__value__line_items {
    view_label: "Orders: Fulfillments Value Line Items"
    sql: LEFT JOIN UNNEST(${orders__fulfillments.value__line_items}) as orders__fulfillments__value__line_items ;;
    relationship: one_to_many
  }

  join: orders__refunds__value__refund_line_items {
    view_label: "Orders: Refunds Value Refund Line Items"
    sql: LEFT JOIN UNNEST(${orders__refunds.value__refund_line_items}) as orders__refunds__value__refund_line_items ;;
    relationship: one_to_many
  }

  join: orders__refunds__value__order_adjustments {
    view_label: "Orders: Refunds Value Order Adjustments"
    sql: LEFT JOIN UNNEST(${orders__refunds.value__order_adjustments}) as orders__refunds__value__order_adjustments ;;
    relationship: one_to_many
  }

  join: orders__line_items__value__discount_allocations {
    view_label: "Orders: Line Items Value Discount Allocations"
    sql: LEFT JOIN UNNEST(${orders__line_items.value__discount_allocations}) as orders__line_items__value__discount_allocations ;;
    relationship: one_to_many
  }

  join: orders__fulfillments__value__line_items__value__discount_allocations {
    view_label: "Orders: Fulfillments Value Line Items Value Discount Allocations"
    sql: LEFT JOIN UNNEST(${orders__fulfillments__value__line_items.value__discount_allocations}) as orders__fulfillments__value__line_items__value__discount_allocations ;;
    relationship: one_to_many
  }

  join: orders__refunds__value__refund_line_items__value__line_item__discount_allocations {
    view_label: "Orders: Refunds Value Refund Line Items Value Line Item Discount Allocations"
    sql: LEFT JOIN UNNEST(${orders__refunds__value__refund_line_items.value__line_item__discount_allocations}) as orders__refunds__value__refund_line_items__value__line_item__discount_allocations ;;
    relationship: one_to_many
  }
}

view: orders {
  sql_table_name: `datafy-357011.shopify.orders`
    ;;
  drill_fields: [customer__last_order_id]

  dimension: customer__last_order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer.last_order_id ;;
    group_label: "Customer"
    group_item_label: "Last Order ID"
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

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }

  dimension: billing_address__address1 {
    type: string
    sql: ${TABLE}.billing_address.address1 ;;
    group_label: "Billing Address"
    group_item_label: "Address1"
  }

  dimension: billing_address__address2 {
    type: string
    sql: ${TABLE}.billing_address.address2 ;;
    group_label: "Billing Address"
    group_item_label: "Address2"
  }

  dimension: billing_address__city {
    type: string
    sql: ${TABLE}.billing_address.city ;;
    group_label: "Billing Address"
    group_item_label: "City"
  }

  dimension: billing_address__company {
    type: string
    sql: ${TABLE}.billing_address.company ;;
    group_label: "Billing Address"
    group_item_label: "Company"
  }

  dimension: billing_address__country {
    type: string
    sql: ${TABLE}.billing_address.country ;;
    group_label: "Billing Address"
    group_item_label: "Country"
  }

  dimension: billing_address__country_code {
    type: string
    sql: ${TABLE}.billing_address.country_code ;;
    group_label: "Billing Address"
    group_item_label: "Country Code"
  }

  dimension: billing_address__first_name {
    type: string
    sql: ${TABLE}.billing_address.first_name ;;
    group_label: "Billing Address"
    group_item_label: "First Name"
  }

  dimension: billing_address__last_name {
    type: string
    sql: ${TABLE}.billing_address.last_name ;;
    group_label: "Billing Address"
    group_item_label: "Last Name"
  }

  dimension: billing_address__latitude {
    type: number
    sql: ${TABLE}.billing_address.latitude ;;
    group_label: "Billing Address"
    group_item_label: "Latitude"
  }

  dimension: billing_address__longitude {
    type: number
    sql: ${TABLE}.billing_address.longitude ;;
    group_label: "Billing Address"
    group_item_label: "Longitude"
  }

  dimension: billing_address__name {
    type: string
    sql: ${TABLE}.billing_address.name ;;
    group_label: "Billing Address"
    group_item_label: "Name"
  }

  dimension: billing_address__phone {
    type: string
    sql: ${TABLE}.billing_address.phone ;;
    group_label: "Billing Address"
    group_item_label: "Phone"
  }

  dimension: billing_address__province {
    type: string
    sql: ${TABLE}.billing_address.province ;;
    group_label: "Billing Address"
    group_item_label: "Province"
  }

  dimension: billing_address__province_code {
    type: string
    sql: ${TABLE}.billing_address.province_code ;;
    group_label: "Billing Address"
    group_item_label: "Province Code"
  }

  dimension: billing_address__zip {
    type: string
    sql: ${TABLE}.billing_address.zip ;;
    group_label: "Billing Address"
    group_item_label: "Zip"
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}.browser_ip ;;
  }

  dimension: buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accepts_marketing ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
  }

  dimension: checkout_id {
    type: number
    sql: ${TABLE}.checkout_id ;;
  }

  dimension: checkout_token {
    type: string
    sql: ${TABLE}.checkout_token ;;
  }

  dimension: client_details__accept_language {
    type: string
    sql: ${TABLE}.client_details.accept_language ;;
    group_label: "Client Details"
    group_item_label: "Accept Language"
  }

  dimension: client_details__browser_height {
    type: number
    sql: ${TABLE}.client_details.browser_height ;;
    group_label: "Client Details"
    group_item_label: "Browser Height"
  }

  dimension: client_details__browser_ip {
    type: string
    sql: ${TABLE}.client_details.browser_ip ;;
    group_label: "Client Details"
    group_item_label: "Browser IP"
  }

  dimension: client_details__browser_width {
    type: number
    sql: ${TABLE}.client_details.browser_width ;;
    group_label: "Client Details"
    group_item_label: "Browser Width"
  }

  dimension: client_details__user_agent {
    type: string
    sql: ${TABLE}.client_details.user_agent ;;
    group_label: "Client Details"
    group_item_label: "User Agent"
  }

  dimension_group: closed {
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
    sql: ${TABLE}.closed_at ;;
  }

  dimension: confirmed {
    type: yesno
    sql: ${TABLE}.confirmed ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.contact_email ;;
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

  dimension: current_subtotal_price {
    type: number
    sql: ${TABLE}.current_subtotal_price ;;
  }

  dimension: current_subtotal_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.current_subtotal_price_set.presentment_money.amount ;;
    group_label: "Current Subtotal Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_subtotal_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_subtotal_price_set.presentment_money.currency_code ;;
    group_label: "Current Subtotal Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_subtotal_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.current_subtotal_price_set.shop_money.amount ;;
    group_label: "Current Subtotal Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_subtotal_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_subtotal_price_set.shop_money.currency_code ;;
    group_label: "Current Subtotal Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_discounts {
    type: number
    sql: ${TABLE}.current_total_discounts ;;
  }

  dimension: current_total_discounts_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.current_total_discounts_set.presentment_money.amount ;;
    group_label: "Current Total Discounts Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_total_discounts_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_discounts_set.presentment_money.currency_code ;;
    group_label: "Current Total Discounts Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_discounts_set__shop_money__amount {
    type: string
    sql: ${TABLE}.current_total_discounts_set.shop_money.amount ;;
    group_label: "Current Total Discounts Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_total_discounts_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_discounts_set.shop_money.currency_code ;;
    group_label: "Current Total Discounts Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_price {
    type: number
    sql: ${TABLE}.current_total_price ;;
  }

  dimension: current_total_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.current_total_price_set.presentment_money.amount ;;
    group_label: "Current Total Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_total_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_price_set.presentment_money.currency_code ;;
    group_label: "Current Total Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.current_total_price_set.shop_money.amount ;;
    group_label: "Current Total Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_total_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_price_set.shop_money.currency_code ;;
    group_label: "Current Total Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_tax {
    type: number
    sql: ${TABLE}.current_total_tax ;;
  }

  dimension: current_total_tax_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.current_total_tax_set.presentment_money.amount ;;
    group_label: "Current Total Tax Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: current_total_tax_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_tax_set.presentment_money.currency_code ;;
    group_label: "Current Total Tax Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: current_total_tax_set__shop_money__amount {
    type: string
    sql: ${TABLE}.current_total_tax_set.shop_money.amount ;;
    group_label: "Current Total Tax Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: current_total_tax_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.current_total_tax_set.shop_money.currency_code ;;
    group_label: "Current Total Tax Set Shop Money"
    group_item_label: "Currency Code"
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

  dimension: customer__default_address__company {
    type: string
    sql: ${TABLE}.customer.default_address.company ;;
    group_label: "Customer Default Address"
    group_item_label: "Company"
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

  dimension: customer__default_address__phone {
    type: string
    sql: ${TABLE}.customer.default_address.phone ;;
    group_label: "Customer Default Address"
    group_item_label: "Phone"
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

  dimension: customer__phone {
    type: string
    sql: ${TABLE}.customer.phone ;;
    group_label: "Customer"
    group_item_label: "Phone"
  }

  dimension: customer__sms_marketing_consent__consent_collected_from {
    type: string
    sql: ${TABLE}.customer.sms_marketing_consent.consent_collected_from ;;
    group_label: "Customer Sms Marketing Consent"
    group_item_label: "Consent Collected From"
  }

  dimension: customer__sms_marketing_consent__opt_in_level {
    type: string
    sql: ${TABLE}.customer.sms_marketing_consent.opt_in_level ;;
    group_label: "Customer Sms Marketing Consent"
    group_item_label: "Opt In Level"
  }

  dimension: customer__sms_marketing_consent__state {
    type: string
    sql: ${TABLE}.customer.sms_marketing_consent.state ;;
    group_label: "Customer Sms Marketing Consent"
    group_item_label: "State"
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

  dimension: discount_applications {
    hidden: yes
    sql: ${TABLE}.discount_applications ;;
  }

  dimension: discount_codes {
    hidden: yes
    sql: ${TABLE}.discount_codes ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estimated_taxes {
    type: yesno
    sql: ${TABLE}.estimated_taxes ;;
  }

  dimension: financial_status {
    type: string
    sql: ${TABLE}.financial_status ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  dimension: fulfillments {
    hidden: yes
    sql: ${TABLE}.fulfillments ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: landing_site {
    type: string
    sql: ${TABLE}.landing_site ;;
  }

  dimension: line_items {
    hidden: yes
    sql: ${TABLE}.line_items ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension: order_status_url {
    type: string
    sql: ${TABLE}.order_status_url ;;
  }

  dimension: payment_details__avs_result_code {
    type: string
    sql: ${TABLE}.payment_details.avs_result_code ;;
    group_label: "Payment Details"
    group_item_label: "Avs Result Code"
  }

  dimension: payment_details__credit_card_bin {
    type: string
    sql: ${TABLE}.payment_details.credit_card_bin ;;
    group_label: "Payment Details"
    group_item_label: "Credit Card Bin"
  }

  dimension: payment_details__credit_card_company {
    type: string
    sql: ${TABLE}.payment_details.credit_card_company ;;
    group_label: "Payment Details"
    group_item_label: "Credit Card Company"
  }

  dimension: payment_details__credit_card_number {
    type: string
    sql: ${TABLE}.payment_details.credit_card_number ;;
    group_label: "Payment Details"
    group_item_label: "Credit Card Number"
  }

  dimension: payment_details__cvv_result_code {
    type: string
    sql: ${TABLE}.payment_details.cvv_result_code ;;
    group_label: "Payment Details"
    group_item_label: "Cvv Result Code"
  }

  dimension: payment_gateway_names {
    hidden: yes
    sql: ${TABLE}.payment_gateway_names ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: presentment_currency {
    type: string
    sql: ${TABLE}.presentment_currency ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}.processed_at ;;
  }

  dimension: processing_method {
    type: string
    sql: ${TABLE}.processing_method ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }

  dimension: refunds {
    hidden: yes
    sql: ${TABLE}.refunds ;;
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

  dimension: shipping_address__company {
    type: string
    sql: ${TABLE}.shipping_address.company ;;
    group_label: "Shipping Address"
    group_item_label: "Company"
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

  dimension: shipping_address__phone {
    type: string
    sql: ${TABLE}.shipping_address.phone ;;
    group_label: "Shipping Address"
    group_item_label: "Phone"
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

  dimension: subtotal_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.subtotal_price_set.presentment_money.amount ;;
    group_label: "Subtotal Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: subtotal_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.subtotal_price_set.presentment_money.currency_code ;;
    group_label: "Subtotal Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: subtotal_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.subtotal_price_set.shop_money.amount ;;
    group_label: "Subtotal Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: subtotal_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.subtotal_price_set.shop_money.currency_code ;;
    group_label: "Subtotal Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: taxes_included {
    type: yesno
    sql: ${TABLE}.taxes_included ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_discounts_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.total_discounts_set.presentment_money.amount ;;
    group_label: "Total Discounts Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_discounts_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_discounts_set.presentment_money.currency_code ;;
    group_label: "Total Discounts Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_discounts_set__shop_money__amount {
    type: string
    sql: ${TABLE}.total_discounts_set.shop_money.amount ;;
    group_label: "Total Discounts Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_discounts_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_discounts_set.shop_money.currency_code ;;
    group_label: "Total Discounts Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}.total_line_items_price ;;
  }

  dimension: total_line_items_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.total_line_items_price_set.presentment_money.amount ;;
    group_label: "Total Line Items Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_line_items_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_line_items_price_set.presentment_money.currency_code ;;
    group_label: "Total Line Items Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_line_items_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.total_line_items_price_set.shop_money.amount ;;
    group_label: "Total Line Items Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_line_items_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_line_items_price_set.shop_money.currency_code ;;
    group_label: "Total Line Items Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_outstanding {
    type: number
    sql: ${TABLE}.total_outstanding ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: total_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.total_price_set.presentment_money.amount ;;
    group_label: "Total Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_price_set.presentment_money.currency_code ;;
    group_label: "Total Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.total_price_set.shop_money.amount ;;
    group_label: "Total Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_price_set.shop_money.currency_code ;;
    group_label: "Total Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_price_usd {
    type: number
    sql: ${TABLE}.total_price_usd ;;
  }

  dimension: total_shipping_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.total_shipping_price_set.presentment_money.amount ;;
    group_label: "Total Shipping Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_shipping_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_shipping_price_set.presentment_money.currency_code ;;
    group_label: "Total Shipping Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_shipping_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.total_shipping_price_set.shop_money.amount ;;
    group_label: "Total Shipping Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_shipping_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_shipping_price_set.shop_money.currency_code ;;
    group_label: "Total Shipping Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_tax_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.total_tax_set.presentment_money.amount ;;
    group_label: "Total Tax Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: total_tax_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.total_tax_set.presentment_money.currency_code ;;
    group_label: "Total Tax Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: total_tax_set__shop_money__amount {
    type: string
    sql: ${TABLE}.total_tax_set.shop_money.amount ;;
    group_label: "Total Tax Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: total_tax_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.total_tax_set.shop_money.currency_code ;;
    group_label: "Total Tax Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: total_tip_received {
    type: string
    sql: ${TABLE}.total_tip_received ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sum_order {
    type: sum
    sql: ${total_price} ;;
    value_format_name: usd
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer__last_order_id,
      _sdc_shop_name,
      name,
      source_name,
      customer__last_name,
      customer__first_name,
      billing_address__name,
      shipping_address__name,
      customer__last_order_name,
      billing_address__last_name,
      billing_address__first_name,
      shipping_address__last_name,
      shipping_address__first_name,
      customer__default_address__name,
      customer__default_address__last_name,
      customer__default_address__first_name,
      customer__default_address__country_name,
      locations.localized_province_name,
      locations.country_name,
      locations.id,
      locations.localized_country_name,
      locations._sdc_shop_name,
      locations.name,
      order_refunds.count,
      transactions.count
    ]
  }
}

view: orders__refunds {
  dimension: orders__refunds {
    type: string
    hidden: yes
    sql: orders__refunds ;;
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

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__order_adjustments {
    hidden: yes
    sql: ${TABLE}.value.order_adjustments ;;
    group_label: "Value"
    group_item_label: "Order Adjustments"
  }

  dimension_group: value__processed {
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
    sql: ${TABLE}.value.processed_at ;;
  }

  dimension: value__refund_line_items {
    hidden: yes
    sql: ${TABLE}.value.refund_line_items ;;
    group_label: "Value"
    group_item_label: "Refund Line Items"
  }

  dimension: value__restock {
    type: yesno
    sql: ${TABLE}.value.restock ;;
    group_label: "Value"
    group_item_label: "Restock"
  }

  dimension: value__user_id {
    type: number
    sql: ${TABLE}.value.user_id ;;
    group_label: "Value"
    group_item_label: "User ID"
  }
}

view: orders__line_items {
  dimension: orders__line_items {
    type: string
    hidden: yes
    sql: orders__line_items ;;
  }

  dimension: value__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.value.admin_graphql_api_id ;;
    group_label: "Value"
    group_item_label: "Admin Graphql API ID"
  }

  dimension: value__destination_location__address1 {
    type: string
    sql: ${TABLE}.value.destination_location.address1 ;;
    group_label: "Value Destination Location"
    group_item_label: "Address1"
  }

  dimension: value__destination_location__address2 {
    type: string
    sql: ${TABLE}.value.destination_location.address2 ;;
    group_label: "Value Destination Location"
    group_item_label: "Address2"
  }

  dimension: value__destination_location__city {
    type: string
    sql: ${TABLE}.value.destination_location.city ;;
    group_label: "Value Destination Location"
    group_item_label: "City"
  }

  dimension: value__destination_location__country_code {
    type: string
    sql: ${TABLE}.value.destination_location.country_code ;;
    group_label: "Value Destination Location"
    group_item_label: "Country Code"
  }

  dimension: value__destination_location__id {
    type: number
    sql: ${TABLE}.value.destination_location.id ;;
    group_label: "Value Destination Location"
    group_item_label: "ID"
  }

  dimension: value__destination_location__name {
    type: string
    sql: ${TABLE}.value.destination_location.name ;;
    group_label: "Value Destination Location"
    group_item_label: "Name"
  }

  dimension: value__destination_location__province_code {
    type: string
    sql: ${TABLE}.value.destination_location.province_code ;;
    group_label: "Value Destination Location"
    group_item_label: "Province Code"
  }

  dimension: value__destination_location__zip {
    type: string
    sql: ${TABLE}.value.destination_location.zip ;;
    group_label: "Value Destination Location"
    group_item_label: "Zip"
  }

  dimension: value__discount_allocations {
    hidden: yes
    sql: ${TABLE}.value.discount_allocations ;;
    group_label: "Value"
    group_item_label: "Discount Allocations"
  }

  dimension: value__fulfillable_quantity {
    type: number
    sql: ${TABLE}.value.fulfillable_quantity ;;
    group_label: "Value"
    group_item_label: "Fulfillable Quantity"
  }

  dimension: value__fulfillment_service {
    type: string
    sql: ${TABLE}.value.fulfillment_service ;;
    group_label: "Value"
    group_item_label: "Fulfillment Service"
  }

  dimension: value__fulfillment_status {
    type: string
    sql: ${TABLE}.value.fulfillment_status ;;
    group_label: "Value"
    group_item_label: "Fulfillment Status"
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

  dimension: value__origin_location__address1 {
    type: string
    sql: ${TABLE}.value.origin_location.address1 ;;
    group_label: "Value Origin Location"
    group_item_label: "Address1"
  }

  dimension: value__origin_location__address2 {
    type: string
    sql: ${TABLE}.value.origin_location.address2 ;;
    group_label: "Value Origin Location"
    group_item_label: "Address2"
  }

  dimension: value__origin_location__city {
    type: string
    sql: ${TABLE}.value.origin_location.city ;;
    group_label: "Value Origin Location"
    group_item_label: "City"
  }

  dimension: value__origin_location__country_code {
    type: string
    sql: ${TABLE}.value.origin_location.country_code ;;
    group_label: "Value Origin Location"
    group_item_label: "Country Code"
  }

  dimension: value__origin_location__id {
    type: number
    sql: ${TABLE}.value.origin_location.id ;;
    group_label: "Value Origin Location"
    group_item_label: "ID"
  }

  dimension: value__origin_location__name {
    type: string
    sql: ${TABLE}.value.origin_location.name ;;
    group_label: "Value Origin Location"
    group_item_label: "Name"
  }

  dimension: value__origin_location__province_code {
    type: string
    sql: ${TABLE}.value.origin_location.province_code ;;
    group_label: "Value Origin Location"
    group_item_label: "Province Code"
  }

  dimension: value__origin_location__zip {
    type: string
    sql: ${TABLE}.value.origin_location.zip ;;
    group_label: "Value Origin Location"
    group_item_label: "Zip"
  }

  dimension: value__price {
    type: number
    sql: ${TABLE}.value.price ;;
    group_label: "Value"
    group_item_label: "Price"
  }

  dimension: value__price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.price_set.presentment_money.amount ;;
    group_label: "Value Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.price_set.presentment_money.currency_code ;;
    group_label: "Value Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.price_set.shop_money.amount ;;
    group_label: "Value Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.price_set.shop_money.currency_code ;;
    group_label: "Value Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__product_exists {
    type: yesno
    sql: ${TABLE}.value.product_exists ;;
    group_label: "Value"
    group_item_label: "Product Exists"
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

  dimension: value__total_discount {
    type: number
    sql: ${TABLE}.value.total_discount ;;
    group_label: "Value"
    group_item_label: "Total Discount"
  }

  dimension: value__total_discount_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.total_discount_set.presentment_money.amount ;;
    group_label: "Value Total Discount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__total_discount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.total_discount_set.presentment_money.currency_code ;;
    group_label: "Value Total Discount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__total_discount_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.total_discount_set.shop_money.amount ;;
    group_label: "Value Total Discount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__total_discount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.total_discount_set.shop_money.currency_code ;;
    group_label: "Value Total Discount Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__variant_id {
    type: number
    sql: ${TABLE}.value.variant_id ;;
    group_label: "Value"
    group_item_label: "Variant ID"
  }

  dimension: value__variant_inventory_management {
    type: string
    sql: ${TABLE}.value.variant_inventory_management ;;
    group_label: "Value"
    group_item_label: "Variant Inventory Management"
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

view: orders__fulfillments {
  dimension: orders__fulfillments {
    type: string
    hidden: yes
    sql: orders__fulfillments ;;
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

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__line_items {
    hidden: yes
    sql: ${TABLE}.value.line_items ;;
    group_label: "Value"
    group_item_label: "Line Items"
  }

  dimension: value__location_id {
    type: number
    sql: ${TABLE}.value.location_id ;;
    group_label: "Value"
    group_item_label: "Location ID"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }

  dimension: value__service {
    type: string
    sql: ${TABLE}.value.service ;;
    group_label: "Value"
    group_item_label: "Service"
  }

  dimension: value__status {
    type: string
    sql: ${TABLE}.value.status ;;
    group_label: "Value"
    group_item_label: "Status"
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
}

view: orders__shipping_lines {
  dimension: orders__shipping_lines {
    type: string
    hidden: yes
    sql: orders__shipping_lines ;;
  }

  dimension: value__code {
    type: string
    sql: ${TABLE}.value.code ;;
    group_label: "Value"
    group_item_label: "Code"
  }

  dimension: value__discounted_price {
    type: number
    sql: ${TABLE}.value.discounted_price ;;
    group_label: "Value"
    group_item_label: "Discounted Price"
  }

  dimension: value__discounted_price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.discounted_price_set.presentment_money.amount ;;
    group_label: "Value Discounted Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__discounted_price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.discounted_price_set.presentment_money.currency_code ;;
    group_label: "Value Discounted Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__discounted_price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.discounted_price_set.shop_money.amount ;;
    group_label: "Value Discounted Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__discounted_price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.discounted_price_set.shop_money.currency_code ;;
    group_label: "Value Discounted Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__price {
    type: number
    sql: ${TABLE}.value.price ;;
    group_label: "Value"
    group_item_label: "Price"
  }

  dimension: value__price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.price_set.presentment_money.amount ;;
    group_label: "Value Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.price_set.presentment_money.currency_code ;;
    group_label: "Value Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.price_set.shop_money.amount ;;
    group_label: "Value Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.price_set.shop_money.currency_code ;;
    group_label: "Value Price Set Shop Money"
    group_item_label: "Currency Code"
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

view: orders__discount_codes {
  dimension: orders__discount_codes {
    type: string
    hidden: yes
    sql: orders__discount_codes ;;
  }

  dimension: value__amount {
    type: number
    sql: ${TABLE}.value.amount ;;
    group_label: "Value"
    group_item_label: "Amount"
  }

  dimension: value__code {
    type: string
    sql: ${TABLE}.value.code ;;
    group_label: "Value"
    group_item_label: "Code"
  }

  dimension: value__type {
    type: string
    sql: ${TABLE}.value.type ;;
    group_label: "Value"
    group_item_label: "Type"
  }
}

view: orders__payment_gateway_names {
  dimension: orders__payment_gateway_names {
    type: string
    hidden: yes
    sql: orders__payment_gateway_names ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

view: orders__discount_applications {
  dimension: orders__discount_applications {
    type: string
    hidden: yes
    sql: orders__discount_applications ;;
  }

  dimension: value__allocation_method {
    type: string
    sql: ${TABLE}.value.allocation_method ;;
    group_label: "Value"
    group_item_label: "Allocation Method"
  }

  dimension: value__description {
    type: string
    sql: ${TABLE}.value.description ;;
    group_label: "Value"
    group_item_label: "Description"
  }

  dimension: value__target_selection {
    type: string
    sql: ${TABLE}.value.target_selection ;;
    group_label: "Value"
    group_item_label: "Target Selection"
  }

  dimension: value__target_type {
    type: string
    sql: ${TABLE}.value.target_type ;;
    group_label: "Value"
    group_item_label: "Target Type"
  }

  dimension: value__title {
    type: string
    sql: ${TABLE}.value.title ;;
    group_label: "Value"
    group_item_label: "Title"
  }

  dimension: value__type {
    type: string
    sql: ${TABLE}.value.type ;;
    group_label: "Value"
    group_item_label: "Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }

  dimension: value__value_type {
    type: string
    sql: ${TABLE}.value.value_type ;;
    group_label: "Value"
    group_item_label: "Value Type"
  }
}

view: orders__fulfillments__value__line_items {
  dimension: value__admin_graphql_api_id {
    type: string
    sql: ${TABLE}.value.admin_graphql_api_id ;;
    group_label: "Value"
    group_item_label: "Admin Graphql API ID"
  }

  dimension: value__destination_location__address1 {
    type: string
    sql: ${TABLE}.value.destination_location.address1 ;;
    group_label: "Value Destination Location"
    group_item_label: "Address1"
  }

  dimension: value__destination_location__address2 {
    type: string
    sql: ${TABLE}.value.destination_location.address2 ;;
    group_label: "Value Destination Location"
    group_item_label: "Address2"
  }

  dimension: value__destination_location__city {
    type: string
    sql: ${TABLE}.value.destination_location.city ;;
    group_label: "Value Destination Location"
    group_item_label: "City"
  }

  dimension: value__destination_location__country_code {
    type: string
    sql: ${TABLE}.value.destination_location.country_code ;;
    group_label: "Value Destination Location"
    group_item_label: "Country Code"
  }

  dimension: value__destination_location__id {
    type: number
    sql: ${TABLE}.value.destination_location.id ;;
    group_label: "Value Destination Location"
    group_item_label: "ID"
  }

  dimension: value__destination_location__name {
    type: string
    sql: ${TABLE}.value.destination_location.name ;;
    group_label: "Value Destination Location"
    group_item_label: "Name"
  }

  dimension: value__destination_location__province_code {
    type: string
    sql: ${TABLE}.value.destination_location.province_code ;;
    group_label: "Value Destination Location"
    group_item_label: "Province Code"
  }

  dimension: value__destination_location__zip {
    type: string
    sql: ${TABLE}.value.destination_location.zip ;;
    group_label: "Value Destination Location"
    group_item_label: "Zip"
  }

  dimension: value__discount_allocations {
    hidden: yes
    sql: ${TABLE}.value.discount_allocations ;;
    group_label: "Value"
    group_item_label: "Discount Allocations"
  }

  dimension: value__fulfillable_quantity {
    type: number
    sql: ${TABLE}.value.fulfillable_quantity ;;
    group_label: "Value"
    group_item_label: "Fulfillable Quantity"
  }

  dimension: value__fulfillment_service {
    type: string
    sql: ${TABLE}.value.fulfillment_service ;;
    group_label: "Value"
    group_item_label: "Fulfillment Service"
  }

  dimension: value__fulfillment_status {
    type: string
    sql: ${TABLE}.value.fulfillment_status ;;
    group_label: "Value"
    group_item_label: "Fulfillment Status"
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

  dimension: value__origin_location__address1 {
    type: string
    sql: ${TABLE}.value.origin_location.address1 ;;
    group_label: "Value Origin Location"
    group_item_label: "Address1"
  }

  dimension: value__origin_location__address2 {
    type: string
    sql: ${TABLE}.value.origin_location.address2 ;;
    group_label: "Value Origin Location"
    group_item_label: "Address2"
  }

  dimension: value__origin_location__city {
    type: string
    sql: ${TABLE}.value.origin_location.city ;;
    group_label: "Value Origin Location"
    group_item_label: "City"
  }

  dimension: value__origin_location__country_code {
    type: string
    sql: ${TABLE}.value.origin_location.country_code ;;
    group_label: "Value Origin Location"
    group_item_label: "Country Code"
  }

  dimension: value__origin_location__id {
    type: number
    sql: ${TABLE}.value.origin_location.id ;;
    group_label: "Value Origin Location"
    group_item_label: "ID"
  }

  dimension: value__origin_location__name {
    type: string
    sql: ${TABLE}.value.origin_location.name ;;
    group_label: "Value Origin Location"
    group_item_label: "Name"
  }

  dimension: value__origin_location__province_code {
    type: string
    sql: ${TABLE}.value.origin_location.province_code ;;
    group_label: "Value Origin Location"
    group_item_label: "Province Code"
  }

  dimension: value__origin_location__zip {
    type: string
    sql: ${TABLE}.value.origin_location.zip ;;
    group_label: "Value Origin Location"
    group_item_label: "Zip"
  }

  dimension: value__price {
    type: number
    sql: ${TABLE}.value.price ;;
    group_label: "Value"
    group_item_label: "Price"
  }

  dimension: value__price_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.price_set.presentment_money.amount ;;
    group_label: "Value Price Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__price_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.price_set.presentment_money.currency_code ;;
    group_label: "Value Price Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__price_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.price_set.shop_money.amount ;;
    group_label: "Value Price Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__price_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.price_set.shop_money.currency_code ;;
    group_label: "Value Price Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__product_exists {
    type: yesno
    sql: ${TABLE}.value.product_exists ;;
    group_label: "Value"
    group_item_label: "Product Exists"
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

  dimension: value__total_discount {
    type: number
    sql: ${TABLE}.value.total_discount ;;
    group_label: "Value"
    group_item_label: "Total Discount"
  }

  dimension: value__total_discount_set__presentment_money__amount {
    type: string
    sql: ${TABLE}.value.total_discount_set.presentment_money.amount ;;
    group_label: "Value Total Discount Set Presentment Money"
    group_item_label: "Amount"
  }

  dimension: value__total_discount_set__presentment_money__currency_code {
    type: string
    sql: ${TABLE}.value.total_discount_set.presentment_money.currency_code ;;
    group_label: "Value Total Discount Set Presentment Money"
    group_item_label: "Currency Code"
  }

  dimension: value__total_discount_set__shop_money__amount {
    type: string
    sql: ${TABLE}.value.total_discount_set.shop_money.amount ;;
    group_label: "Value Total Discount Set Shop Money"
    group_item_label: "Amount"
  }

  dimension: value__total_discount_set__shop_money__currency_code {
    type: string
    sql: ${TABLE}.value.total_discount_set.shop_money.currency_code ;;
    group_label: "Value Total Discount Set Shop Money"
    group_item_label: "Currency Code"
  }

  dimension: value__variant_id {
    type: number
    sql: ${TABLE}.value.variant_id ;;
    group_label: "Value"
    group_item_label: "Variant ID"
  }

  dimension: value__variant_inventory_management {
    type: string
    sql: ${TABLE}.value.variant_inventory_management ;;
    group_label: "Value"
    group_item_label: "Variant Inventory Management"
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

view: orders__refunds__value__refund_line_items {
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
    type: number
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
    type: number
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

  dimension: value__total_tax {
    type: number
    sql: ${TABLE}.value.total_tax ;;
    group_label: "Value"
    group_item_label: "Total Tax"
  }
}

view: orders__refunds__value__order_adjustments {
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

view: orders__line_items__value__discount_allocations {
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

  dimension: value__discount_application_index {
    type: number
    sql: ${TABLE}.value.discount_application_index ;;
    group_label: "Value"
    group_item_label: "Discount Application Index"
  }
}

view: orders__fulfillments__value__line_items__value__discount_allocations {
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

  dimension: value__discount_application_index {
    type: number
    sql: ${TABLE}.value.discount_application_index ;;
    group_label: "Value"
    group_item_label: "Discount Application Index"
  }
}

view: orders__refunds__value__refund_line_items__value__line_item__discount_allocations {
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

  dimension: value__discount_application_index {
    type: number
    sql: ${TABLE}.value.discount_application_index ;;
    group_label: "Value"
    group_item_label: "Discount Application Index"
  }
}
