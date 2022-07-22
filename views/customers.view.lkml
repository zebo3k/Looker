# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: customers {


  join: customers__addresses {
    view_label: "Customers: Addresses"
    sql: LEFT JOIN UNNEST(${customers.addresses}) as customers__addresses ;;
    relationship: one_to_many
  }
}

view: customers {
  sql_table_name: `datafy-357011.shopify.customers`
    ;;
  drill_fields: [default_address__customer_id]

  dimension: default_address__customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.default_address.customer_id ;;
    group_label: "Default Address"
    group_item_label: "Customer ID"
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

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}.accepts_marketing ;;
  }

  dimension_group: accepts_marketing_updated {
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
    sql: ${TABLE}.accepts_marketing_updated_at ;;
  }

  dimension: addresses {
    hidden: yes
    sql: ${TABLE}.addresses ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: default_address__address1 {
    type: string
    sql: ${TABLE}.default_address.address1 ;;
    group_label: "Default Address"
    group_item_label: "Address1"
  }

  dimension: default_address__address2 {
    type: string
    sql: ${TABLE}.default_address.address2 ;;
    group_label: "Default Address"
    group_item_label: "Address2"
  }

  dimension: default_address__city {
    type: string
    sql: ${TABLE}.default_address.city ;;
    group_label: "Default Address"
    group_item_label: "City"
  }

  dimension: default_address__company {
    type: string
    sql: ${TABLE}.default_address.company ;;
    group_label: "Default Address"
    group_item_label: "Company"
  }

  dimension: default_address__country {
    type: string
    sql: ${TABLE}.default_address.country ;;
    group_label: "Default Address"
    group_item_label: "Country"
  }

  dimension: default_address__country_code {
    type: string
    sql: ${TABLE}.default_address.country_code ;;
    group_label: "Default Address"
    group_item_label: "Country Code"
  }

  dimension: default_address__country_name {
    type: string
    sql: ${TABLE}.default_address.country_name ;;
    group_label: "Default Address"
    group_item_label: "Country Name"
  }

  dimension: default_address__default {
    type: yesno
    sql: ${TABLE}.default_address.`default` ;;
    group_label: "Default Address"
    group_item_label: "Default"
  }

  dimension: default_address__first_name {
    type: string
    sql: ${TABLE}.default_address.first_name ;;
    group_label: "Default Address"
    group_item_label: "First Name"
  }

  dimension: default_address__id {
    type: number
    sql: ${TABLE}.default_address.id ;;
    group_label: "Default Address"
    group_item_label: "ID"
  }

  dimension: default_address__last_name {
    type: string
    sql: ${TABLE}.default_address.last_name ;;
    group_label: "Default Address"
    group_item_label: "Last Name"
  }

  dimension: default_address__name {
    type: string
    sql: ${TABLE}.default_address.name ;;
    group_label: "Default Address"
    group_item_label: "Name"
  }

  dimension: default_address__phone {
    type: string
    sql: ${TABLE}.default_address.phone ;;
    group_label: "Default Address"
    group_item_label: "Phone"
  }

  dimension: default_address__province {
    type: string
    sql: ${TABLE}.default_address.province ;;
    group_label: "Default Address"
    group_item_label: "Province"
  }

  dimension: default_address__province_code {
    type: string
    sql: ${TABLE}.default_address.province_code ;;
    group_label: "Default Address"
    group_item_label: "Province Code"
  }

  dimension: default_address__zip {
    type: string
    sql: ${TABLE}.default_address.zip ;;
    group_label: "Default Address"
    group_item_label: "Zip"
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_order_id {
    type: number
    sql: ${TABLE}.last_order_id ;;
  }

  dimension: last_order_name {
    type: string
    sql: ${TABLE}.last_order_name ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: sms_marketing_consent__consent_collected_from {
    type: string
    sql: ${TABLE}.sms_marketing_consent.consent_collected_from ;;
    group_label: "Sms Marketing Consent"
    group_item_label: "Consent Collected From"
  }

  dimension: sms_marketing_consent__opt_in_level {
    type: string
    sql: ${TABLE}.sms_marketing_consent.opt_in_level ;;
    group_label: "Sms Marketing Consent"
    group_item_label: "Opt In Level"
  }

  dimension: sms_marketing_consent__state {
    type: string
    sql: ${TABLE}.sms_marketing_consent.state ;;
    group_label: "Sms Marketing Consent"
    group_item_label: "State"
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: total_spent {
    type: string
    sql: ${TABLE}.total_spent ;;
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

  dimension: verified_email {
    type: yesno
    sql: ${TABLE}.verified_email ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      default_address__customer_id,
      last_order_name,
      first_name,
      last_name,
      _sdc_shop_name,
      default_address__name,
      default_address__last_name,
      default_address__first_name,
      default_address__country_name
    ]
  }
}

view: customers__addresses {
  dimension: customers__addresses {
    type: string
    hidden: yes
    sql: customers__addresses ;;
  }

  dimension: value__address1 {
    type: string
    sql: ${TABLE}.value.address1 ;;
    group_label: "Value"
    group_item_label: "Address1"
  }

  dimension: value__address2 {
    type: string
    sql: ${TABLE}.value.address2 ;;
    group_label: "Value"
    group_item_label: "Address2"
  }

  dimension: value__city {
    type: string
    sql: ${TABLE}.value.city ;;
    group_label: "Value"
    group_item_label: "City"
  }

  dimension: value__company {
    type: string
    sql: ${TABLE}.value.company ;;
    group_label: "Value"
    group_item_label: "Company"
  }

  dimension: value__country {
    type: string
    sql: ${TABLE}.value.country ;;
    group_label: "Value"
    group_item_label: "Country"
  }

  dimension: value__country_code {
    type: string
    sql: ${TABLE}.value.country_code ;;
    group_label: "Value"
    group_item_label: "Country Code"
  }

  dimension: value__country_name {
    type: string
    sql: ${TABLE}.value.country_name ;;
    group_label: "Value"
    group_item_label: "Country Name"
  }

  dimension: value__customer_id {
    type: number
    sql: ${TABLE}.value.customer_id ;;
    group_label: "Value"
    group_item_label: "Customer ID"
  }

  dimension: value__default {
    type: yesno
    sql: ${TABLE}.value.`default` ;;
    group_label: "Value"
    group_item_label: "Default"
  }

  dimension: value__first_name {
    type: string
    sql: ${TABLE}.value.first_name ;;
    group_label: "Value"
    group_item_label: "First Name"
  }

  dimension: value__id {
    type: number
    sql: ${TABLE}.value.id ;;
    group_label: "Value"
    group_item_label: "ID"
  }

  dimension: value__last_name {
    type: string
    sql: ${TABLE}.value.last_name ;;
    group_label: "Value"
    group_item_label: "Last Name"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }

  dimension: value__phone {
    type: string
    sql: ${TABLE}.value.phone ;;
    group_label: "Value"
    group_item_label: "Phone"
  }

  dimension: value__province {
    type: string
    sql: ${TABLE}.value.province ;;
    group_label: "Value"
    group_item_label: "Province"
  }

  dimension: value__province_code {
    type: string
    sql: ${TABLE}.value.province_code ;;
    group_label: "Value"
    group_item_label: "Province Code"
  }

  dimension: value__zip {
    type: string
    sql: ${TABLE}.value.zip ;;
    group_label: "Value"
    group_item_label: "Zip"
  }
}
