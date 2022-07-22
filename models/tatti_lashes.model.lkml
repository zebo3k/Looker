connection: "facebook"

# include all the views
include: "/views/**/*.view"

datagroup: tatti_lashes_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tatti_lashes_default_datagroup

explore: _sdc_primary_keys {}

explore: ads_insights_age_and_gender {
  join: campaigns {
    type: left_outer
    sql_on: ${ads_insights_age_and_gender.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: ads {
    type: left_outer
    sql_on: ${ads_insights_age_and_gender.ad_id} = ${ads.source_ad_id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ads_insights_age_and_gender.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: ads_insights_age_and_gender__actions {
    view_label: "Ads Insights Age And Gender: Actions"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.actions}) as ads_insights_age_and_gender__actions ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__website_ctr {
    view_label: "Ads Insights Age And Gender: Website Ctr"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.website_ctr}) as ads_insights_age_and_gender__website_ctr ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__action_values {
    view_label: "Ads Insights Age And Gender: Action Values"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.action_values}) as ads_insights_age_and_gender__action_values ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__unique_actions {
    view_label: "Ads Insights Age And Gender: Unique Actions"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.unique_actions}) as ads_insights_age_and_gender__unique_actions ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__outbound_clicks {
    view_label: "Ads Insights Age And Gender: Outbound Clicks"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.outbound_clicks}) as ads_insights_age_and_gender__outbound_clicks ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__unique_outbound_clicks {
    view_label: "Ads Insights Age And Gender: Unique Outbound Clicks"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.unique_outbound_clicks}) as ads_insights_age_and_gender__unique_outbound_clicks ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__video_p75_watched_actions {
    view_label: "Ads Insights Age And Gender: Video P75 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.video_p75_watched_actions}) as ads_insights_age_and_gender__video_p75_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__video_p25_watched_actions {
    view_label: "Ads Insights Age And Gender: Video P25 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.video_p25_watched_actions}) as ads_insights_age_and_gender__video_p25_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__video_p50_watched_actions {
    view_label: "Ads Insights Age And Gender: Video P50 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.video_p50_watched_actions}) as ads_insights_age_and_gender__video_p50_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__video_p100_watched_actions {
    view_label: "Ads Insights Age And Gender: Video P100 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.video_p100_watched_actions}) as ads_insights_age_and_gender__video_p100_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights_age_and_gender__video_30_sec_watched_actions {
    view_label: "Ads Insights Age And Gender: Video 30 Sec Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights_age_and_gender.video_30_sec_watched_actions}) as ads_insights_age_and_gender__video_30_sec_watched_actions ;;
    relationship: one_to_many
  }
}

explore: adcreative {
  join: adcreative__image_crops___90x160__value {
    view_label: "Adcreative: Image Crops 90x160 Value"
    sql: LEFT JOIN UNNEST(${adcreative.image_crops___90x160__value}) as adcreative__image_crops___90x160__value ;;
    relationship: one_to_many
  }

  join: adcreative__image_crops___191x100__value {
    view_label: "Adcreative: Image Crops 191x100 Value"
    sql: LEFT JOIN UNNEST(${adcreative.image_crops___191x100__value}) as adcreative__image_crops___191x100__value ;;
    relationship: one_to_many
  }

  join: adcreative__image_crops___100x100__value {
    view_label: "Adcreative: Image Crops 100x100 Value"
    sql: LEFT JOIN UNNEST(${adcreative.image_crops___100x100__value}) as adcreative__image_crops___100x100__value ;;
    relationship: one_to_many
  }

  join: adcreative__object_story_spec__link_data__retailer_item_ids {
    view_label: "Adcreative: Object Story Spec Link Data Retailer Item Ids"
    sql: LEFT JOIN UNNEST(${adcreative.object_story_spec__link_data__retailer_item_ids}) as adcreative__object_story_spec__link_data__retailer_item_ids ;;
    relationship: one_to_many
  }

  join: adcreative__object_story_spec__link_data__child_attachments {
    view_label: "Adcreative: Object Story Spec Link Data Child Attachments"
    sql: LEFT JOIN UNNEST(${adcreative.object_story_spec__link_data__child_attachments}) as adcreative__object_story_spec__link_data__child_attachments ;;
    relationship: one_to_many
  }

  join: adcreative__object_story_spec__link_data__image_crops___90x160__value {
    view_label: "Adcreative: Object Story Spec Link Data Image Crops 90x160 Value"
    sql: LEFT JOIN UNNEST(${adcreative.object_story_spec__link_data__image_crops___90x160__value}) as adcreative__object_story_spec__link_data__image_crops___90x160__value ;;
    relationship: one_to_many
  }

  join: adcreative__object_story_spec__link_data__image_crops___191x100__value {
    view_label: "Adcreative: Object Story Spec Link Data Image Crops 191x100 Value"
    sql: LEFT JOIN UNNEST(${adcreative.object_story_spec__link_data__image_crops___191x100__value}) as adcreative__object_story_spec__link_data__image_crops___191x100__value ;;
    relationship: one_to_many
  }

  join: adcreative__object_story_spec__link_data__image_crops___100x100__value {
    view_label: "Adcreative: Object Story Spec Link Data Image Crops 100x100 Value"
    sql: LEFT JOIN UNNEST(${adcreative.object_story_spec__link_data__image_crops___100x100__value}) as adcreative__object_story_spec__link_data__image_crops___100x100__value ;;
    relationship: one_to_many
  }

  join: adcreative__object_story_spec__link_data__child_attachments__value__image_crops___100x100__value {
    view_label: "Adcreative: Object Story Spec Link Data Child Attachments Value Image Crops 100x100 Value"
    sql: LEFT JOIN UNNEST(${adcreative__object_story_spec__link_data__child_attachments.value__image_crops___100x100__value}) as adcreative__object_story_spec__link_data__child_attachments__value__image_crops___100x100__value ;;
    relationship: one_to_many
  }
}

