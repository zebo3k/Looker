# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: transactions {


  join: transactions__receipt__charges__data {
    view_label: "Transactions: Receipt Charges Data"
    sql: LEFT JOIN UNNEST(${transactions.receipt__charges__data}) as transactions__receipt__charges__data ;;
    relationship: one_to_many
  }

  join: transactions__receipt__payment_method_types {
    view_label: "Transactions: Receipt Payment Method Types"
    sql: LEFT JOIN UNNEST(${transactions.receipt__payment_method_types}) as transactions__receipt__payment_method_types ;;
    relationship: one_to_many
  }
}

view: transactions {
  sql_table_name: `datafy-357011.shopify.transactions`
    ;;
  drill_fields: [receipt__metadata__order_transaction_id]

  dimension: receipt__metadata__order_transaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.receipt.metadata.order_transaction_id ;;
    group_label: "Receipt Metadata"
    group_item_label: "Order Transaction ID"
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

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: authorization {
    type: string
    sql: ${TABLE}.authorization ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
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

  dimension: processed_at {
    type: string
    sql: ${TABLE}.processed_at ;;
  }

  dimension: receipt__amount {
    type: number
    sql: ${TABLE}.receipt.amount ;;
    group_label: "Receipt"
    group_item_label: "Amount"
  }

  dimension: receipt__amount_capturable {
    type: number
    sql: ${TABLE}.receipt.amount_capturable ;;
    group_label: "Receipt"
    group_item_label: "Amount Capturable"
  }

  dimension: receipt__amount_received {
    type: number
    sql: ${TABLE}.receipt.amount_received ;;
    group_label: "Receipt"
    group_item_label: "Amount Received"
  }

  dimension: receipt__capture_method {
    type: string
    sql: ${TABLE}.receipt.capture_method ;;
    group_label: "Receipt"
    group_item_label: "Capture Method"
  }

  dimension: receipt__charges__data {
    hidden: yes
    sql: ${TABLE}.receipt.charges.data ;;
    group_label: "Receipt Charges"
    group_item_label: "Data"
  }

  dimension: receipt__charges__has_more {
    type: yesno
    sql: ${TABLE}.receipt.charges.has_more ;;
    group_label: "Receipt Charges"
    group_item_label: "Has More"
  }

  dimension: receipt__charges__object {
    type: string
    sql: ${TABLE}.receipt.charges.object ;;
    group_label: "Receipt Charges"
    group_item_label: "Object"
  }

  dimension: receipt__charges__total_count {
    type: number
    sql: ${TABLE}.receipt.charges.total_count ;;
    group_label: "Receipt Charges"
    group_item_label: "Total Count"
  }

  dimension: receipt__charges__url {
    type: string
    sql: ${TABLE}.receipt.charges.url ;;
    group_label: "Receipt Charges"
    group_item_label: "URL"
  }

  dimension: receipt__confirmation_method {
    type: string
    sql: ${TABLE}.receipt.confirmation_method ;;
    group_label: "Receipt"
    group_item_label: "Confirmation Method"
  }

  dimension: receipt__created {
    type: number
    sql: ${TABLE}.receipt.created ;;
    group_label: "Receipt"
    group_item_label: "Created"
  }

  dimension: receipt__currency {
    type: string
    sql: ${TABLE}.receipt.currency ;;
    group_label: "Receipt"
    group_item_label: "Currency"
  }

  dimension: receipt__id {
    type: string
    sql: ${TABLE}.receipt.id ;;
    group_label: "Receipt"
    group_item_label: "ID"
  }

  dimension: receipt__livemode {
    type: yesno
    sql: ${TABLE}.receipt.livemode ;;
    group_label: "Receipt"
    group_item_label: "Livemode"
  }

  dimension: receipt__metadata__email {
    type: string
    sql: ${TABLE}.receipt.metadata.email ;;
    group_label: "Receipt Metadata"
    group_item_label: "Email"
  }

  dimension: receipt__metadata__manual_entry {
    type: string
    sql: ${TABLE}.receipt.metadata.manual_entry ;;
    group_label: "Receipt Metadata"
    group_item_label: "Manual Entry"
  }

  dimension: receipt__metadata__order_id {
    type: string
    sql: ${TABLE}.receipt.metadata.order_id ;;
    group_label: "Receipt Metadata"
    group_item_label: "Order ID"
  }

  dimension: receipt__metadata__payments_charge_id {
    type: string
    sql: ${TABLE}.receipt.metadata.payments_charge_id ;;
    group_label: "Receipt Metadata"
    group_item_label: "Payments Charge ID"
  }

  dimension: receipt__metadata__shop_id {
    type: string
    sql: ${TABLE}.receipt.metadata.shop_id ;;
    group_label: "Receipt Metadata"
    group_item_label: "Shop ID"
  }

  dimension: receipt__metadata__shop_name {
    type: string
    sql: ${TABLE}.receipt.metadata.shop_name ;;
    group_label: "Receipt Metadata"
    group_item_label: "Shop Name"
  }

  dimension: receipt__metadata__transaction_fee_tax_amount {
    type: string
    sql: ${TABLE}.receipt.metadata.transaction_fee_tax_amount ;;
    group_label: "Receipt Metadata"
    group_item_label: "Transaction Fee Tax Amount"
  }

  dimension: receipt__metadata__transaction_fee_total_amount {
    type: string
    sql: ${TABLE}.receipt.metadata.transaction_fee_total_amount ;;
    group_label: "Receipt Metadata"
    group_item_label: "Transaction Fee Total Amount"
  }

  dimension: receipt__object {
    type: string
    sql: ${TABLE}.receipt.object ;;
    group_label: "Receipt"
    group_item_label: "Object"
  }

  dimension: receipt__paid_amount {
    type: string
    sql: ${TABLE}.receipt.paid_amount ;;
    group_label: "Receipt"
    group_item_label: "Paid Amount"
  }

  dimension: receipt__payment_method {
    type: string
    sql: ${TABLE}.receipt.payment_method ;;
    group_label: "Receipt"
    group_item_label: "Payment Method"
  }

  dimension: receipt__payment_method_types {
    hidden: yes
    sql: ${TABLE}.receipt.payment_method_types ;;
    group_label: "Receipt"
    group_item_label: "Payment Method Types"
  }

  dimension: receipt__status {
    type: string
    sql: ${TABLE}.receipt.status ;;
    group_label: "Receipt"
    group_item_label: "Status"
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      receipt__metadata__order_transaction_id,
      source_name,
      _sdc_shop_name,
      receipt__metadata__shop_name,
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

view: transactions__receipt__charges__data {
  dimension: value__amount {
    type: number
    sql: ${TABLE}.value.amount ;;
    group_label: "Value"
    group_item_label: "Amount"
  }

  dimension: value__application_fee {
    type: string
    sql: ${TABLE}.value.application_fee ;;
    group_label: "Value"
    group_item_label: "Application Fee"
  }

  dimension: value__balance_transaction__id {
    type: string
    sql: ${TABLE}.value.balance_transaction.id ;;
    group_label: "Value Balance Transaction"
    group_item_label: "ID"
  }

  dimension: value__balance_transaction__object {
    type: string
    sql: ${TABLE}.value.balance_transaction.object ;;
    group_label: "Value Balance Transaction"
    group_item_label: "Object"
  }

  dimension: value__balance_transaction__st {
    type: string
    sql: ${TABLE}.value.balance_transaction__st ;;
    group_label: "Value Balance Transaction"
    group_item_label: "St"
  }

  dimension: value__captured {
    type: yesno
    sql: ${TABLE}.value.captured ;;
    group_label: "Value"
    group_item_label: "Captured"
  }

  dimension: value__created {
    type: number
    sql: ${TABLE}.value.created ;;
    group_label: "Value"
    group_item_label: "Created"
  }

  dimension: value__currency {
    type: string
    sql: ${TABLE}.value.currency ;;
    group_label: "Value"
    group_item_label: "Currency"
  }

  dimension: value__id {
    type: string
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__livemode {
    type: yesno
    sql: ${TABLE}.value.livemode ;;
    group_label: "Value"
    group_item_label: "Livemode"
  }

  dimension: value__metadata__email {
    type: string
    sql: ${TABLE}.value.metadata.email ;;
    group_label: "Value Metadata"
    group_item_label: "Email"
  }

  dimension: value__metadata__manual_entry {
    type: string
    sql: ${TABLE}.value.metadata.manual_entry ;;
    group_label: "Value Metadata"
    group_item_label: "Manual Entry"
  }

  dimension: value__metadata__order_id {
    type: string
    sql: ${TABLE}.value.metadata.order_id ;;
    group_label: "Value Metadata"
    group_item_label: "Order ID"
  }

  dimension: value__metadata__order_transaction_id {
    type: string
    sql: ${TABLE}.value.metadata.order_transaction_id ;;
    group_label: "Value Metadata"
    group_item_label: "Order Transaction ID"
  }

  dimension: value__metadata__payments_charge_id {
    type: string
    sql: ${TABLE}.value.metadata.payments_charge_id ;;
    group_label: "Value Metadata"
    group_item_label: "Payments Charge ID"
  }

  dimension: value__metadata__shop_id {
    type: string
    sql: ${TABLE}.value.metadata.shop_id ;;
    group_label: "Value Metadata"
    group_item_label: "Shop ID"
  }

  dimension: value__metadata__shop_name {
    type: string
    sql: ${TABLE}.value.metadata.shop_name ;;
    group_label: "Value Metadata"
    group_item_label: "Shop Name"
  }

  dimension: value__metadata__transaction_fee_tax_amount {
    type: string
    sql: ${TABLE}.value.metadata.transaction_fee_tax_amount ;;
    group_label: "Value Metadata"
    group_item_label: "Transaction Fee Tax Amount"
  }

  dimension: value__metadata__transaction_fee_total_amount {
    type: string
    sql: ${TABLE}.value.metadata.transaction_fee_total_amount ;;
    group_label: "Value Metadata"
    group_item_label: "Transaction Fee Total Amount"
  }

  dimension: value__mit_params__network_transaction_id {
    type: string
    sql: ${TABLE}.value.mit_params.network_transaction_id ;;
    group_label: "Value Mit Params"
    group_item_label: "Network Transaction ID"
  }

  dimension: value__object {
    type: string
    sql: ${TABLE}.value.object ;;
    group_label: "Value"
    group_item_label: "Object"
  }

  dimension: value__outcome__network_status {
    type: string
    sql: ${TABLE}.value.outcome.network_status ;;
    group_label: "Value Outcome"
    group_item_label: "Network Status"
  }

  dimension: value__outcome__risk_level {
    type: string
    sql: ${TABLE}.value.outcome.risk_level ;;
    group_label: "Value Outcome"
    group_item_label: "Risk Level"
  }

  dimension: value__outcome__risk_score {
    type: number
    sql: ${TABLE}.value.outcome.risk_score ;;
    group_label: "Value Outcome"
    group_item_label: "Risk Score"
  }

  dimension: value__outcome__seller_message {
    type: string
    sql: ${TABLE}.value.outcome.seller_message ;;
    group_label: "Value Outcome"
    group_item_label: "Seller Message"
  }

  dimension: value__outcome__type {
    type: string
    sql: ${TABLE}.value.outcome.type ;;
    group_label: "Value Outcome"
    group_item_label: "Type"
  }

  dimension: value__paid {
    type: yesno
    sql: ${TABLE}.value.paid ;;
    group_label: "Value"
    group_item_label: "Paid"
  }

  dimension: value__payment_intent {
    type: string
    sql: ${TABLE}.value.payment_intent ;;
    group_label: "Value"
    group_item_label: "Payment Intent"
  }

  dimension: value__payment_method {
    type: string
    sql: ${TABLE}.value.payment_method ;;
    group_label: "Value"
    group_item_label: "Payment Method"
  }

  dimension: value__payment_method_details__card__brand {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.brand ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Brand"
  }

  dimension: value__payment_method_details__card__checks__address_line1_check {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.checks.address_line1_check ;;
    group_label: "Value Payment Method Details Card Checks"
    group_item_label: "Address Line1 Check"
  }

  dimension: value__payment_method_details__card__checks__address_postal_code_check {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.checks.address_postal_code_check ;;
    group_label: "Value Payment Method Details Card Checks"
    group_item_label: "Address Postal Code Check"
  }

  dimension: value__payment_method_details__card__checks__cvc_check {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.checks.cvc_check ;;
    group_label: "Value Payment Method Details Card Checks"
    group_item_label: "Cvc Check"
  }

  dimension: value__payment_method_details__card__country {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.country ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Country"
  }

  dimension: value__payment_method_details__card__description {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.description ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Description"
  }

  dimension: value__payment_method_details__card__exp_month {
    type: number
    sql: ${TABLE}.value.payment_method_details.card.exp_month ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Exp Month"
  }

  dimension: value__payment_method_details__card__exp_year {
    type: number
    sql: ${TABLE}.value.payment_method_details.card.exp_year ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Exp Year"
  }

  dimension: value__payment_method_details__card__fingerprint {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.fingerprint ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Fingerprint"
  }

  dimension: value__payment_method_details__card__funding {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.funding ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Funding"
  }

  dimension: value__payment_method_details__card__iin {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.iin ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Iin"
  }

  dimension: value__payment_method_details__card__issuer {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.issuer ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Issuer"
  }

  dimension: value__payment_method_details__card__last4 {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.last4 ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Last4"
  }

  dimension: value__payment_method_details__card__moto {
    type: yesno
    sql: ${TABLE}.value.payment_method_details.card.moto ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Moto"
  }

  dimension: value__payment_method_details__card__network {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.network ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Network"
  }

  dimension: value__payment_method_details__card__network_transaction_id {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.network_transaction_id ;;
    group_label: "Value Payment Method Details Card"
    group_item_label: "Network Transaction ID"
  }

  dimension: value__payment_method_details__card__three_d_secure__authenticated {
    type: yesno
    sql: ${TABLE}.value.payment_method_details.card.three_d_secure.authenticated ;;
    group_label: "Value Payment Method Details Card Three D Secure"
    group_item_label: "Authenticated"
  }

  dimension: value__payment_method_details__card__three_d_secure__result {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.three_d_secure.result ;;
    group_label: "Value Payment Method Details Card Three D Secure"
    group_item_label: "Result"
  }

  dimension: value__payment_method_details__card__three_d_secure__succeeded {
    type: yesno
    sql: ${TABLE}.value.payment_method_details.card.three_d_secure.succeeded ;;
    group_label: "Value Payment Method Details Card Three D Secure"
    group_item_label: "Succeeded"
  }

  dimension: value__payment_method_details__card__three_d_secure__version {
    type: string
    sql: ${TABLE}.value.payment_method_details.card.three_d_secure.version ;;
    group_label: "Value Payment Method Details Card Three D Secure"
    group_item_label: "Version"
  }

  dimension: value__payment_method_details__type {
    type: string
    sql: ${TABLE}.value.payment_method_details.type ;;
    group_label: "Value Payment Method Details"
    group_item_label: "Type"
  }

  dimension: value__refunded {
    type: yesno
    sql: ${TABLE}.value.refunded ;;
    group_label: "Value"
    group_item_label: "Refunded"
  }

  dimension: value__status {
    type: string
    sql: ${TABLE}.value.status ;;
    group_label: "Value"
    group_item_label: "Status"
  }
}

view: transactions__receipt__payment_method_types {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}
