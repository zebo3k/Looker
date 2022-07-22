view: adcreative {
  sql_table_name: `facebook.adcreative`
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

  dimension: actor_id {
    type: string
    sql: ${TABLE}.actor_id ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: call_to_action_type {
    type: string
    sql: ${TABLE}.call_to_action_type ;;
  }

  dimension: effective_instagram_story_id {
    type: string
    sql: ${TABLE}.effective_instagram_story_id ;;
  }

  dimension: effective_object_story_id {
    type: string
    sql: ${TABLE}.effective_object_story_id ;;
  }

  dimension: image_crops___100x100__value {
    hidden: yes
    sql: ${TABLE}.image_crops._100x100.value ;;
    group_label: "Image Crops 100x100"
    group_item_label: "Value"
  }

  dimension: image_crops___191x100__value {
    hidden: yes
    sql: ${TABLE}.image_crops._191x100.value ;;
    group_label: "Image Crops 191x100"
    group_item_label: "Value"
  }

  dimension: image_crops___90x160__value {
    hidden: yes
    sql: ${TABLE}.image_crops._90x160.value ;;
    group_label: "Image Crops 90x160"
    group_item_label: "Value"
  }

  dimension: image_hash {
    type: string
    sql: ${TABLE}.image_hash ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }

  dimension: instagram_actor_id {
    type: string
    sql: ${TABLE}.instagram_actor_id ;;
  }

  dimension: instagram_permalink_url {
    type: string
    sql: ${TABLE}.instagram_permalink_url ;;
  }

  dimension: link_og_id {
    type: string
    sql: ${TABLE}.link_og_id ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: object_id {
    type: string
    sql: ${TABLE}.object_id ;;
  }

  dimension: object_story_id {
    type: string
    sql: ${TABLE}.object_story_id ;;
  }

  dimension: object_story_spec__instagram_actor_id {
    type: string
    sql: ${TABLE}.object_story_spec.instagram_actor_id ;;
    group_label: "Object Story Spec"
    group_item_label: "Instagram Actor ID"
  }

  dimension: object_story_spec__link_data__attachment_style {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.attachment_style ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Attachment Style"
  }

  dimension: object_story_spec__link_data__call_to_action__type {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.call_to_action.type ;;
    group_label: "Object Story Spec Link Data Call to Action"
    group_item_label: "Type"
  }

  dimension: object_story_spec__link_data__call_to_action__value__lead_gen_form_id {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.call_to_action.value.lead_gen_form_id ;;
    group_label: "Object Story Spec Link Data Call to Action Value"
    group_item_label: "Lead Gen Form ID"
  }

  dimension: object_story_spec__link_data__call_to_action__value__link {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.call_to_action.value.link ;;
    group_label: "Object Story Spec Link Data Call to Action Value"
    group_item_label: "Link"
  }

  dimension: object_story_spec__link_data__child_attachments {
    hidden: yes
    sql: ${TABLE}.object_story_spec.link_data.child_attachments ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Child Attachments"
  }

  dimension: object_story_spec__link_data__description {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.description ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Description"
  }

  dimension: object_story_spec__link_data__image_crops___100x100__value {
    hidden: yes
    sql: ${TABLE}.object_story_spec.link_data.image_crops._100x100.value ;;
    group_label: "Object Story Spec Link Data Image Crops 100x100"
    group_item_label: "Value"
  }

  dimension: object_story_spec__link_data__image_crops___191x100__value {
    hidden: yes
    sql: ${TABLE}.object_story_spec.link_data.image_crops._191x100.value ;;
    group_label: "Object Story Spec Link Data Image Crops 191x100"
    group_item_label: "Value"
  }

  dimension: object_story_spec__link_data__image_crops___90x160__value {
    hidden: yes
    sql: ${TABLE}.object_story_spec.link_data.image_crops._90x160.value ;;
    group_label: "Object Story Spec Link Data Image Crops 90x160"
    group_item_label: "Value"
  }

  dimension: object_story_spec__link_data__image_hash {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.image_hash ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Image Hash"
  }

  dimension: object_story_spec__link_data__link {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.link ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Link"
  }

  dimension: object_story_spec__link_data__message {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.message ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Message"
  }

  dimension: object_story_spec__link_data__multi_share_end_card {
    type: yesno
    sql: ${TABLE}.object_story_spec.link_data.multi_share_end_card ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Multi Share End Card"
  }

  dimension: object_story_spec__link_data__multi_share_optimized {
    type: yesno
    sql: ${TABLE}.object_story_spec.link_data.multi_share_optimized ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Multi Share Optimized"
  }

  dimension: object_story_spec__link_data__name {
    type: string
    sql: ${TABLE}.object_story_spec.link_data.name ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Name"
  }

  dimension: object_story_spec__link_data__retailer_item_ids {
    hidden: yes
    sql: ${TABLE}.object_story_spec.link_data.retailer_item_ids ;;
    group_label: "Object Story Spec Link Data"
    group_item_label: "Retailer Item Ids"
  }

  dimension: object_story_spec__page_id {
    type: string
    sql: ${TABLE}.object_story_spec.page_id ;;
    group_label: "Object Story Spec"
    group_item_label: "Page ID"
  }

  dimension: object_story_spec__photo_data__caption {
    type: string
    sql: ${TABLE}.object_story_spec.photo_data.caption ;;
    group_label: "Object Story Spec Photo Data"
    group_item_label: "Caption"
  }

  dimension: object_story_spec__photo_data__image_hash {
    type: string
    sql: ${TABLE}.object_story_spec.photo_data.image_hash ;;
    group_label: "Object Story Spec Photo Data"
    group_item_label: "Image Hash"
  }

  dimension: object_story_spec__template_data__call_to_action__type {
    type: string
    sql: ${TABLE}.object_story_spec.template_data.call_to_action.type ;;
    group_label: "Object Story Spec Template Data Call to Action"
    group_item_label: "Type"
  }

  dimension: object_story_spec__template_data__description {
    type: string
    sql: ${TABLE}.object_story_spec.template_data.description ;;
    group_label: "Object Story Spec Template Data"
    group_item_label: "Description"
  }

  dimension: object_story_spec__template_data__link {
    type: string
    sql: ${TABLE}.object_story_spec.template_data.link ;;
    group_label: "Object Story Spec Template Data"
    group_item_label: "Link"
  }

  dimension: object_story_spec__template_data__message {
    type: string
    sql: ${TABLE}.object_story_spec.template_data.message ;;
    group_label: "Object Story Spec Template Data"
    group_item_label: "Message"
  }

  dimension: object_story_spec__template_data__multi_share_end_card {
    type: yesno
    sql: ${TABLE}.object_story_spec.template_data.multi_share_end_card ;;
    group_label: "Object Story Spec Template Data"
    group_item_label: "Multi Share End Card"
  }

  dimension: object_story_spec__template_data__name {
    type: string
    sql: ${TABLE}.object_story_spec.template_data.name ;;
    group_label: "Object Story Spec Template Data"
    group_item_label: "Name"
  }

  dimension: object_story_spec__video_data__call_to_action__type {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.call_to_action.type ;;
    group_label: "Object Story Spec Video Data Call to Action"
    group_item_label: "Type"
  }

  dimension: object_story_spec__video_data__call_to_action__value__app_destination {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.call_to_action.value.app_destination ;;
    group_label: "Object Story Spec Video Data Call to Action Value"
    group_item_label: "App Destination"
  }

  dimension: object_story_spec__video_data__call_to_action__value__link {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.call_to_action.value.link ;;
    group_label: "Object Story Spec Video Data Call to Action Value"
    group_item_label: "Link"
  }

  dimension: object_story_spec__video_data__call_to_action__value__link_format {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.call_to_action.value.link_format ;;
    group_label: "Object Story Spec Video Data Call to Action Value"
    group_item_label: "Link Format"
  }

  dimension: object_story_spec__video_data__image_hash {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.image_hash ;;
    group_label: "Object Story Spec Video Data"
    group_item_label: "Image Hash"
  }

  dimension: object_story_spec__video_data__image_url {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.image_url ;;
    group_label: "Object Story Spec Video Data"
    group_item_label: "Image URL"
  }

  dimension: object_story_spec__video_data__link_description {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.link_description ;;
    group_label: "Object Story Spec Video Data"
    group_item_label: "Link Description"
  }

  dimension: object_story_spec__video_data__message {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.message ;;
    group_label: "Object Story Spec Video Data"
    group_item_label: "Message"
  }

  dimension: object_story_spec__video_data__title {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.title ;;
    group_label: "Object Story Spec Video Data"
    group_item_label: "Title"
  }

  dimension: object_story_spec__video_data__video_id {
    type: string
    sql: ${TABLE}.object_story_spec.video_data.video_id ;;
    group_label: "Object Story Spec Video Data"
    group_item_label: "Video ID"
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}.object_type ;;
  }

  dimension: product_set_id {
    type: string
    sql: ${TABLE}.product_set_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: thumbnail_url {
    type: string
    sql: ${TABLE}.thumbnail_url ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url_tags {
    type: string
    sql: ${TABLE}.url_tags ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, object_story_spec__link_data__name, object_story_spec__template_data__name]
  }
}

view: adcreative__image_crops___90x160__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adcreative__image_crops___191x100__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adcreative__image_crops___100x100__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adcreative__object_story_spec__link_data__retailer_item_ids {
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: adcreative__object_story_spec__link_data__child_attachments {
  dimension: value__call_to_action__type {
    type: string
    sql: ${TABLE}.value.call_to_action.type ;;
    group_label: "Value Call to Action"
    group_item_label: "Type"
  }

  dimension: value__call_to_action__value__link {
    type: string
    sql: ${TABLE}.value.call_to_action.value.link ;;
    group_label: "Value Call to Action Value"
    group_item_label: "Link"
  }

  dimension: value__description {
    type: string
    sql: ${TABLE}.value.description ;;
    group_label: "Value"
    group_item_label: "Description"
  }

  dimension: value__image_crops___100x100__value {
    hidden: yes
    sql: ${TABLE}.value.image_crops._100x100.value ;;
    group_label: "Value Image Crops 100x100"
    group_item_label: "Value"
  }

  dimension: value__image_hash {
    type: string
    sql: ${TABLE}.value.image_hash ;;
    group_label: "Value"
    group_item_label: "Image Hash"
  }

  dimension: value__link {
    type: string
    sql: ${TABLE}.value.link ;;
    group_label: "Value"
    group_item_label: "Link"
  }

  dimension: value__name {
    type: string
    sql: ${TABLE}.value.name ;;
    group_label: "Value"
    group_item_label: "Name"
  }
}

view: adcreative__object_story_spec__link_data__image_crops___90x160__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adcreative__object_story_spec__link_data__image_crops___191x100__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adcreative__object_story_spec__link_data__image_crops___100x100__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: adcreative__object_story_spec__link_data__child_attachments__value__image_crops___100x100__value {
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}