explore: campaigns {
  join: campaigns__ads__data {
    view_label: "Campaigns: Ads Data"
    sql: LEFT JOIN UNNEST(${campaigns.ads__data}) as campaigns__ads__data ;;
    relationship: one_to_many
  }
}

explore: ads {
  join: adsets {
    type: left_outer
    sql_on: ${ads.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ads.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: ads__tracking_specs {
    view_label: "Ads: Tracking Specs"
    sql: LEFT JOIN UNNEST(${ads.tracking_specs}) as ads__tracking_specs ;;
    relationship: one_to_many
  }

  join: ads__recommendations {
    view_label: "Ads: Recommendations"
    sql: LEFT JOIN UNNEST(${ads.recommendations}) as ads__recommendations ;;
    relationship: one_to_many
  }

  join: ads__conversion_specs {
    view_label: "Ads: Conversion Specs"
    sql: LEFT JOIN UNNEST(${ads.conversion_specs}) as ads__conversion_specs ;;
    relationship: one_to_many
  }

  join: ads__targeting__genders {
    view_label: "Ads: Targeting Genders"
    sql: LEFT JOIN UNNEST(${ads.targeting__genders}) as ads__targeting__genders ;;
    relationship: one_to_many
  }

  join: ads__targeting__locales {
    view_label: "Ads: Targeting Locales"
    sql: LEFT JOIN UNNEST(${ads.targeting__locales}) as ads__targeting__locales ;;
    relationship: one_to_many
  }

  join: ads__tracking_specs__value__post {
    view_label: "Ads: Tracking Specs Value Post"
    sql: LEFT JOIN UNNEST(${ads__tracking_specs.value__post}) as ads__tracking_specs__value__post ;;
    relationship: one_to_many
  }

  join: ads__tracking_specs__value__page {
    view_label: "Ads: Tracking Specs Value Page"
    sql: LEFT JOIN UNNEST(${ads__tracking_specs.value__page}) as ads__tracking_specs__value__page ;;
    relationship: one_to_many
  }

  join: ads__targeting__device_platforms {
    view_label: "Ads: Targeting Device Platforms"
    sql: LEFT JOIN UNNEST(${ads.targeting__device_platforms}) as ads__targeting__device_platforms ;;
    relationship: one_to_many
  }

  join: ads__conversion_specs__value__post {
    view_label: "Ads: Conversion Specs Value Post"
    sql: LEFT JOIN UNNEST(${ads__conversion_specs.value__post}) as ads__conversion_specs__value__post ;;
    relationship: one_to_many
  }

  join: ads__conversion_specs__value__page {
    view_label: "Ads: Conversion Specs Value Page"
    sql: LEFT JOIN UNNEST(${ads__conversion_specs.value__page}) as ads__conversion_specs__value__page ;;
    relationship: one_to_many
  }

  join: ads__targeting__facebook_positions {
    view_label: "Ads: Targeting Facebook Positions"
    sql: LEFT JOIN UNNEST(${ads.targeting__facebook_positions}) as ads__targeting__facebook_positions ;;
    relationship: one_to_many
  }

  join: ads__targeting__messenger_positions {
    view_label: "Ads: Targeting Messenger Positions"
    sql: LEFT JOIN UNNEST(${ads.targeting__messenger_positions}) as ads__targeting__messenger_positions ;;
    relationship: one_to_many
  }

  join: ads__targeting__custom_audiences {
    view_label: "Ads: Targeting Custom Audiences"
    sql: LEFT JOIN UNNEST(${ads.targeting__custom_audiences}) as ads__targeting__custom_audiences ;;
    relationship: one_to_many
  }

  join: ads__targeting__publisher_platforms {
    view_label: "Ads: Targeting Publisher Platforms"
    sql: LEFT JOIN UNNEST(${ads.targeting__publisher_platforms}) as ads__targeting__publisher_platforms ;;
    relationship: one_to_many
  }

  join: ads__targeting__instagram_positions {
    view_label: "Ads: Targeting Instagram Positions"
    sql: LEFT JOIN UNNEST(${ads.targeting__instagram_positions}) as ads__targeting__instagram_positions ;;
    relationship: one_to_many
  }

  join: ads__tracking_specs__value__fb_pixel {
    view_label: "Ads: Tracking Specs Value Fb Pixel"
    sql: LEFT JOIN UNNEST(${ads__tracking_specs.value__fb_pixel}) as ads__tracking_specs__value__fb_pixel ;;
    relationship: one_to_many
  }

  join: ads__tracking_specs__value__creative {
    view_label: "Ads: Tracking Specs Value Creative"
    sql: LEFT JOIN UNNEST(${ads__tracking_specs.value__creative}) as ads__tracking_specs__value__creative ;;
    relationship: one_to_many
  }

  join: ads__conversion_specs__value__leadgen {
    view_label: "Ads: Conversion Specs Value Leadgen"
    sql: LEFT JOIN UNNEST(${ads__conversion_specs.value__leadgen}) as ads__conversion_specs__value__leadgen ;;
    relationship: one_to_many
  }

  join: ads__tracking_specs__value__post_wall {
    view_label: "Ads: Tracking Specs Value Post Wall"
    sql: LEFT JOIN UNNEST(${ads__tracking_specs.value__post_wall}) as ads__tracking_specs__value__post_wall ;;
    relationship: one_to_many
  }

  join: ads__conversion_specs__value__post_wall {
    view_label: "Ads: Conversion Specs Value Post Wall"
    sql: LEFT JOIN UNNEST(${ads__conversion_specs.value__post_wall}) as ads__conversion_specs__value__post_wall ;;
    relationship: one_to_many
  }

  join: ads__tracking_specs__value__action_type {
    view_label: "Ads: Tracking Specs Value Action Type"
    sql: LEFT JOIN UNNEST(${ads__tracking_specs.value__action_type}) as ads__tracking_specs__value__action_type ;;
    relationship: one_to_many
  }

  join: ads__targeting__geo_locations__countries {
    view_label: "Ads: Targeting Geo Locations Countries"
    sql: LEFT JOIN UNNEST(${ads.targeting__geo_locations__countries}) as ads__targeting__geo_locations__countries ;;
    relationship: one_to_many
  }

  join: ads__conversion_specs__value__action_type {
    view_label: "Ads: Conversion Specs Value Action Type"
    sql: LEFT JOIN UNNEST(${ads__conversion_specs.value__action_type}) as ads__conversion_specs__value__action_type ;;
    relationship: one_to_many
  }

  join: ads__targeting__geo_locations__cities {
    view_label: "Ads: Targeting Geo Locations Cities"
    sql: LEFT JOIN UNNEST(${ads.targeting__geo_locations__cities}) as ads__targeting__geo_locations__cities ;;
    relationship: one_to_many
  }

  join: ads__tracking_specs__value__conversion_id {
    view_label: "Ads: Tracking Specs Value Conversion Id"
    sql: LEFT JOIN UNNEST(${ads__tracking_specs.value__conversion_id}) as ads__tracking_specs__value__conversion_id ;;
    relationship: one_to_many
  }

  join: ads__targeting__geo_locations__regions {
    view_label: "Ads: Targeting Geo Locations Regions"
    sql: LEFT JOIN UNNEST(${ads.targeting__geo_locations__regions}) as ads__targeting__geo_locations__regions ;;
    relationship: one_to_many
  }

  join: ads__conversion_specs__value__conversion_id {
    view_label: "Ads: Conversion Specs Value Conversion Id"
    sql: LEFT JOIN UNNEST(${ads__conversion_specs.value__conversion_id}) as ads__conversion_specs__value__conversion_id ;;
    relationship: one_to_many
  }

  join: ads__targeting__geo_locations__location_types {
    view_label: "Ads: Targeting Geo Locations Location Types"
    sql: LEFT JOIN UNNEST(${ads.targeting__geo_locations__location_types}) as ads__targeting__geo_locations__location_types ;;
    relationship: one_to_many
  }

  join: ads__targeting__geo_locations__country_groups {
    view_label: "Ads: Targeting Geo Locations Country Groups"
    sql: LEFT JOIN UNNEST(${ads.targeting__geo_locations__country_groups}) as ads__targeting__geo_locations__country_groups ;;
    relationship: one_to_many
  }

  join: ads__targeting__excluded_custom_audiences {
    view_label: "Ads: Targeting Excluded Custom Audiences"
    sql: LEFT JOIN UNNEST(${ads.targeting__excluded_custom_audiences}) as ads__targeting__excluded_custom_audiences ;;
    relationship: one_to_many
  }

  join: ads__targeting__flexible_spec__value__interests {
    view_label: "Ads: Targeting Flexible Spec Value Interests"
    sql: LEFT JOIN UNNEST(${ads.targeting__flexible_spec__value__interests}) as ads__targeting__flexible_spec__value__interests ;;
    relationship: one_to_many
  }

  join: ads__targeting__excluded_geo_locations__countries {
    view_label: "Ads: Targeting Excluded Geo Locations Countries"
    sql: LEFT JOIN UNNEST(${ads.targeting__excluded_geo_locations__countries}) as ads__targeting__excluded_geo_locations__countries ;;
    relationship: one_to_many
  }

  join: ads__targeting__flexible_spec__value__work_positions {
    view_label: "Ads: Targeting Flexible Spec Value Work Positions"
    sql: LEFT JOIN UNNEST(${ads.targeting__flexible_spec__value__work_positions}) as ads__targeting__flexible_spec__value__work_positions ;;
    relationship: one_to_many
  }

  join: ads__targeting__flexible_spec__value__work_employers {
    view_label: "Ads: Targeting Flexible Spec Value Work Employers"
    sql: LEFT JOIN UNNEST(${ads.targeting__flexible_spec__value__work_employers}) as ads__targeting__flexible_spec__value__work_employers ;;
    relationship: one_to_many
  }

  join: ads__targeting__excluded_geo_locations__location_types {
    view_label: "Ads: Targeting Excluded Geo Locations Location Types"
    sql: LEFT JOIN UNNEST(${ads.targeting__excluded_geo_locations__location_types}) as ads__targeting__excluded_geo_locations__location_types ;;
    relationship: one_to_many
  }

  join: ads__targeting__flexible_spec__value__education_majors {
    view_label: "Ads: Targeting Flexible Spec Value Education Majors"
    sql: LEFT JOIN UNNEST(${ads.targeting__flexible_spec__value__education_majors}) as ads__targeting__flexible_spec__value__education_majors ;;
    relationship: one_to_many
  }
}

explore: _sdc_rejected {}

explore: adsets {
  join: campaigns {
    type: left_outer
    sql_on: ${adsets.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: adsets__adlabels {
    view_label: "Adsets: Adlabels"
    sql: LEFT JOIN UNNEST(${adsets.adlabels}) as adsets__adlabels ;;
    relationship: one_to_many
  }

  join: adsets__targeting__genders {
    view_label: "Adsets: Targeting Genders"
    sql: LEFT JOIN UNNEST(${adsets.targeting__genders}) as adsets__targeting__genders ;;
    relationship: one_to_many
  }

  join: adsets__targeting__locales {
    view_label: "Adsets: Targeting Locales"
    sql: LEFT JOIN UNNEST(${adsets.targeting__locales}) as adsets__targeting__locales ;;
    relationship: one_to_many
  }

  join: adsets__targeting__device_platforms {
    view_label: "Adsets: Targeting Device Platforms"
    sql: LEFT JOIN UNNEST(${adsets.targeting__device_platforms}) as adsets__targeting__device_platforms ;;
    relationship: one_to_many
  }

  join: adsets__targeting__facebook_positions {
    view_label: "Adsets: Targeting Facebook Positions"
    sql: LEFT JOIN UNNEST(${adsets.targeting__facebook_positions}) as adsets__targeting__facebook_positions ;;
    relationship: one_to_many
  }

  join: adsets__targeting__messenger_positions {
    view_label: "Adsets: Targeting Messenger Positions"
    sql: LEFT JOIN UNNEST(${adsets.targeting__messenger_positions}) as adsets__targeting__messenger_positions ;;
    relationship: one_to_many
  }

  join: adsets__targeting__custom_audiences {
    view_label: "Adsets: Targeting Custom Audiences"
    sql: LEFT JOIN UNNEST(${adsets.targeting__custom_audiences}) as adsets__targeting__custom_audiences ;;
    relationship: one_to_many
  }

  join: adsets__targeting__publisher_platforms {
    view_label: "Adsets: Targeting Publisher Platforms"
    sql: LEFT JOIN UNNEST(${adsets.targeting__publisher_platforms}) as adsets__targeting__publisher_platforms ;;
    relationship: one_to_many
  }

  join: adsets__targeting__instagram_positions {
    view_label: "Adsets: Targeting Instagram Positions"
    sql: LEFT JOIN UNNEST(${adsets.targeting__instagram_positions}) as adsets__targeting__instagram_positions ;;
    relationship: one_to_many
  }

  join: adsets__targeting__geo_locations__countries {
    view_label: "Adsets: Targeting Geo Locations Countries"
    sql: LEFT JOIN UNNEST(${adsets.targeting__geo_locations__countries}) as adsets__targeting__geo_locations__countries ;;
    relationship: one_to_many
  }

  join: adsets__targeting__geo_locations__cities {
    view_label: "Adsets: Targeting Geo Locations Cities"
    sql: LEFT JOIN UNNEST(${adsets.targeting__geo_locations__cities}) as adsets__targeting__geo_locations__cities ;;
    relationship: one_to_many
  }

  join: adsets__targeting__geo_locations__regions {
    view_label: "Adsets: Targeting Geo Locations Regions"
    sql: LEFT JOIN UNNEST(${adsets.targeting__geo_locations__regions}) as adsets__targeting__geo_locations__regions ;;
    relationship: one_to_many
  }

  join: adsets__targeting__geo_locations__location_types {
    view_label: "Adsets: Targeting Geo Locations Location Types"
    sql: LEFT JOIN UNNEST(${adsets.targeting__geo_locations__location_types}) as adsets__targeting__geo_locations__location_types ;;
    relationship: one_to_many
  }

  join: adsets__targeting__geo_locations__country_groups {
    view_label: "Adsets: Targeting Geo Locations Country Groups"
    sql: LEFT JOIN UNNEST(${adsets.targeting__geo_locations__country_groups}) as adsets__targeting__geo_locations__country_groups ;;
    relationship: one_to_many
  }

  join: adsets__targeting__excluded_custom_audiences {
    view_label: "Adsets: Targeting Excluded Custom Audiences"
    sql: LEFT JOIN UNNEST(${adsets.targeting__excluded_custom_audiences}) as adsets__targeting__excluded_custom_audiences ;;
    relationship: one_to_many
  }

  join: adsets__targeting__flexible_spec__value__interests {
    view_label: "Adsets: Targeting Flexible Spec Value Interests"
    sql: LEFT JOIN UNNEST(${adsets.targeting__flexible_spec__value__interests}) as adsets__targeting__flexible_spec__value__interests ;;
    relationship: one_to_many
  }

  join: adsets__targeting__excluded_geo_locations__countries {
    view_label: "Adsets: Targeting Excluded Geo Locations Countries"
    sql: LEFT JOIN UNNEST(${adsets.targeting__excluded_geo_locations__countries}) as adsets__targeting__excluded_geo_locations__countries ;;
    relationship: one_to_many
  }

  join: adsets__targeting__flexible_spec__value__work_positions {
    view_label: "Adsets: Targeting Flexible Spec Value Work Positions"
    sql: LEFT JOIN UNNEST(${adsets.targeting__flexible_spec__value__work_positions}) as adsets__targeting__flexible_spec__value__work_positions ;;
    relationship: one_to_many
  }

  join: adsets__targeting__flexible_spec__value__work_employers {
    view_label: "Adsets: Targeting Flexible Spec Value Work Employers"
    sql: LEFT JOIN UNNEST(${adsets.targeting__flexible_spec__value__work_employers}) as adsets__targeting__flexible_spec__value__work_employers ;;
    relationship: one_to_many
  }

  join: adsets__targeting__excluded_geo_locations__location_types {
    view_label: "Adsets: Targeting Excluded Geo Locations Location Types"
    sql: LEFT JOIN UNNEST(${adsets.targeting__excluded_geo_locations__location_types}) as adsets__targeting__excluded_geo_locations__location_types ;;
    relationship: one_to_many
  }

  join: adsets__targeting__flexible_spec__value__education_majors {
    view_label: "Adsets: Targeting Flexible Spec Value Education Majors"
    sql: LEFT JOIN UNNEST(${adsets.targeting__flexible_spec__value__education_majors}) as adsets__targeting__flexible_spec__value__education_majors ;;
    relationship: one_to_many
  }
}

explore: ads_insights {
  join: campaigns {
    type: left_outer
    sql_on: ${ads_insights.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: ads {
    type: left_outer
    sql_on: ${ads_insights.ad_id} = ${ads.source_ad_id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ads_insights.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: ads_insights__actions {
    view_label: "Ads Insights: Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.actions}) as ads_insights__actions ;;
    relationship: one_to_many
  }

  join: ads_insights__website_ctr {
    view_label: "Ads Insights: Website Ctr"
    sql: LEFT JOIN UNNEST(${ads_insights.website_ctr}) as ads_insights__website_ctr ;;
    relationship: one_to_many
  }

  join: ads_insights__action_values {
    view_label: "Ads Insights: Action Values"
    sql: LEFT JOIN UNNEST(${ads_insights.action_values}) as ads_insights__action_values ;;
    relationship: one_to_many
  }

  join: ads_insights__unique_actions {
    view_label: "Ads Insights: Unique Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.unique_actions}) as ads_insights__unique_actions ;;
    relationship: one_to_many
  }

  join: ads_insights__outbound_clicks {
    view_label: "Ads Insights: Outbound Clicks"
    sql: LEFT JOIN UNNEST(${ads_insights.outbound_clicks}) as ads_insights__outbound_clicks ;;
    relationship: one_to_many
  }

  join: ads_insights__unique_outbound_clicks {
    view_label: "Ads Insights: Unique Outbound Clicks"
    sql: LEFT JOIN UNNEST(${ads_insights.unique_outbound_clicks}) as ads_insights__unique_outbound_clicks ;;
    relationship: one_to_many
  }

  join: ads_insights__video_play_curve_actions {
    view_label: "Ads Insights: Video Play Curve Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.video_play_curve_actions}) as ads_insights__video_play_curve_actions ;;
    relationship: one_to_many
  }

  join: ads_insights__video_p75_watched_actions {
    view_label: "Ads Insights: Video P75 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.video_p75_watched_actions}) as ads_insights__video_p75_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights__video_p25_watched_actions {
    view_label: "Ads Insights: Video P25 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.video_p25_watched_actions}) as ads_insights__video_p25_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights__video_p50_watched_actions {
    view_label: "Ads Insights: Video P50 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.video_p50_watched_actions}) as ads_insights__video_p50_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights__video_p100_watched_actions {
    view_label: "Ads Insights: Video P100 Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.video_p100_watched_actions}) as ads_insights__video_p100_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights__video_30_sec_watched_actions {
    view_label: "Ads Insights: Video 30 Sec Watched Actions"
    sql: LEFT JOIN UNNEST(${ads_insights.video_30_sec_watched_actions}) as ads_insights__video_30_sec_watched_actions ;;
    relationship: one_to_many
  }

  join: ads_insights__video_play_curve_actions__value__value {
    view_label: "Ads Insights: Video Play Curve Actions Value Value"
    sql: LEFT JOIN UNNEST(${ads_insights__video_play_curve_actions.value__value}) as ads_insights__video_play_curve_actions__value__value ;;
    relationship: one_to_many
  }
}
