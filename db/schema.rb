# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "AccountBase", primary_key: "AccountId", force: true do |t|
    t.integer  "AccountCategoryCode"
    t.uuid     "TerritoryId"
    t.uuid     "DefaultPriceLevelId"
    t.integer  "CustomerSizeCode"
    t.integer  "PreferredContactMethodCode"
    t.integer  "CustomerTypeCode"
    t.integer  "AccountRatingCode"
    t.integer  "IndustryCode"
    t.integer  "TerritoryCode"
    t.integer  "AccountClassificationCode"
    t.integer  "BusinessTypeCode"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "OriginatingLeadId"
    t.integer  "PaymentTermsCode"
    t.integer  "ShippingMethodCode"
    t.uuid     "PrimaryContactId"
    t.boolean  "ParticipatesInWorkflow"
    t.string   "Name",                         limit: 160
    t.string   "AccountNumber",                limit: 20
    t.decimal  "Revenue"
    t.integer  "NumberOfEmployees"
    t.text     "Description"
    t.string   "SIC",                          limit: 20
    t.integer  "OwnershipCode"
    t.decimal  "MarketCap"
    t.integer  "SharesOutstanding"
    t.string   "TickerSymbol",                 limit: 10
    t.string   "StockExchange",                limit: 20
    t.string   "WebSiteURL",                   limit: 200
    t.string   "FtpSiteURL",                   limit: 200
    t.string   "EMailAddress1",                limit: 100
    t.string   "EMailAddress2",                limit: 100
    t.string   "EMailAddress3",                limit: 100
    t.boolean  "DoNotPhone"
    t.boolean  "DoNotFax"
    t.string   "Telephone1",                   limit: 50
    t.boolean  "DoNotEMail"
    t.string   "Telephone2",                   limit: 50
    t.string   "Fax",                          limit: 50
    t.string   "Telephone3",                   limit: 50
    t.boolean  "DoNotPostalMail"
    t.boolean  "DoNotBulkEMail"
    t.boolean  "DoNotBulkPostalMail"
    t.decimal  "CreditLimit"
    t.boolean  "CreditOnHold"
    t.boolean  "IsPrivate"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.uuid     "ParentAccountId"
    t.decimal  "Aging30"
    t.integer  "StateCode",                                                          null: false
    t.decimal  "Aging60"
    t.integer  "StatusCode"
    t.decimal  "Aging90"
    t.integer  "PreferredAppointmentDayCode"
    t.uuid     "PreferredSystemUserId"
    t.integer  "PreferredAppointmentTimeCode"
    t.boolean  "Merged"
    t.boolean  "DoNotSendMM"
    t.uuid     "MasterId"
    t.datetime "LastUsedInCampaign"
    t.uuid     "PreferredServiceId"
    t.uuid     "PreferredEquipmentId"
    t.decimal  "ExchangeRate",                             precision: 23, scale: 10
    t.integer  "UTCConversionTimeZoneCode"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "CreditLimit_Base"
    t.decimal  "Aging30_Base"
    t.decimal  "Revenue_Base"
    t.decimal  "Aging90_Base"
    t.decimal  "MarketCap_Base"
    t.decimal  "Aging60_Base"
    t.string   "YomiName",                     limit: 160
    t.uuid     "OwnerId",                                                            null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "OwnerIdType",                                                        null: false
  end

  add_index "AccountBase", ["AccountNumber"], name: "fndx_Account_AccountNumber"
  add_index "AccountBase", ["EMailAddress1"], name: "ndx_emailaddress1"
  add_index "AccountBase", ["MasterId"], name: "fndx_for_cascaderelationship_account_master_account"
  add_index "AccountBase", ["Name"], name: "fndx_Account_Name"
  add_index "AccountBase", ["OriginatingLeadId"], name: "fndx_for_cascaderelationship_account_originating_lead"
  add_index "AccountBase", ["OwnerId", "StateCode"], name: "ndx_Security"
  add_index "AccountBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_accounts"
  add_index "AccountBase", ["ParentAccountId"], name: "fndx_for_cascaderelationship_account_parent_account"
  add_index "AccountBase", ["PreferredServiceId"], name: "fndx_for_cascaderelationship_service_accounts"
  add_index "AccountBase", ["PreferredSystemUserId"], name: "fndx_for_cascaderelationship_system_user_accounts"
  add_index "AccountBase", ["PrimaryContactId"], name: "fndx_for_cascaderelationship_account_primary_contact"
  add_index "AccountBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "AccountBase", ["Telephone1"], name: "ndx_SystemManaged_Account"
  add_index "AccountBase", ["Telephone1"], name: "ndx_telephone1"
  add_index "AccountBase", ["Telephone2"], name: "ndx_telephone2"
  add_index "AccountBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "AccountExtensionBase", primary_key: "AccountId", force: true do |t|
    t.string  "new_MainEmail",               limit: 100
    t.string  "new_Twitter",                 limit: 100
    t.string  "new_Facebook",                limit: 100
    t.string  "new_tag",                     limit: 164
    t.uuid    "new_OrganizationId"
    t.uuid    "new_Organization_Identifier"
    t.string  "new_Acronym",                 limit: 20
    t.string  "new_MAPCCoordinator",         limit: 100
    t.string  "new_BeatAreaofexpertise",     limit: 100
    t.integer "new_Numberofsubscribers"
    t.string  "new_AreaofExpertise",         limit: 164
    t.boolean "new_MediaInstitution"
    t.integer "new_OutletType1"
    t.integer "new_expensecategory"
    t.uuid    "new_PreferredUser"
  end

  create_table "AccountLeads", primary_key: "AccountLeadId", force: true do |t|
    t.uuid   "AccountId",     null: false
    t.uuid   "LeadId",        null: false
    t.binary "VersionNumber"
  end

  add_index "AccountLeads", ["AccountId", "LeadId"], name: "UQ_AccountLeads", unique: true
  add_index "AccountLeads", ["LeadId"], name: "ndx_for_cascaderelationship_lead_accounts"
  add_index "AccountLeads", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ActivityMimeAttachment", primary_key: "ActivityMimeAttachmentId", force: true do |t|
    t.integer  "AttachmentNumber",                           null: false
    t.binary   "VersionNumber"
    t.uuid     "SolutionId",                                 null: false
    t.uuid     "AttachmentId"
    t.uuid     "SupportingSolutionId"
    t.integer  "ObjectTypeCode",                             null: false
    t.boolean  "IsManaged",                                  null: false
    t.integer  "ComponentState",                             null: false
    t.datetime "OverwriteTime",                              null: false
    t.uuid     "ActivityMimeAttachmentIdUnique",             null: false
    t.uuid     "ObjectId",                                   null: false
    t.string   "AttachmentContentId",            limit: 250
  end

  add_index "ActivityMimeAttachment", ["ActivityMimeAttachmentIdUnique"], name: "UQ_ActivityMimeAttachmentBase_ActivityMimeAttachmentIdUnique", unique: true
  add_index "ActivityMimeAttachment", ["AttachmentId"], name: "ndx_attachmentid"
  add_index "ActivityMimeAttachment", ["ObjectId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_activity_pointer_activity_mime_attachments"
  add_index "ActivityMimeAttachment", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ActivityPartyBase", primary_key: "ActivityPartyId", force: true do |t|
    t.uuid     "ActivityId",                         null: false
    t.uuid     "PartyId"
    t.integer  "PartyObjectTypeCode",                null: false
    t.integer  "ParticipationTypeMask",              null: false
    t.string   "AddressUsed",           limit: 200
    t.string   "PartyIdName",           limit: 4000
    t.float    "Effort",                limit: 53
    t.string   "ExchangeEntryId",       limit: 1024
    t.uuid     "ResourceSpecId"
    t.binary   "VersionNumber"
    t.boolean  "DoNotPhone"
    t.datetime "ScheduledEnd"
    t.datetime "ScheduledStart"
    t.boolean  "IsPartyDeleted",                     null: false
  end

  add_index "ActivityPartyBase", ["ActivityId"], name: "ndx_ActivityId"
  add_index "ActivityPartyBase", ["AddressUsed", "PartyId", "ActivityId"], name: "fndx_UnresolvedParty"
  add_index "ActivityPartyBase", ["AddressUsed", "PartyObjectTypeCode", "ParticipationTypeMask"], name: "ndx_Cover"
  add_index "ActivityPartyBase", ["PartyId", "ActivityId", "ParticipationTypeMask", "ScheduledStart", "ScheduledEnd"], name: "ndx_MyActivities"
  add_index "ActivityPartyBase", ["ResourceSpecId"], name: "fndx_for_cascaderelationship_ActivityPartyResourceSpec"
  add_index "ActivityPartyBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ActivityPointerBase", primary_key: "ActivityId", force: true do |t|
    t.uuid     "OwningBusinessUnit"
    t.datetime "ActualEnd"
    t.binary   "VersionNumber"
    t.boolean  "IsBilled"
    t.uuid     "CreatedBy"
    t.text     "Description"
    t.datetime "ModifiedOn"
    t.uuid     "ServiceId"
    t.integer  "ActivityTypeCode",                                                       null: false
    t.integer  "StateCode",                                                              null: false
    t.datetime "ScheduledEnd"
    t.integer  "ScheduledDurationMinutes"
    t.integer  "ActualDurationMinutes"
    t.integer  "StatusCode"
    t.datetime "ActualStart"
    t.datetime "CreatedOn"
    t.integer  "PriorityCode"
    t.uuid     "RegardingObjectId"
    t.string   "Subject",                         limit: 200
    t.boolean  "IsWorkflowCreated"
    t.datetime "ScheduledStart"
    t.uuid     "ModifiedBy"
    t.integer  "RegardingObjectTypeCode"
    t.string   "RegardingObjectIdName",           limit: 4000
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "RegardingObjectIdYomiName",       limit: 4000
    t.datetime "RecApptMstrOverriddenCreatedOn"
    t.string   "RecApptMstrGlobalObjectId",       limit: 300
    t.boolean  "SeriesStatus"
    t.integer  "RecApptMstrOutlookOwnerApptId"
    t.text     "DeletedExceptionsList"
    t.datetime "NextExpansionInstanceDate"
    t.string   "RecApptMstrLocation",             limit: 200
    t.uuid     "GroupId"
    t.datetime "LastExpandedInstanceDate"
    t.integer  "ExpansionStateCode"
    t.string   "RecApptMstrCategory",             limit: 250
    t.boolean  "RecApptMstrIsAllDayEvent"
    t.string   "RecApptMstrSubcategory",          limit: 250
    t.uuid     "RecApptMstrSubscriptionId"
    t.integer  "RecApptMstrImportSequenceNumber"
    t.text     "ModifiedFieldsMask"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                                                                null: false
    t.integer  "InstanceTypeCode",                                                       null: false
    t.uuid     "SeriesId"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                                 precision: 23, scale: 10
    t.boolean  "IsRegularActivity",                                                      null: false
    t.datetime "OriginalStartDate"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "OwnerIdType",                                                            null: false
    t.datetime "QteCloseOverriddenCreatedOn"
    t.string   "QuoteNumber",                     limit: 100
    t.integer  "QteCloseImportSequenceNumber"
    t.string   "QteCloseCategory",                limit: 250
    t.integer  "QteCloseRevision"
    t.string   "QteCloseSubcategory",             limit: 250
    t.string   "ApptCategory",                    limit: 250
    t.string   "ApptGlobalObjectId",              limit: 300
    t.boolean  "ApptIsAllDayEvent"
    t.integer  "ApptImportSequenceNumber"
    t.integer  "ApptOutlookOwnerApptId"
    t.datetime "ApptOverriddenCreatedOn"
    t.string   "ApptSubcategory",                 limit: 250
    t.uuid     "ApptSubscriptionId"
    t.string   "ApptLocation",                    limit: 200
    t.decimal  "ActualCost_Base"
    t.integer  "CampActImportSequenceNumber"
    t.decimal  "BudgetedCost_Base"
    t.decimal  "ActualCost"
    t.boolean  "IgnoreInactiveListMembers"
    t.boolean  "DoNotSendOnOptOut"
    t.integer  "TypeCode"
    t.string   "CampActSubcategory",              limit: 250
    t.datetime "CampActOverriddenCreatedOn"
    t.integer  "ExcludeIfContactedInXDays"
    t.string   "CampActCategory",                 limit: 250
    t.decimal  "BudgetedCost"
    t.integer  "CampActChannelTypeCode"
    t.string   "FirstName",                       limit: 50
    t.datetime "ReceivedOn"
    t.integer  "ResponseCode"
    t.string   "YomiLastName",                    limit: 150
    t.datetime "CampResOverriddenCreatedOn"
    t.string   "YomiFirstName",                   limit: 150
    t.string   "CompanyName",                     limit: 100
    t.string   "CampResCategory",                 limit: 250
    t.string   "Telephone",                       limit: 50
    t.uuid     "OriginatingActivityId"
    t.string   "Fax",                             limit: 50
    t.string   "LastName",                        limit: 50
    t.integer  "CampResImportSequenceNumber"
    t.integer  "OriginatingActivityIdTypeCode"
    t.string   "EMailAddress",                    limit: 100
    t.integer  "CampResChannelTypeCode"
    t.string   "YomiCompanyName",                 limit: 100
    t.string   "PromotionCodeName",               limit: 250
    t.string   "CampResSubcategory",              limit: 250
    t.integer  "SuccessCount"
    t.integer  "OperationTypeCode"
    t.string   "BulkOperationNumber",             limit: 32
    t.integer  "TargetMembersCount"
    t.integer  "CreatedRecordTypeCode"
    t.text     "Parameters"
    t.integer  "ErrorNumber"
    t.integer  "TargetedRecordTypeCode"
    t.integer  "FailureCount"
    t.boolean  "Compressed"
    t.boolean  "ReadReceiptRequested"
    t.boolean  "DeliveryReceiptRequested"
    t.string   "EmailSubcategory",                limit: 250
    t.integer  "Notifications"
    t.string   "MessageId",                       limit: 200
    t.string   "Sender",                          limit: 250
    t.string   "ToRecipients",                    limit: 500
    t.datetime "EmailOverriddenCreatedOn"
    t.string   "SubmittedBy",                     limit: 250
    t.integer  "EmailImportSequenceNumber"
    t.boolean  "EmailDirectionCode"
    t.string   "MimeType",                        limit: 256
    t.uuid     "MessageIdDupCheck"
    t.integer  "DeliveryAttempts"
    t.string   "TrackingToken",                   limit: 50
    t.string   "EmailCategory",                   limit: 250
    t.integer  "SvcApptImportSequenceNumber"
    t.string   "SvcApptLocation",                 limit: 500
    t.boolean  "SvcApptIsAllDayEvent"
    t.string   "SvcApptSubcategory",              limit: 250
    t.uuid     "SiteId"
    t.datetime "SvcApptOverriddenCreatedOn"
    t.string   "SvcApptCategory",                 limit: 250
    t.uuid     "SvcApptSubscriptionId"
    t.string   "TaskCategory",                    limit: 250
    t.integer  "PercentComplete"
    t.datetime "TaskOverriddenCreatedOn"
    t.uuid     "TaskSubscriptionId"
    t.string   "TaskSubcategory",                 limit: 250
    t.integer  "TaskImportSequenceNumber"
    t.string   "Address",                         limit: 200
    t.integer  "LetterImportSequenceNumber"
    t.uuid     "LetterSubscriptionId"
    t.string   "LetterCategory",                  limit: 250
    t.string   "LetterSubcategory",               limit: 250
    t.boolean  "LetterDirectionCode"
    t.datetime "LetterOverriddenCreatedOn"
    t.datetime "PhoneOverriddenCreatedOn"
    t.integer  "PhoneImportSequenceNumber"
    t.string   "PhoneNumber",                     limit: 200
    t.string   "PhoneSubcategory",                limit: 250
    t.boolean  "PhoneDirectionCode"
    t.uuid     "PhoneSubscriptionId"
    t.string   "PhoneCategory",                   limit: 250
    t.string   "OrdCloseSubcategory",             limit: 250
    t.integer  "OrdCloseImportSequenceNumber"
    t.integer  "OrdCloseRevision"
    t.string   "OrderNumber",                     limit: 100
    t.string   "OrdCloseCategory",                limit: 250
    t.datetime "OrdCloseOverriddenCreatedOn"
    t.string   "FaxNumber",                       limit: 200
    t.string   "CoverPageName",                   limit: 100
    t.integer  "NumberOfPages"
    t.uuid     "FaxSubscriptionId"
    t.integer  "FaxImportSequenceNumber"
    t.string   "BillingCode",                     limit: 50
    t.string   "Tsid",                            limit: 20
    t.boolean  "FaxDirectionCode"
    t.datetime "FaxOverriddenCreatedOn"
    t.string   "FaxSubcategory",                  limit: 250
    t.string   "FaxCategory",                     limit: 250
    t.string   "IncResSubcategory",               limit: 250
    t.string   "IncResCategory",                  limit: 250
    t.integer  "IncResImportSequenceNumber"
    t.datetime "IncResOverriddenCreatedOn"
    t.integer  "TimeSpent"
    t.uuid     "CompetitorId"
    t.datetime "OppCloseOverriddenCreatedOn"
    t.integer  "OppCloseImportSequenceNumber"
    t.decimal  "ActualRevenue_Base"
    t.decimal  "ActualRevenue"
    t.string   "OppCloseSubcategory",             limit: 250
    t.string   "OppCloseCategory",                limit: 250
    t.boolean  "IsMapiPrivate"
    t.boolean  "LeftVoiceMail"
  end

  add_index "ActivityPointerBase", ["ActivityId", "ActualEnd"], name: "ndx_MyClosedActivities"
  add_index "ActivityPointerBase", ["ActivityId", "ExpansionStateCode", "SeriesStatus", "NextExpansionInstanceDate"], name: "fndx_RecurringAppointmentMaster_PartialExpansionStatus"
  add_index "ActivityPointerBase", ["ActivityId", "ScheduledStart", "ScheduledEnd", "ActivityTypeCode", "IsRegularActivity", "InstanceTypeCode", "StateCode"], name: "ndx_for_MyActivities"
  add_index "ActivityPointerBase", ["ActivityTypeCode", "ActivityId", "StateCode"], name: "ndx_for_MySubActivities"
  add_index "ActivityPointerBase", ["ActivityTypeCode", "ScheduledEnd", "ActivityId"], name: "ndx_SubActivityScheduledEnd"
  add_index "ActivityPointerBase", ["ActivityTypeCode", "ScheduledStart", "ActivityId"], name: "ndx_SubActivityScheduledStart"
  add_index "ActivityPointerBase", ["ActivityTypeCode", "StateCode", "ActivityId"], name: "ndx_Core_ActivityTypeCode"
  add_index "ActivityPointerBase", ["ActivityTypeCode", "Subject", "ActivityId"], name: "ndx_SubActivitySubject"
  add_index "ActivityPointerBase", ["ActivityTypeCode", "VersionNumber"], name: "ndx_Sync_ActivityPointer"
  add_index "ActivityPointerBase", ["CompetitorId"], name: "fndx_OpportunityClose_for_cascaderelationship_competitor_opportunity_activities"
  add_index "ActivityPointerBase", ["CreatedOn", "Subject", "RegardingObjectId", "StateCode", "ActivityId"], name: "ndx_SystemManaged_Fax"
  add_index "ActivityPointerBase", ["CreatedOn", "Subject", "RegardingObjectId", "StateCode", "ActivityId"], name: "ndx_SystemManaged_Letter"
  add_index "ActivityPointerBase", ["IsRegularActivity", "StateCode"], name: "ndx_ActivityChart"
  add_index "ActivityPointerBase", ["MessageIdDupCheck", "MessageId"], name: "fndx_Email_MessageId", unique: true
  add_index "ActivityPointerBase", ["ModifiedOn", "ActivityId"], name: "ndx_ModifiedOn"
  add_index "ActivityPointerBase", ["OperationTypeCode"], name: "fndx_BulkOperation_Core"
  add_index "ActivityPointerBase", ["OriginalStartDate", "ActivityId", "InstanceTypeCode", "SeriesId"], name: "fndx_Appointment_sync_recurring_instances"
  add_index "ActivityPointerBase", ["OriginatingActivityId", "OriginatingActivityIdTypeCode"], name: "fndx_CampaignResponse_for_cascaderelationship_with_fax"
  add_index "ActivityPointerBase", ["OwnerId", "CreatedOn", "ActivityId", "Subject", "CreatedRecordTypeCode", "StatusCode", "TargetMembersCount", "SuccessCount", "FailureCount"], name: "ndx_SystemManaged_BulkOperation"
  add_index "ActivityPointerBase", ["OwnerId", "Subject", "ActivityId", "RegardingObjectId", "PriorityCode"], name: "ndx_SystemManaged_CampaignActivity"
  add_index "ActivityPointerBase", ["OwnerId", "Subject", "ActivityId", "ResponseCode", "RegardingObjectId", "PriorityCode"], name: "ndx_SystemManaged_CampaignResponse"
  add_index "ActivityPointerBase", ["OwnerId"], name: "ndx_Security"
  add_index "ActivityPointerBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_activitypointer"
  add_index "ActivityPointerBase", ["ReceivedOn"], name: "fndx_CampaignResponse_for_receivedon"
  add_index "ActivityPointerBase", ["RegardingObjectId", "RegardingObjectTypeCode"], name: "fndx_for_cascaderelationship_regardingobjectid"
  add_index "ActivityPointerBase", ["RegardingObjectId", "StateCode", "CreatedOn"], name: "fndx_for_incident_resolution_trend"
  add_index "ActivityPointerBase", ["RegardingObjectTypeCode"], name: "fndx_neglectedcase"
  add_index "ActivityPointerBase", ["ScheduledEnd", "ActivityId", "IsRegularActivity", "StateCode"], name: "ndx_ActivityScheduledEnd"
  add_index "ActivityPointerBase", ["ScheduledStart", "ActivityId"], name: "ndx_ActivityScheduledStart"
  add_index "ActivityPointerBase", ["SeriesId", "OriginalStartDate", "InstanceTypeCode", "ActivityId"], name: "fndx_for_recurring_activities"
  add_index "ActivityPointerBase", ["ServiceId"], name: "fndx_for_cascaderelationship_serviceid"
  add_index "ActivityPointerBase", ["SiteId"], name: "fndx_ServiceAppointment_for_cascaderelationship_with_site"
  add_index "ActivityPointerBase", ["StateCode", "OwnerId", "ScheduledEnd", "Subject", "PriorityCode", "RegardingObjectId", "ActivityId"], name: "ndx_SystemManaged_Task"
  add_index "ActivityPointerBase", ["StateCode", "ScheduledEnd", "Subject", "RegardingObjectId", "ActivityId", "PriorityCode", "PhoneNumber"], name: "ndx_SystemManaged_PhoneCall"
  add_index "ActivityPointerBase", ["StateCode", "ScheduledStart", "Subject", "ScheduledEnd", "RegardingObjectId", "PriorityCode", "ApptLocation"], name: "ndx_SystemManaged_Appointment"
  add_index "ActivityPointerBase", ["StateCode", "ScheduledStart", "Subject", "ServiceId", "PriorityCode", "ScheduledEnd", "ActivityId", "RegardingObjectId"], name: "ndx_SystemManaged_ServiceAppointment"
  add_index "ActivityPointerBase", ["StateCode", "Subject", "ActivityId"], name: "ndx_SystemManaged_OpportunityClose"
  add_index "ActivityPointerBase", ["StateCode", "Subject", "ActivityId"], name: "ndx_SystemManaged_OrderClose"
  add_index "ActivityPointerBase", ["StateCode", "Subject", "ActivityId"], name: "ndx_SystemManaged_QuoteClose"
  add_index "ActivityPointerBase", ["StateCode", "Subject", "RegardingObjectId", "PriorityCode", "RecApptMstrLocation"], name: "ndx_SystemManaged_RecurringAppointmentMaster"
  add_index "ActivityPointerBase", ["StatusCode", "EmailDirectionCode", "ActualEnd", "Subject", "RegardingObjectId", "ActivityId", "PriorityCode"], name: "ndx_SystemManaged_Email"
  add_index "ActivityPointerBase", ["Subject", "ActivityId"], name: "ndx_ActivitySubject"
  add_index "ActivityPointerBase", ["Subject", "ActivityId"], name: "ndx_SystemManaged_IncidentResolution"
  add_index "ActivityPointerBase", ["TrackingToken", "MessageId"], name: "fndx_Email_Cover"

  create_table "AnnotationBase", primary_key: "AnnotationId", force: true do |t|
    t.integer  "ObjectTypeCode"
    t.uuid     "ObjectId"
    t.uuid     "OwningBusinessUnit"
    t.string   "Subject",              limit: 500
    t.boolean  "IsDocument",                       null: false
    t.text     "NoteText"
    t.string   "MimeType",             limit: 256
    t.string   "LangId",               limit: 2
    t.text     "DocumentBody"
    t.datetime "CreatedOn"
    t.integer  "FileSize"
    t.string   "FileName"
    t.uuid     "CreatedBy"
    t.boolean  "IsPrivate"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.string   "StepId",               limit: 32
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                          null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "OwnerIdType",                      null: false
  end

  add_index "AnnotationBase", ["ModifiedOn"], name: "ndx_SystemManaged_Annotation"
  add_index "AnnotationBase", ["ObjectId", "ObjectTypeCode"], name: "cndx_Annotation"
  add_index "AnnotationBase", ["OwnerId"], name: "ndx_Security"
  add_index "AnnotationBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_annotations"
  add_index "AnnotationBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ApplicationFileBase", primary_key: "FileId", force: true do |t|
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.text     "Body"
    t.datetime "ModifiedOn"
    t.datetime "CreatedOn"
    t.uuid     "OrganizationId",                 null: false
    t.string   "Name",               limit: 256
    t.binary   "VersionNumber"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "ApplicationFileBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "AppointmentBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "AsyncOperationBase", primary_key: "Sequence", force: true do |t|
    t.string   "MessageName",               limit: 160
    t.integer  "Depth",                                  null: false
    t.integer  "PrimaryEntityType"
    t.text     "Data"
    t.uuid     "RegardingObjectId"
    t.string   "WorkflowStageName",         limit: 256
    t.integer  "OperationType"
    t.string   "DependencyToken",           limit: 256
    t.string   "RecurrencePattern",         limit: 256
    t.string   "Name",                      limit: 256
    t.datetime "PostponeUntil"
    t.text     "WorkflowState"
    t.integer  "TimeZoneRuleVersionNumber"
    t.uuid     "OwningBusinessUnit",                     null: false
    t.boolean  "IsWaitingForEvent"
    t.uuid     "CreatedBy",                              null: false
    t.integer  "ErrorCode"
    t.uuid     "ModifiedBy",                             null: false
    t.uuid     "CorrelationId",                          null: false
    t.datetime "RecurrenceStartTime"
    t.integer  "StatusCode"
    t.uuid     "AsyncOperationId",                       null: false
    t.uuid     "RequestId"
    t.boolean  "WorkflowIsBlocked"
    t.datetime "ModifiedOn"
    t.text     "Message"
    t.datetime "StartedOn"
    t.string   "HostId",                    limit: 256
    t.integer  "StateCode",                              null: false
    t.uuid     "WorkflowActivationId"
    t.datetime "CompletedOn"
    t.datetime "CorrelationUpdatedTime",                 null: false
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "RetryCount"
    t.datetime "CreatedOn"
    t.string   "RegardingObjectIdName",     limit: 4000
    t.integer  "RegardingObjectTypeCode"
    t.string   "RegardingObjectIdYomiName", limit: 4000
    t.text     "FriendlyMessage"
    t.float    "ExecutionTimeSpan",         limit: 53,   null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwningExtensionId"
    t.uuid     "OwnerId",                                null: false
    t.string   "OwningExtensionIdName",     limit: 4000
    t.integer  "OwningExtensionTypeCode"
    t.integer  "OwnerIdType",                            null: false
  end

  add_index "AsyncOperationBase", ["OperationType", "StartedOn"], name: "ndx_OperationType_StartedOn_AsyncOperation"
  add_index "AsyncOperationBase", ["OwningBusinessUnit"], name: "ndx_for_cascaderelationship_business_unit_asyncoperation"
  add_index "AsyncOperationBase", ["RecurrenceStartTime", "Name", "StatusCode", "OwnerId"], name: "ndx_SystemManaged_AsyncOperation"
  add_index "AsyncOperationBase", ["RegardingObjectId"], name: "fndx_RegardingObjectId_AsyncOperation"
  add_index "AsyncOperationBase", ["RequestId"], name: "fndx_RequestId_AsyncOperation"
  add_index "AsyncOperationBase", ["StartedOn"], name: "fndx_StartedOn_AsyncOperation"
  add_index "AsyncOperationBase", ["StateCode", "Sequence", "DependencyToken", "PostponeUntil"], name: "ndx_Cover_AsyncOperation", unique: true
  add_index "AsyncOperationBase", ["WorkflowActivationId"], name: "fndx_for_cascaderelationship_lk_asyncoperation_workflowactivationid"

  create_table "Attachment", primary_key: "AttachmentId", force: true do |t|
    t.binary  "VersionNumber"
    t.string  "MimeType",      limit: 256
    t.text    "Body"
    t.string  "Subject",       limit: 2000
    t.string  "FileName"
    t.integer "FileSize"
  end

  create_table "Attribute", id: false, force: true do |t|
  end

  create_table "AttributeIds", primary_key: "AttributeId", force: true do |t|
  end

  create_table "AttributeLookupValue", id: false, force: true do |t|
  end

  create_table "AttributeMapBase", primary_key: "AttributeMapId", force: true do |t|
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.boolean  "IsSystem",                        null: false
    t.uuid     "EntityMapId",                     null: false
    t.uuid     "OrganizationId",                  null: false
    t.datetime "CreatedOn"
    t.string   "TargetAttributeName",  limit: 50, null: false
    t.string   "SourceAttributeName",  limit: 50, null: false
    t.uuid     "ModifiedBy"
    t.uuid     "ParentAttributeMapId"
    t.integer  "ComponentState",                  null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "AttributeMapIdUnique",            null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IsManaged",                       null: false
    t.datetime "OverwriteTime",                   null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "SolutionId",                      null: false
  end

  add_index "AttributeMapBase", ["AttributeMapIdUnique"], name: "UQ_AttributeMapBase_AttributeMapIdUnique", unique: true
  add_index "AttributeMapBase", ["EntityMapId"], name: "ndx_for_cascaderelationship_entity_map_attribute_maps"
  add_index "AttributeMapBase", ["ParentAttributeMapId"], name: "fndx_for_cascaderelationship_attribute_map_attribute_maps"
  add_index "AttributeMapBase", ["TargetAttributeName", "SourceAttributeName"], name: "ndx_names"
  add_index "AttributeMapBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "AttributePicklistValue", id: false, force: true do |t|
  end

  create_table "AttributeTypes", id: false, force: true do |t|
  end

  create_table "AuditBase", id: false, force: true do |t|
    t.uuid     "CallingUserId"
    t.uuid     "UserId",                   null: false
    t.datetime "CreatedOn",                null: false
    t.uuid     "TransactionId",            null: false
    t.text     "ChangeData"
    t.integer  "Action"
    t.integer  "Operation",                null: false
    t.uuid     "ObjectId",                 null: false
    t.uuid     "AuditId",                  null: false
    t.text     "AttributeMask"
    t.integer  "ObjectTypeCode"
    t.string   "ObjectIdName",   limit: 1
  end

  add_index "AuditBase", ["CallingUserId", "Action", "Operation"], name: "ndx_SystemManaged_Audit"
  add_index "AuditBase", ["CreatedOn", "AuditId"], name: "cndx_PrimaryKey_Audit", unique: true
  add_index "AuditBase", ["ObjectId"], name: "ndx_ObjectId"
  add_index "AuditBase", ["ObjectTypeCode"], name: "fndx_ObjectTypeCode"
  add_index "AuditBase", ["UserId"], name: "ndx_UserId"

  create_table "BuildVersion", primary_key: "BuildDate", force: true do |t|
    t.binary  "TimeStamp"
    t.integer "BuildNumber"
    t.integer "BuildQFE"
    t.integer "MajorVersion"
    t.integer "MinorVersion"
    t.integer "Revision"
    t.string  "LastDatabaseQfe",     limit: 100
    t.string  "MinSupportedClient",  limit: 20
    t.string  "MaxSupportedClient",  limit: 20
    t.string  "MinSupportedRouter",  limit: 20
    t.string  "MaxSupportedRouter",  limit: 20
    t.integer "RevisionForMetadata"
  end

  create_table "BulkDeleteFailureBase", primary_key: "BulkDeleteFailureId", force: true do |t|
    t.string  "ErrorDescription",          limit: 512
    t.uuid    "AsyncOperationId"
    t.uuid    "RegardingObjectId"
    t.integer "ErrorNumber"
    t.integer "OrderedQueryIndex"
    t.uuid    "BulkDeleteOperationId"
    t.string  "RegardingObjectIdYomiName", limit: 4000
    t.integer "RegardingObjectTypeCode"
    t.string  "RegardingObjectIdName",     limit: 4000
  end

  add_index "BulkDeleteFailureBase", ["BulkDeleteOperationId"], name: "fndx_for_cascaderelationship_BulkDeleteOperation_BulkDeleteFailure"

  create_table "BulkDeleteIndependent_a1818629973040169ef2b7d029b058ab", id: false, force: true do |t|
    t.uuid    "RecordId",               null: false
    t.string  "EntityName", limit: 128
    t.boolean "Processed"
    t.integer "QueryIndex"
  end

  add_index "BulkDeleteIndependent_a1818629973040169ef2b7d029b058ab", ["RecordId", "QueryIndex"], name: "idx_RecordId_QueryIndex"

  create_table "BulkDeleteIndependent_b29842b6585b4bbbbe1905c653de01cc", id: false, force: true do |t|
    t.uuid    "RecordId",               null: false
    t.string  "EntityName", limit: 128
    t.boolean "Processed"
    t.integer "QueryIndex"
  end

  add_index "BulkDeleteIndependent_b29842b6585b4bbbbe1905c653de01cc", ["RecordId", "QueryIndex"], name: "idx_RecordId_QueryIndex"

  create_table "BulkDeleteIndependent_bb14d43fe1004e70b42eb393ebb09830", id: false, force: true do |t|
    t.uuid    "RecordId",               null: false
    t.string  "EntityName", limit: 128
    t.boolean "Processed"
    t.integer "QueryIndex"
  end

  add_index "BulkDeleteIndependent_bb14d43fe1004e70b42eb393ebb09830", ["RecordId", "QueryIndex"], name: "idx_RecordId_QueryIndex"

  create_table "BulkDeleteIndependent_d57aaef64faa431e994fbac9efc75044", id: false, force: true do |t|
    t.uuid    "RecordId",               null: false
    t.string  "EntityName", limit: 128
    t.boolean "Processed"
    t.integer "QueryIndex"
  end

  add_index "BulkDeleteIndependent_d57aaef64faa431e994fbac9efc75044", ["RecordId", "QueryIndex"], name: "idx_RecordId_QueryIndex"

  create_table "BulkDeleteOperationBase", primary_key: "BulkDeleteOperationId", force: true do |t|
    t.uuid     "OwningUser"
    t.datetime "ModifiedOn"
    t.boolean  "IsRecurring",               null: false
    t.integer  "ProcessingQEIndex"
    t.uuid     "AsyncOperationId"
    t.integer  "UTCConversionTimeZoneCode"
    t.text     "OrderedQuerySetXml"
    t.integer  "FailureCount"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedBy"
    t.uuid     "OwningBusinessUnit"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "SuccessCount"
    t.datetime "CreatedOn",                 null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "OwnerIdType",               null: false
  end

  add_index "BulkDeleteOperationBase", ["AsyncOperationId"], name: "fndx_for_cascaderelationship_AsyncOperation_BulkDeleteOperation"
  add_index "BulkDeleteOperationBase", ["IsRecurring", "SuccessCount", "FailureCount"], name: "ndx_SystemManaged_BulkDeleteOperation"
  add_index "BulkDeleteOperationBase", ["OwningUser", "OwningBusinessUnit"], name: "ndx_Security"

  create_table "BulkOperationLogBase", primary_key: "BulkOperationLogId", force: true do |t|
    t.uuid    "RegardingObjectId"
    t.integer "ErrorNumber"
    t.uuid    "CreatedObjectId"
    t.uuid    "BulkOperationId",           null: false
    t.text    "AdditionalInfo"
    t.integer "RegardingObjectIdTypeCode"
    t.integer "CreatedObjectIdTypeCode"
  end

  add_index "BulkOperationLogBase", ["BulkOperationId"], name: "ndx_for_cascaderelationship_BulkOperation_logs"
  add_index "BulkOperationLogBase", ["CreatedObjectId", "CreatedObjectIdTypeCode"], name: "ndx_for_cascaderelationship_CreatedOpportunity_BulkOperationLogs"
  add_index "BulkOperationLogBase", ["RegardingObjectId", "RegardingObjectIdTypeCode"], name: "ndx_for_cascaderelationship_SourceAccount_BulkOperationLogs"

  create_table "BusinessUnitBase", primary_key: "BusinessUnitId", force: true do |t|
    t.uuid     "OrganizationId",                                              null: false
    t.uuid     "UserGroupId"
    t.string   "Name",                  limit: 160,                           null: false
    t.text     "Description"
    t.string   "DivisionName",          limit: 100
    t.string   "FileAsName",            limit: 100
    t.string   "TickerSymbol",          limit: 10
    t.string   "StockExchange",         limit: 20
    t.integer  "UTCOffset"
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.float    "CreditLimit",           limit: 53
    t.string   "CostCenter",            limit: 100
    t.string   "WebSiteUrl",            limit: 200
    t.string   "FtpSiteUrl",            limit: 200
    t.string   "EMailAddress",          limit: 100
    t.integer  "InheritanceMask"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.boolean  "WorkflowSuspended"
    t.uuid     "ParentBusinessUnitId"
    t.boolean  "IsDisabled"
    t.string   "DisabledReason",        limit: 500
    t.binary   "VersionNumber"
    t.text     "Picture"
    t.uuid     "CalendarId"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.decimal  "ExchangeRate",                      precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "TransactionCurrencyId"
  end

  add_index "BusinessUnitBase", ["CalendarId"], name: "fndx_for_cascaderelationship_BusinessUnit_Calendar"
  add_index "BusinessUnitBase", ["IsDisabled", "WebSiteUrl"], name: "ndx_SystemManaged_BusinessUnit"
  add_index "BusinessUnitBase", ["Name", "ParentBusinessUnitId"], name: "AK1_BusinessUnitBase", unique: true
  add_index "BusinessUnitBase", ["ParentBusinessUnitId"], name: "fndx_for_cascaderelationship_business_unit_parent_business_unit"
  add_index "BusinessUnitBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "BusinessUnitExtensionBase", primary_key: "BusinessUnitId", force: true do |t|
  end

  create_table "BusinessUnitMap", primary_key: "BusinessUnitMapId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "SubBusinessId", null: false
    t.uuid   "BusinessId",    null: false
  end

  add_index "BusinessUnitMap", ["BusinessId", "SubBusinessId"], name: "cndx_Cover"
  add_index "BusinessUnitMap", ["SubBusinessId"], name: "ndx_for_cascaderelationship_business_map_constraint"
  add_index "BusinessUnitMap", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "BusinessUnitNewsArticleBase", primary_key: "BusinessUnitNewsArticleId", force: true do |t|
    t.uuid     "OrganizationId",                        null: false
    t.datetime "ActiveOn"
    t.datetime "ActiveUntil"
    t.text     "NewsArticle"
    t.integer  "ArticleTypeCode"
    t.boolean  "ShowOnHomepage"
    t.string   "ArticleTitle",              limit: 300
    t.string   "ArticleUrl",                limit: 200
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "BusinessUnitNewsArticleBase", ["ArticleTitle", "ActiveUntil"], name: "ndx_SystemManaged_BusinessUnitNewsArticle"
  add_index "BusinessUnitNewsArticleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CalendarBase", primary_key: "CalendarId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.text     "Description"
    t.datetime "CreatedOn"
    t.string   "Name",               limit: 160
    t.uuid     "BusinessUnitId"
    t.binary   "VersionNumber"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.uuid     "PrimaryUserId"
    t.uuid     "OrganizationId",                 null: false
    t.boolean  "IsShared",                       null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "CalendarBase", ["BusinessUnitId"], name: "fndx_Security"
  add_index "CalendarBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CalendarRuleBase", primary_key: "CalendarRuleId", force: true do |t|
    t.boolean  "IsVaried"
    t.integer  "Rank",                               null: false
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.text     "Description"
    t.float    "Effort",                 limit: 53
    t.datetime "EndTime"
    t.integer  "TimeCode"
    t.datetime "StartTime"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.integer  "Offset"
    t.boolean  "IsSimple"
    t.string   "Name",                   limit: 160
    t.integer  "TimeZoneCode"
    t.boolean  "IsSelected"
    t.integer  "ExtentCode"
    t.datetime "EffectiveIntervalEnd"
    t.datetime "ModifiedOn"
    t.uuid     "CalendarId",                         null: false
    t.uuid     "InnerCalendarId"
    t.string   "Pattern",                limit: 256
    t.string   "GroupDesignator",        limit: 36
    t.boolean  "IsModified"
    t.integer  "SubCode"
    t.integer  "Duration"
    t.datetime "EffectiveIntervalStart"
    t.uuid     "ServiceId"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "CalendarRuleBase", ["CalendarId"], name: "ndx_for_cascaderelationship_calendar_calendar_rules"
  add_index "CalendarRuleBase", ["InnerCalendarId"], name: "fndx_for_cascaderelationship_inner_calendar_calendar_rules"
  add_index "CalendarRuleBase", ["ServiceId"], name: "fndx_for_cascaderelationship_service_calendar_rules"
  add_index "CalendarRuleBase", ["StartTime", "EndTime"], name: "ndx_SystemManaged_CalendarRule"
  add_index "CalendarRuleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CampaignActivityBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "CampaignActivityItemBase", primary_key: "CampaignActivityItemId", force: true do |t|
    t.uuid    "ItemId",             null: false
    t.integer "ItemObjectTypeCode", null: false
    t.binary  "VersionNumber"
    t.uuid    "CampaignActivityId", null: false
  end

  add_index "CampaignActivityItemBase", ["CampaignActivityId"], name: "ndx_for_cascaderelationship_ActivityPointer_CampaignActivityItems"
  add_index "CampaignActivityItemBase", ["ItemId", "ItemObjectTypeCode"], name: "ndx_for_cascaderelationship_List_CampaignActivityItem"
  add_index "CampaignActivityItemBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CampaignBase", primary_key: "CampaignId", force: true do |t|
    t.integer  "TypeCode"
    t.datetime "ProposedEnd"
    t.decimal  "BudgetedCost"
    t.datetime "CreatedOn"
    t.string   "PromotionCodeName",                    limit: 128
    t.datetime "ModifiedOn"
    t.uuid     "PriceListId"
    t.integer  "StatusCode"
    t.uuid     "CreatedBy"
    t.boolean  "IsTemplate"
    t.datetime "ActualStart"
    t.uuid     "OwningBusinessUnit"
    t.decimal  "TotalActualCost"
    t.string   "Message",                              limit: 256
    t.uuid     "ModifiedBy"
    t.decimal  "ExpectedRevenue"
    t.binary   "VersionNumber"
    t.string   "CodeName",                             limit: 32
    t.datetime "ProposedStart"
    t.text     "Objective"
    t.datetime "ActualEnd"
    t.integer  "StateCode",                                                                  null: false
    t.decimal  "OtherCost"
    t.text     "Description"
    t.decimal  "TotalCampaignActivityActualCost"
    t.integer  "ExpectedResponse"
    t.string   "Name",                                 limit: 128,                           null: false
    t.decimal  "ExchangeRate",                                     precision: 23, scale: 10
    t.integer  "TimeZoneRuleVersionNumber"
    t.uuid     "TransactionCurrencyId"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "UTCConversionTimeZoneCode"
    t.decimal  "TotalCampaignActivityActualCost_Base"
    t.decimal  "BudgetedCost_Base"
    t.decimal  "ExpectedRevenue_Base"
    t.decimal  "OtherCost_Base"
    t.decimal  "TotalActualCost_Base"
    t.uuid     "OwnerId",                                                                    null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "OwnerIdType",                                                                null: false
  end

  add_index "CampaignBase", ["Name", "IsTemplate", "CreatedOn"], name: "ndx_SystemManaged_Campaign"
  add_index "CampaignBase", ["OwnerId"], name: "ndx_Security"
  add_index "CampaignBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_BusinessUnit_Campaigns"
  add_index "CampaignBase", ["PriceListId"], name: "fndx_for_cascaderelationship_PriceList_Campaigns"
  add_index "CampaignBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "CampaignBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CampaignExtensionBase", primary_key: "CampaignId", force: true do |t|
  end

  create_table "CampaignItemBase", primary_key: "CampaignItemId", force: true do |t|
    t.integer "EntityType",    null: false
    t.uuid    "EntityId",      null: false
    t.binary  "VersionNumber"
    t.uuid    "CampaignId",    null: false
  end

  add_index "CampaignItemBase", ["CampaignId", "EntityId", "EntityType"], name: "AK1_CampaignItemBase", unique: true
  add_index "CampaignItemBase", ["EntityId", "EntityType"], name: "ndx_for_cascaderelationship_SalesLiterature_CampaignItem"
  add_index "CampaignItemBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CampaignResponseBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "CascadeDeleteEntitiesSelfReferencing", primary_key: "ObjectTypeCode", force: true do |t|
    t.integer "ColumnNumber", null: false
  end

  create_table "CascadeDeleteEntitiesTopologicalOrder", primary_key: "OrderNumber", force: true do |t|
    t.integer "ObjectTypeCode", null: false
  end

  add_index "CascadeDeleteEntitiesTopologicalOrder", ["ObjectTypeCode"], name: "ndx_CascadeDeleteEntitiesTopologicalOrder_ObjectTypeCode", unique: true

  create_table "ClientUpdate", primary_key: "ClientUpdateId", force: true do |t|
    t.string   "Description",   limit: 512
    t.binary   "VersionNumber"
    t.text     "SqlScript"
    t.datetime "CreatedOn",                 null: false
    t.integer  "WhenExecute",               null: false
    t.boolean  "WasExecuted",               null: false
  end

  add_index "ClientUpdate", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ColumnMappingBase", primary_key: "ColumnMappingId", force: true do |t|
    t.uuid     "CreatedBy"
    t.string   "TargetEntityName",    limit: 160
    t.integer  "StatusCode",                      null: false
    t.integer  "ProcessCode",                     null: false
    t.datetime "ModifiedOn",                      null: false
    t.string   "TargetAttributeName", limit: 160
    t.datetime "CreatedOn",                       null: false
    t.uuid     "ImportMapId"
    t.string   "SourceAttributeName", limit: 160
    t.string   "SourceEntityName",    limit: 160
    t.uuid     "ModifiedBy"
    t.integer  "StateCode",                       null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "ColumnMappingBase", ["ImportMapId"], name: "fndx_for_cascaderelationship_ColumnMapping_ImportMap"
  add_index "ColumnMappingBase", ["SourceAttributeName"], name: "ndx_SystemManaged_ColumnMapping"
  add_index "ColumnMappingBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "CompetitorAddressBase", primary_key: "CompetitorAddressId", force: true do |t|
    t.uuid     "ParentId",                        null: false
    t.integer  "AddressNumber"
    t.integer  "AddressTypeCode"
    t.string   "Name",               limit: 200
    t.string   "Line1",              limit: 4000
    t.string   "Line2",              limit: 4000
    t.string   "Line3",              limit: 4000
    t.string   "City",               limit: 4000
    t.string   "StateOrProvince",    limit: 4000
    t.string   "County",             limit: 4000
    t.string   "Country",            limit: 4000
    t.string   "PostOfficeBox",      limit: 50
    t.string   "PostalCode",         limit: 50
    t.integer  "UTCOffset"
    t.string   "UPSZone",            limit: 4
    t.float    "Latitude",           limit: 53
    t.string   "Telephone1",         limit: 50
    t.float    "Longitude",          limit: 53
    t.integer  "ShippingMethodCode"
    t.string   "Telephone2",         limit: 50
    t.string   "Telephone3",         limit: 50
    t.string   "Fax",                limit: 50
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "CompetitorAddressBase", ["Name"], name: "ndx_SystemManaged_CompetitorAddress"
  add_index "CompetitorAddressBase", ["ParentId", "AddressNumber"], name: "AK1_CompetitorAddressBase", unique: true
  add_index "CompetitorAddressBase", ["ParentId"], name: "ndx_for_cascaderelationship_competitor_addresses"
  add_index "CompetitorAddressBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CompetitorBase", primary_key: "CompetitorId", force: true do |t|
    t.uuid     "OrganizationId",                                                  null: false
    t.string   "Name",                      limit: 100,                           null: false
    t.text     "Overview"
    t.string   "ReferenceInfoUrl",          limit: 200
    t.decimal  "ReportedRevenue"
    t.integer  "ReportingQuarter"
    t.integer  "ReportingYear"
    t.text     "Strengths"
    t.text     "Weaknesses"
    t.text     "Opportunities"
    t.text     "Threats"
    t.string   "TickerSymbol",              limit: 10
    t.string   "KeyProduct",                limit: 200
    t.string   "StockExchange",             limit: 20
    t.float    "WinPercentage",             limit: 53
    t.string   "WebSiteUrl",                limit: 200
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.uuid     "TransactionCurrencyId"
    t.integer  "ImportSequenceNumber"
    t.decimal  "ReportedRevenue_Base"
    t.string   "YomiName",                  limit: 100
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "CompetitorBase", ["Name", "WebSiteUrl"], name: "ndx_SystemManaged_Competitor"
  add_index "CompetitorBase", ["Name"], name: "ndx_name"
  add_index "CompetitorBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CompetitorExtensionBase", primary_key: "CompetitorId", force: true do |t|
  end

  create_table "CompetitorProduct", primary_key: "CompetitorProductId", force: true do |t|
    t.uuid   "CompetitorId",  null: false
    t.uuid   "ProductId",     null: false
    t.binary "VersionNumber"
  end

  add_index "CompetitorProduct", ["CompetitorId", "ProductId"], name: "UQ_CompetitorProduct", unique: true
  add_index "CompetitorProduct", ["ProductId"], name: "ndx_for_cascaderelationship_product_competitors"
  add_index "CompetitorProduct", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CompetitorSalesLiterature", primary_key: "CompetitorSalesLiteratureId", force: true do |t|
    t.uuid   "CompetitorId",      null: false
    t.uuid   "SalesLiteratureId", null: false
    t.binary "VersionNumber"
  end

  add_index "CompetitorSalesLiterature", ["CompetitorId", "SalesLiteratureId"], name: "UQ_CompetitorSalesLiterature", unique: true
  add_index "CompetitorSalesLiterature", ["SalesLiteratureId"], name: "ndx_for_cascaderelationship_sales_literature_competitors"
  add_index "CompetitorSalesLiterature", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ComplexControlBase", primary_key: "ComplexControlId", force: true do |t|
    t.integer "Type"
    t.uuid    "OrganizationId",                     null: false
    t.string  "Name",                   limit: 100, null: false
    t.text    "Description"
    t.binary  "VersionNumber"
    t.uuid    "ComplexControlIdUnique",             null: false
    t.text    "ComplexControlXml",                  null: false
    t.integer "Version"
  end

  create_table "ConnectionBase", primary_key: "ConnectionId", force: true do |t|
    t.uuid     "Record2RoleId"
    t.uuid     "ModifiedBy"
    t.uuid     "Record2Id"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IsMaster",                                                       null: false
    t.uuid     "OwnerId",                                                        null: false
    t.binary   "VersionNumber"
    t.integer  "Record2ObjectTypeCode"
    t.integer  "ImportSequenceNumber"
    t.integer  "StateCode",                                                      null: false
    t.text     "Description"
    t.datetime "EffectiveStart"
    t.datetime "ModifiedOn"
    t.uuid     "TransactionCurrencyId"
    t.uuid     "OwningBusinessUnit"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "Record1Id"
    t.integer  "StatusCode"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "Record1ObjectTypeCode"
    t.uuid     "RelatedConnectionId"
    t.uuid     "Record1RoleId"
    t.uuid     "CreatedBy"
    t.datetime "EffectiveEnd"
    t.decimal  "ExchangeRate",                         precision: 23, scale: 10
    t.string   "Record2IdName",           limit: 4000
    t.string   "Record1IdName",           limit: 4000
    t.integer  "OwnerIdType",                                                    null: false
    t.integer  "Record2IdObjectTypeCode"
    t.integer  "Record1IdObjectTypeCode"
  end

  add_index "ConnectionBase", ["OwnerId"], name: "ndx_Security"
  add_index "ConnectionBase", ["Record1Id", "Record1IdObjectTypeCode"], name: "ndx_for_cascaderelationship_record1"
  add_index "ConnectionBase", ["Record1ObjectTypeCode"], name: "fndx_for_search_record1_type_code"
  add_index "ConnectionBase", ["Record1RoleId"], name: "fndx_for_cascaderelationship_connection_role_connections1"
  add_index "ConnectionBase", ["Record2Id", "Record2IdObjectTypeCode"], name: "ndx_for_cascaderelationship_record2"
  add_index "ConnectionBase", ["Record2ObjectTypeCode"], name: "fndx_for_search_record2_type_code"
  add_index "ConnectionBase", ["Record2RoleId"], name: "fndx_for_cascaderelationship_connection_role_connections2"
  add_index "ConnectionBase", ["RelatedConnectionId"], name: "fndx_for_cascaderelationship_connection_related_connection"
  add_index "ConnectionBase", ["StateCode"], name: "ndx_SystemManaged_Connection"
  add_index "ConnectionBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ConnectionExtensionBase", primary_key: "ConnectionId", force: true do |t|
  end

  create_table "ConnectionRoleAssociation", primary_key: "ConnectionRoleAssociationId", force: true do |t|
    t.uuid   "AssociatedConnectionRoleId", null: false
    t.uuid   "ConnectionRoleId",           null: false
    t.binary "VersionNumber"
  end

  add_index "ConnectionRoleAssociation", ["AssociatedConnectionRoleId"], name: "ndx_for_cascaderelationship_associated_connection_roles"
  add_index "ConnectionRoleAssociation", ["ConnectionRoleId", "AssociatedConnectionRoleId"], name: "ndx_unique_connection_role_associations", unique: true
  add_index "ConnectionRoleAssociation", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ConnectionRoleBase", primary_key: "ConnectionRoleId", force: true do |t|
    t.uuid     "ConnectionRoleIdUnique",              null: false
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.binary   "VersionNumber"
    t.integer  "ComponentState",                      null: false
    t.boolean  "IsManaged",                           null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId",                      null: false
    t.datetime "ModifiedOn"
    t.integer  "ImportSequenceNumber"
    t.string   "Name",                   limit: 100,  null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "StatusCode"
    t.integer  "StateCode",                           null: false
    t.integer  "Category"
    t.uuid     "ModifiedBy"
    t.datetime "OverwriteTime",                       null: false
    t.boolean  "IsCustomizable",                      null: false
    t.string   "Description",            limit: 1000
    t.uuid     "SolutionId",                          null: false
  end

  add_index "ConnectionRoleBase", ["Category", "Name"], name: "ndx_SystemManaged_ConnectionRole"
  add_index "ConnectionRoleBase", ["ConnectionRoleIdUnique"], name: "UQ_ConnectionRoleBase_ConnectionRoleIdUnique", unique: true
  add_index "ConnectionRoleBase", ["Name"], name: "ndx_name"
  add_index "ConnectionRoleBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "ConnectionRoleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ConnectionRoleBaseIds", primary_key: "ConnectionRoleId", force: true do |t|
  end

  create_table "ConnectionRoleObjectTypeCodeBase", primary_key: "ConnectionRoleObjectTypeCodeId", force: true do |t|
    t.binary  "VersionNumber"
    t.integer "AssociatedObjectTypeCode", null: false
    t.uuid    "ConnectionRoleId",         null: false
  end

  add_index "ConnectionRoleObjectTypeCodeBase", ["AssociatedObjectTypeCode"], name: "ndx_asscociated_object_type_code"
  add_index "ConnectionRoleObjectTypeCodeBase", ["ConnectionRoleId", "AssociatedObjectTypeCode"], name: "cndx_Unique_connectionroleobjecttypecode", unique: true
  add_index "ConnectionRoleObjectTypeCodeBase", ["ConnectionRoleId"], name: "ndx_for_cascaderelationship_connection_role_connection_role_object_type_code"
  add_index "ConnectionRoleObjectTypeCodeBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ConstraintBasedGroupBase", primary_key: "ConstraintBasedGroupId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.integer  "GroupTypeCode",                  null: false
    t.binary   "VersionNumber"
    t.string   "Name",               limit: 160, null: false
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId",                 null: false
    t.datetime "CreatedOn"
    t.text     "Description"
    t.text     "Constraints",                    null: false
    t.uuid     "BusinessUnitId",                 null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "ConstraintBasedGroupBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "ConstraintBasedGroupBase", ["GroupTypeCode", "Name"], name: "ndx_SystemManaged_ConstraintBasedGroup"
  add_index "ConstraintBasedGroupBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContactBase", primary_key: "ContactId", force: true do |t|
    t.uuid     "DefaultPriceLevelId"
    t.integer  "CustomerSizeCode"
    t.integer  "CustomerTypeCode"
    t.integer  "PreferredContactMethodCode"
    t.integer  "LeadSourceCode"
    t.uuid     "OriginatingLeadId"
    t.uuid     "OwningBusinessUnit"
    t.integer  "PaymentTermsCode"
    t.integer  "ShippingMethodCode"
    t.boolean  "ParticipatesInWorkflow"
    t.boolean  "IsBackofficeCustomer"
    t.string   "Salutation",                   limit: 100
    t.string   "JobTitle",                     limit: 100
    t.string   "FirstName",                    limit: 50
    t.string   "Department",                   limit: 100
    t.string   "NickName",                     limit: 50
    t.string   "MiddleName",                   limit: 50
    t.string   "LastName",                     limit: 50
    t.string   "Suffix",                       limit: 20
    t.string   "YomiFirstName",                limit: 150
    t.string   "FullName",                     limit: 160
    t.string   "YomiMiddleName",               limit: 150
    t.string   "YomiLastName",                 limit: 150
    t.datetime "Anniversary"
    t.datetime "BirthDate"
    t.string   "GovernmentId",                 limit: 50
    t.string   "YomiFullName",                 limit: 450
    t.text     "Description"
    t.string   "EmployeeId",                   limit: 50
    t.integer  "GenderCode"
    t.decimal  "AnnualIncome"
    t.integer  "HasChildrenCode"
    t.integer  "EducationCode"
    t.string   "WebSiteUrl",                   limit: 200
    t.integer  "FamilyStatusCode"
    t.string   "FtpSiteUrl",                   limit: 200
    t.string   "EMailAddress1",                limit: 100
    t.string   "SpousesName",                  limit: 100
    t.string   "AssistantName",                limit: 100
    t.string   "EMailAddress2",                limit: 100
    t.string   "AssistantPhone",               limit: 50
    t.string   "EMailAddress3",                limit: 100
    t.boolean  "DoNotPhone"
    t.string   "ManagerName",                  limit: 100
    t.string   "ManagerPhone",                 limit: 50
    t.boolean  "DoNotFax"
    t.boolean  "DoNotEMail"
    t.boolean  "DoNotPostalMail"
    t.boolean  "DoNotBulkEMail"
    t.boolean  "DoNotBulkPostalMail"
    t.integer  "AccountRoleCode"
    t.integer  "TerritoryCode"
    t.boolean  "IsPrivate"
    t.decimal  "CreditLimit"
    t.datetime "CreatedOn"
    t.boolean  "CreditOnHold"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.integer  "NumberOfChildren"
    t.string   "ChildrensNames"
    t.binary   "VersionNumber"
    t.string   "MobilePhone",                  limit: 50
    t.string   "Pager",                        limit: 50
    t.string   "Telephone1",                   limit: 50
    t.string   "Telephone2",                   limit: 62
    t.string   "Telephone3",                   limit: 50
    t.string   "Fax",                          limit: 50
    t.decimal  "Aging30"
    t.integer  "StateCode",                                                           null: false
    t.decimal  "Aging60"
    t.integer  "StatusCode"
    t.decimal  "Aging90"
    t.uuid     "PreferredSystemUserId"
    t.uuid     "PreferredServiceId"
    t.uuid     "MasterId"
    t.integer  "PreferredAppointmentDayCode"
    t.integer  "PreferredAppointmentTimeCode"
    t.boolean  "DoNotSendMM"
    t.boolean  "Merged"
    t.string   "ExternalUserIdentifier",       limit: 50
    t.uuid     "SubscriptionId"
    t.uuid     "PreferredEquipmentId"
    t.datetime "LastUsedInCampaign"
    t.uuid     "TransactionCurrencyId"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ExchangeRate",                              precision: 23, scale: 10
    t.integer  "ImportSequenceNumber"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.decimal  "AnnualIncome_Base"
    t.decimal  "CreditLimit_Base"
    t.decimal  "Aging60_Base"
    t.decimal  "Aging90_Base"
    t.decimal  "Aging30_Base"
    t.uuid     "OwnerId",                                                             null: false
    t.uuid     "CreatedOnBehalfBy"
    t.boolean  "IsAutoCreate"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "ParentCustomerId"
    t.integer  "ParentCustomerIdType"
    t.string   "ParentCustomerIdName",         limit: 4000
    t.integer  "OwnerIdType",                                                         null: false
    t.string   "ParentCustomerIdYomiName",     limit: 4000
  end

  add_index "ContactBase", ["DoNotEMail", "DoNotBulkEMail"], name: "ndx_Email2"
  add_index "ContactBase", ["EMailAddress1"], name: "ndx_emailaddress1"
  add_index "ContactBase", ["FirstName", "LastName", "FullName", "YomiFirstName", "YomiLastName", "YomiFullName"], name: "ndx_ContactCover"
  add_index "ContactBase", ["FullName"], name: "fndx_FullName"
  add_index "ContactBase", ["JobTitle", "Department", "EMailAddress1", "Telephone1"], name: "ndx_SystemManaged_Contact"
  add_index "ContactBase", ["LastName"], name: "ndx_lastname"
  add_index "ContactBase", ["MasterId"], name: "fndx_for_cascaderelationship_contact_master_contact"
  add_index "ContactBase", ["MiddleName"], name: "ndx_middlename"
  add_index "ContactBase", ["MobilePhone"], name: "ndx_mobilephone"
  add_index "ContactBase", ["OriginatingLeadId"], name: "fndx_for_cascaderelationship_contact_originating_lead"
  add_index "ContactBase", ["OwnerId", "StateCode"], name: "ndx_Security"
  add_index "ContactBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_contacts"
  add_index "ContactBase", ["ParentCustomerId", "ParentCustomerIdType"], name: "ndx_for_cascaderelationship_contact_customer_accounts"
  add_index "ContactBase", ["ParentCustomerIdName"], name: "ndx_parentcustomeridname"
  add_index "ContactBase", ["PreferredServiceId"], name: "fndx_for_cascaderelationship_service_contacts"
  add_index "ContactBase", ["PreferredSystemUserId"], name: "fndx_for_cascaderelationship_system_user_contacts"
  add_index "ContactBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "ContactBase", ["Telephone1"], name: "ndx_telephone1"
  add_index "ContactBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContactExtensionBase", primary_key: "ContactId", force: true do |t|
    t.integer  "new_PrimaryTag"
    t.string   "new_TertiaryTag",                 limit: 150
    t.boolean  "new_SubscrStatusinCC"
    t.integer  "new_SecondaryTags"
    t.string   "new_SecondaryTags_Hidden",        limit: 1000
    t.datetime "new_TermEnding"
    t.integer  "new_District"
    t.integer  "new_MAPCSubregion"
    t.boolean  "new_MAPCCalendarSubscription"
    t.boolean  "new_MAPCNewsletter"
    t.integer  "new_MASenateLegislativeDistrict"
    t.integer  "new_USCongressionalDistrict"
    t.boolean  "new_Editapprovalrequired"
    t.string   "new_Address1_RoomSuite",          limit: 100
    t.string   "new_Address2_RoomSuite",          limit: 100
    t.boolean  "new_CellPhonePreference"
    t.boolean  "new_ExistingContact"
    t.string   "new_SubdepartmentDivision",       limit: 100
    t.uuid     "new_MAPCSubregionLookup"
    t.string   "new_AreasofExpertise",            limit: 143
    t.uuid     "gap_FunctionalManager"
    t.uuid     "gap_LineManager"
    t.string   "new_Twitter",                     limit: 100
    t.integer  "new_Energy_Affiliation"
    t.boolean  "new_Energy_ManagementRole"
    t.boolean  "new_Energy_Newsletter"
  end

  add_index "ContactExtensionBase", ["new_SecondaryTags", "new_PrimaryTag", "new_TertiaryTag", "new_MAPCSubregionLookup", "new_MAPCCalendarSubscription"], name: "ndx_SystemManaged_Contact"

  create_table "ContactInvoices", primary_key: "ContactInvoiceId", force: true do |t|
    t.uuid   "ContactId",     null: false
    t.uuid   "InvoiceId",     null: false
    t.binary "VersionNumber"
  end

  add_index "ContactInvoices", ["ContactId", "InvoiceId"], name: "UQ_ContactInvoices", unique: true
  add_index "ContactInvoices", ["InvoiceId"], name: "ndx_for_cascaderelationship_invoice_contacts"
  add_index "ContactInvoices", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContactLeads", primary_key: "ContactLeadId", force: true do |t|
    t.uuid   "ContactId",     null: false
    t.uuid   "LeadId",        null: false
    t.binary "VersionNumber"
  end

  add_index "ContactLeads", ["ContactId", "LeadId"], name: "UQ_ContactLeads", unique: true
  add_index "ContactLeads", ["LeadId"], name: "ndx_for_cascaderelationship_lead_contacts"
  add_index "ContactLeads", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContactOrders", primary_key: "ContactOrderId", force: true do |t|
    t.uuid   "SalesOrderId",  null: false
    t.uuid   "ContactId",     null: false
    t.binary "VersionNumber"
  end

  add_index "ContactOrders", ["ContactId", "SalesOrderId"], name: "UQ_ContactOrders", unique: true
  add_index "ContactOrders", ["SalesOrderId"], name: "ndx_for_cascaderelationship_order_contacts"
  add_index "ContactOrders", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContactQuotes", primary_key: "ContactQuoteId", force: true do |t|
    t.uuid   "ContactId",     null: false
    t.uuid   "QuoteId",       null: false
    t.binary "VersionNumber"
  end

  add_index "ContactQuotes", ["ContactId", "QuoteId"], name: "UQ_ContactQuotes", unique: true
  add_index "ContactQuotes", ["QuoteId"], name: "ndx_for_cascaderelationship_quote_contacts"
  add_index "ContactQuotes", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContractBase", primary_key: "ContractId", force: true do |t|
    t.uuid     "OwningBusinessUnit"
    t.uuid     "ContractTemplateId",                                               null: false
    t.integer  "ContractServiceLevelCode"
    t.uuid     "ServiceAddress"
    t.uuid     "BillToAddress"
    t.string   "ContractNumber",            limit: 100
    t.datetime "ActiveOn",                                                         null: false
    t.datetime "ExpiresOn",                                                        null: false
    t.datetime "CancelOn"
    t.string   "Title",                     limit: 100
    t.text     "ContractLanguage"
    t.datetime "BillingStartOn"
    t.string   "EffectivityCalendar",       limit: 168
    t.datetime "BillingEndOn"
    t.integer  "BillingFrequencyCode"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.integer  "AllotmentTypeCode"
    t.boolean  "UseDiscountAsPercentage"
    t.datetime "ModifiedOn"
    t.decimal  "TotalPrice"
    t.binary   "VersionNumber"
    t.decimal  "TotalDiscount"
    t.integer  "StateCode",                                                        null: false
    t.decimal  "NetPrice"
    t.integer  "StatusCode"
    t.uuid     "OriginatingContract"
    t.integer  "Duration"
    t.integer  "TimeZoneRuleVersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.decimal  "TotalDiscount_Base"
    t.decimal  "NetPrice_Base"
    t.decimal  "TotalPrice_Base"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "CustomerId"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                                                          null: false
    t.uuid     "BillingCustomerId"
    t.integer  "CustomerIdType"
    t.integer  "OwnerIdType",                                                      null: false
    t.integer  "BillingCustomerIdType"
    t.string   "CustomerIdName",            limit: 4000
    t.string   "BillingCustomerIdName",     limit: 4000
    t.string   "CustomerIdYomiName",        limit: 4000
    t.string   "BillingCustomerIdYomiName", limit: 4000
  end

  add_index "ContractBase", ["BillToAddress"], name: "fndx_for_cascaderelationship_customer_address_contracts_as_billing_address"
  add_index "ContractBase", ["BillingCustomerId", "BillingCustomerIdType"], name: "ndx_for_cascaderelationship_contract_billingcustomer_accounts"
  add_index "ContractBase", ["ContractTemplateId"], name: "ndx_for_cascaderelationship_contract_template_contracts"
  add_index "ContractBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_contract_customer_accounts"
  add_index "ContractBase", ["OriginatingContract"], name: "fndx_for_cascaderelationship_contract_originating_contract"
  add_index "ContractBase", ["OwnerId"], name: "ndx_Security"
  add_index "ContractBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_service_contracts"
  add_index "ContractBase", ["ServiceAddress"], name: "fndx_for_cascaderelationship_customer_address_contracts_as_service_address"
  add_index "ContractBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "ContractBase", ["Title", "ContractNumber"], name: "ndx_SystemManaged_Contract"
  add_index "ContractBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContractDetailBase", primary_key: "ContractDetailId", force: true do |t|
    t.uuid     "ServiceAddress"
    t.uuid     "UoMId"
    t.uuid     "ProductId"
    t.string   "ProductSerialNumber",       limit: 100
    t.uuid     "ContractId",                                                       null: false
    t.integer  "LineItemOrder"
    t.integer  "ServiceContractUnitsCode"
    t.integer  "InitialQuantity"
    t.string   "Title",                     limit: 500
    t.string   "EffectivityCalendar",       limit: 168
    t.datetime "ActiveOn",                                                         null: false
    t.datetime "CreatedOn"
    t.datetime "ExpiresOn",                                                        null: false
    t.uuid     "CreatedBy"
    t.integer  "TotalAllotments",                                                  null: false
    t.uuid     "ModifiedBy"
    t.decimal  "Rate"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.decimal  "Price",                                                            null: false
    t.decimal  "Discount"
    t.decimal  "Net"
    t.integer  "StateCode",                                                        null: false
    t.integer  "AllotmentsRemaining"
    t.integer  "StatusCode"
    t.integer  "AllotmentsUsed"
    t.uuid     "UoMScheduleId"
    t.decimal  "DiscountPercentage",                     precision: 23, scale: 10
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.integer  "UTCConversionTimeZoneCode"
    t.decimal  "Discount_Base"
    t.decimal  "Rate_Base"
    t.decimal  "Price_Base"
    t.decimal  "Net_Base"
    t.integer  "AllotmentsOverage"
    t.uuid     "CustomerId"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "CustomerIdType"
    t.string   "CustomerIdName",            limit: 4000
    t.string   "CustomerIdYomiName",        limit: 4000
  end

  add_index "ContractDetailBase", ["ContractId"], name: "ndx_for_cascaderelationship_contract_line_items"
  add_index "ContractDetailBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_contractlineitem_customer_accounts"
  add_index "ContractDetailBase", ["ProductId"], name: "fndx_for_cascaderelationship_product_contract_line_items"
  add_index "ContractDetailBase", ["ServiceAddress"], name: "fndx_for_cascaderelationship_customer_address_contract_line_items"
  add_index "ContractDetailBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "ContractDetailBase", ["UoMScheduleId"], name: "fndx_for_cascaderelationship_contract_detail_unit_of_measure_schedule"
  add_index "ContractDetailBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContractDetailExtensionBase", primary_key: "ContractDetailId", force: true do |t|
  end

  create_table "ContractExtensionBase", primary_key: "ContractId", force: true do |t|
  end

  create_table "ContractTemplateBase", primary_key: "ContractTemplateId", force: true do |t|
    t.string   "Name",                     limit: 100, null: false
    t.uuid     "OrganizationId",                       null: false
    t.text     "Description"
    t.string   "Abbreviation",             limit: 20,  null: false
    t.integer  "ContractServiceLevelCode"
    t.integer  "BillingFrequencyCode"
    t.integer  "AllotmentTypeCode"
    t.boolean  "UseDiscountAsPercentage"
    t.string   "EffectivityCalendar",      limit: 168
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.boolean  "IsManaged",                            null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "ComponentState",                       null: false
    t.uuid     "SolutionId",                           null: false
    t.datetime "OverwriteTime",                        null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "ContractTemplateIdUnique",             null: false
    t.boolean  "IsCustomizable",                       null: false
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "ContractTemplateBase", ["Abbreviation", "SolutionId", "ComponentState", "OverwriteTime"], name: "AK1_ContractTemplateBase", unique: true
  add_index "ContractTemplateBase", ["ContractTemplateIdUnique"], name: "UQ_ContractTemplateBase_ContractTemplateIdUnique", unique: true
  add_index "ContractTemplateBase", ["Name", "AllotmentTypeCode"], name: "ndx_SystemManaged_ContractTemplate"
  add_index "ContractTemplateBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ContractTemplateBaseIds", primary_key: "ContractTemplateId", force: true do |t|
  end

  create_table "CustomerAddressBase", primary_key: "CustomerAddressId", force: true do |t|
    t.uuid     "ParentId",                                                         null: false
    t.integer  "AddressNumber"
    t.integer  "ObjectTypeCode",                                                   null: false
    t.integer  "AddressTypeCode"
    t.string   "Name",                      limit: 200
    t.string   "PrimaryContactName",        limit: 150
    t.string   "Line1",                     limit: 4000
    t.string   "Line2",                     limit: 4000
    t.string   "Line3",                     limit: 4000
    t.string   "City",                      limit: 4000
    t.string   "StateOrProvince",           limit: 4000
    t.string   "County",                    limit: 4000
    t.string   "Country",                   limit: 4000
    t.string   "PostOfficeBox",             limit: 50
    t.string   "PostalCode",                limit: 50
    t.integer  "UTCOffset"
    t.integer  "FreightTermsCode"
    t.string   "UPSZone",                   limit: 4
    t.float    "Latitude",                  limit: 53
    t.string   "Telephone1",                limit: 50
    t.float    "Longitude",                 limit: 53
    t.integer  "ShippingMethodCode"
    t.string   "Telephone2",                limit: 50
    t.string   "Telephone3",                limit: 50
    t.string   "Fax",                       limit: 50
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "ImportSequenceNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "ParentIdTypeCode"
  end

  add_index "CustomerAddressBase", ["Name"], name: "fndx_NameCustomerAddressId"
  add_index "CustomerAddressBase", ["ParentId", "AddressNumber"], name: "cndx_ParentIdAddressNumber", unique: true
  add_index "CustomerAddressBase", ["ParentId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_Contact_CustomerAddress"
  add_index "CustomerAddressBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CustomerAddressExtensionBase", primary_key: "CustomerAddressId", force: true do |t|
  end

  create_table "CustomerOpportunityRoleBase", primary_key: "CustomerOpportunityRoleId", force: true do |t|
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.uuid     "OwningBusinessUnit"
    t.datetime "CreatedOn"
    t.string   "Description",          limit: 500
    t.datetime "ModifiedOn"
    t.uuid     "CustomerId",                        null: false
    t.binary   "VersionNumber"
    t.uuid     "OpportunityRoleId"
    t.uuid     "OpportunityId",                     null: false
    t.integer  "CustomerIdType"
    t.uuid     "UniqueDscId"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                           null: false
    t.uuid     "CreatedOnBehalfBy"
    t.string   "CustomerIdName",       limit: 4000
    t.integer  "OwnerIdType",                       null: false
    t.string   "CustomerIdYomiName",   limit: 4000
  end

  add_index "CustomerOpportunityRoleBase", ["CustomerId", "CustomerIdType", "OpportunityId", "OpportunityRoleId", "UniqueDscId"], name: "ndx_Unique_CustomerOpportunityRole", unique: true
  add_index "CustomerOpportunityRoleBase", ["CustomerId"], name: "ndx_for_cascaderelationship_contact_customer_opportunity_roles"
  add_index "CustomerOpportunityRoleBase", ["OpportunityId"], name: "ndx_for_cascaderelationship_opportunity_customer_opportunity_roles"
  add_index "CustomerOpportunityRoleBase", ["OpportunityRoleId"], name: "fndx_for_cascaderelationship_relationship_role_customer_opportunity_roles"
  add_index "CustomerOpportunityRoleBase", ["OwnerId"], name: "ndx_Security"
  add_index "CustomerOpportunityRoleBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_customer_opportunity_roles"
  add_index "CustomerOpportunityRoleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "CustomerRelationshipBase", primary_key: "CustomerRelationshipId", force: true do |t|
    t.binary   "VersionNumber"
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.uuid     "CustomerRoleId"
    t.uuid     "CreatedBy"
    t.uuid     "PartnerId",                            null: false
    t.uuid     "OwningBusinessUnit"
    t.uuid     "ConverseRelationshipId"
    t.uuid     "PartnerRoleId"
    t.text     "CustomerRoleDescription"
    t.uuid     "CustomerId",                           null: false
    t.uuid     "ModifiedBy"
    t.text     "PartnerRoleDescription"
    t.integer  "PartnerIdType"
    t.integer  "CustomerIdType"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.uuid     "UniqueDscId"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                              null: false
    t.uuid     "CreatedOnBehalfBy"
    t.string   "PartnerIdName",           limit: 4000
    t.integer  "OwnerIdType",                          null: false
    t.string   "CustomerIdName",          limit: 4000
    t.string   "PartnerIdYomiName",       limit: 4000
    t.string   "CustomerIdYomiName",      limit: 4000
  end

  add_index "CustomerRelationshipBase", ["ConverseRelationshipId"], name: "fndx_for_cascaderelationship_customer_relationship_converse_relationship"
  add_index "CustomerRelationshipBase", ["CustomerId", "CustomerIdType", "PartnerId", "PartnerIdType", "CustomerRoleId", "PartnerRoleId", "UniqueDscId"], name: "ndx_Unique_CustomerRelationship", unique: true
  add_index "CustomerRelationshipBase", ["CustomerId"], name: "ndx_for_cascaderelationship_account_customer_relationship_customer"
  add_index "CustomerRelationshipBase", ["CustomerRoleId"], name: "fndx_for_cascaderelationship_relationship_role_customer_role"
  add_index "CustomerRelationshipBase", ["OwnerId"], name: "ndx_Security"
  add_index "CustomerRelationshipBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_customer_relationship"
  add_index "CustomerRelationshipBase", ["PartnerId", "PartnerIdType"], name: "ndx_for_cascaderelationship_account_customer_relationship_partner"
  add_index "CustomerRelationshipBase", ["PartnerRoleId"], name: "fndx_for_cascaderelationship_relationship_role_partner_role"
  add_index "CustomerRelationshipBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "DependencyBase", primary_key: "DependencyId", force: true do |t|
    t.uuid    "DependentComponentNodeId"
    t.integer "DependencyType",           null: false
    t.uuid    "RequiredComponentNodeId"
  end

  add_index "DependencyBase", ["DependencyType"], name: "ndx_DependencyType"
  add_index "DependencyBase", ["DependentComponentNodeId"], name: "fndx_Descendent"
  add_index "DependencyBase", ["RequiredComponentNodeId", "DependentComponentNodeId"], name: "ndx_UniqueDependencyNodes", unique: true
  add_index "DependencyBase", ["RequiredComponentNodeId"], name: "fndx_Ancestor"

  create_table "DependencyNodeBase", primary_key: "DependencyNodeId", force: true do |t|
    t.uuid    "BaseSolutionId"
    t.uuid    "TopSolutionId"
    t.uuid    "ParentId"
    t.integer "ComponentType",     null: false
    t.uuid    "ObjectId"
    t.boolean "IsSharedComponent"
  end

  add_index "DependencyNodeBase", ["BaseSolutionId"], name: "fndx_DependencyBaseSolutionId"
  add_index "DependencyNodeBase", ["ObjectId", "ComponentType"], name: "ndx_DependencyObjectId", unique: true
  add_index "DependencyNodeBase", ["TopSolutionId"], name: "fndx_DependencyTopSolutionId"

  create_table "DiscountBase", primary_key: "DiscountId", force: true do |t|
    t.uuid     "DiscountTypeId",                                  null: false
    t.decimal  "LowQuantity",           precision: 23, scale: 10
    t.decimal  "HighQuantity",          precision: 23, scale: 10
    t.decimal  "Percentage",            precision: 23, scale: 10
    t.decimal  "Amount"
    t.integer  "StatusCode"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",          precision: 23, scale: 10
    t.integer  "ImportSequenceNumber"
    t.decimal  "Amount_Base"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "DiscountBase", ["DiscountTypeId"], name: "ndx_for_cascaderelationship_discount_type_discounts"
  add_index "DiscountBase", ["Percentage", "LowQuantity", "HighQuantity"], name: "ndx_SystemManaged_Discount"
  add_index "DiscountBase", ["StatusCode"], name: "fndx_Core"
  add_index "DiscountBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "DiscountTypeBase", primary_key: "DiscountTypeId", force: true do |t|
    t.uuid     "OrganizationId",                    null: false
    t.string   "Name",                  limit: 100, null: false
    t.text     "Description"
    t.boolean  "IsAmountType"
    t.integer  "StateCode",                         null: false
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.integer  "StatusCode"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "TransactionCurrencyId"
    t.integer  "ImportSequenceNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "DiscountTypeBase", ["Name"], name: "AK1_DiscountTypeBase", unique: true
  add_index "DiscountTypeBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "DiscountTypeBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "DisplayStringBase", primary_key: "DisplayStringId", force: true do |t|
    t.string   "PublishedDisplayString", limit: 750
    t.string   "CustomDisplayString",    limit: 750
    t.string   "DisplayStringKey",       limit: 200, null: false
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.string   "CustomComment",          limit: 500
    t.integer  "FormatParameters",                   null: false
    t.uuid     "OrganizationId",                     null: false
    t.datetime "CreatedOn",                          null: false
    t.datetime "ModifiedOn",                         null: false
    t.integer  "LanguageCode"
    t.uuid     "ModifiedBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IsManaged",                          null: false
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "OverwriteTime",                      null: false
    t.integer  "ComponentState",                     null: false
    t.uuid     "SolutionId",                         null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "DisplayStringIdUnique",              null: false
  end

  add_index "DisplayStringBase", ["DisplayStringIdUnique"], name: "UQ_DisplayStringBase_DisplayStringIdUnique", unique: true
  add_index "DisplayStringBase", ["DisplayStringKey", "LanguageCode", "SolutionId", "ComponentState", "OverwriteTime"], name: "UQ_DisplayString", unique: true
  add_index "DisplayStringBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "DisplayStringMapBase", primary_key: "DisplayStringMapId", force: true do |t|
    t.integer  "ObjectTypeCode",           null: false
    t.uuid     "DisplayStringId",          null: false
    t.boolean  "IsManaged",                null: false
    t.uuid     "SolutionId",               null: false
    t.uuid     "SupportingSolutionId"
    t.integer  "ComponentState",           null: false
    t.uuid     "DisplayStringMapIdUnique", null: false
    t.datetime "OverwriteTime",            null: false
  end

  add_index "DisplayStringMapBase", ["DisplayStringId"], name: "ndx_for_cascaderelationship_DisplayString_DisplayStringMaps"
  add_index "DisplayStringMapBase", ["DisplayStringMapIdUnique"], name: "UQ_DisplayStringMapBase_DisplayStringMapIdUnique", unique: true

  create_table "DocumentIndex", primary_key: "DocumentIndexId", force: true do |t|
    t.uuid     "SubjectId",                      null: false
    t.uuid     "OrganizationId",                 null: false
    t.boolean  "IsPublished"
    t.integer  "DocumentTypeCode",               null: false
    t.uuid     "DocumentId",                     null: false
    t.string   "Location",           limit: 500
    t.string   "Title",              limit: 500
    t.string   "Number",             limit: 100
    t.text     "KeyWords"
    t.text     "SearchText"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "DocumentIndex", ["DocumentId"], name: "ndx_for_cascaderelationship_KbArticle_DocumentIndex"
  add_index "DocumentIndex", ["SubjectId"], name: "ndx_for_cascaderelationship_is_primary_subject_for"
  add_index "DocumentIndex", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "DuplicateRecordBase", primary_key: "DuplicateId", force: true do |t|
    t.uuid     "DuplicateRuleId"
    t.uuid     "BaseRecordId"
    t.datetime "CreatedOn",                              null: false
    t.uuid     "AsyncOperationId"
    t.uuid     "DuplicateRecordId"
    t.integer  "BaseRecordIdTypeCode"
    t.string   "BaseRecordIdName",          limit: 4000
    t.string   "DuplicateRecordIdName",     limit: 4000
    t.string   "DuplicateRecordIdYomiName", limit: 4000
    t.string   "BaseRecordIdYomiName",      limit: 4000
    t.integer  "DuplicateRecordIdTypeCode"
  end

  add_index "DuplicateRecordBase", ["AsyncOperationId"], name: "fndx_for_cascaderelationship_AsyncOperation_DuplicateBaseRecord"
  add_index "DuplicateRecordBase", ["BaseRecordId", "BaseRecordIdTypeCode"], name: "ndx_baserecordid"
  add_index "DuplicateRecordBase", ["BaseRecordId", "DuplicateRuleId", "AsyncOperationId", "BaseRecordIdTypeCode"], name: "ndx_bulkdetect"
  add_index "DuplicateRecordBase", ["DuplicateRecordId", "DuplicateRecordIdTypeCode"], name: "ndx_for_cascaderelationship_Account_DuplicateMatchingRecord"
  add_index "DuplicateRecordBase", ["DuplicateRuleId"], name: "fndx_for_cascaderelationship_DuplicateRule_DuplicateBaseRecord"

  create_table "DuplicateRuleBase", primary_key: "DuplicateRuleId", force: true do |t|
    t.text     "Description"
    t.uuid     "OwningBusinessUnit"
    t.boolean  "IsCaseSensitive"
    t.integer  "StateCode",                                null: false
    t.integer  "StatusCode",                               null: false
    t.string   "Name",                         limit: 160, null: false
    t.string   "MatchingEntityMatchCodeTable", limit: 50
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "BaseEntityTypeCode",                       null: false
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "ModifiedBy"
    t.integer  "MatchingEntityTypeCode",                   null: false
    t.string   "BaseEntityMatchCodeTable",     limit: 50
    t.string   "BaseEntityName",               limit: 160
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.string   "MatchingEntityName",           limit: 160
    t.datetime "CreatedOn"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                                  null: false
    t.integer  "OwnerIdType",                              null: false
    t.boolean  "ExcludeInactiveRecords"
  end

  add_index "DuplicateRuleBase", ["BaseEntityName"], name: "fndx_BaseEntityName"
  add_index "DuplicateRuleBase", ["MatchingEntityName"], name: "fndx_MatchingEntityName"
  add_index "DuplicateRuleBase", ["Name", "BaseEntityTypeCode", "MatchingEntityTypeCode", "CreatedBy", "ModifiedOn"], name: "ndx_SystemManaged_DuplicateRule"
  add_index "DuplicateRuleBase", ["OwnerId"], name: "ndx_Security"
  add_index "DuplicateRuleBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_BusinessUnit_DuplicateRules"
  add_index "DuplicateRuleBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "DuplicateRuleConditionBase", primary_key: "DuplicateRuleConditionId", force: true do |t|
    t.uuid     "CreatedBy"
    t.integer  "OperatorParam"
    t.integer  "OperatorCode"
    t.datetime "ModifiedOn",                       null: false
    t.string   "BaseAttributeName",     limit: 50, null: false
    t.uuid     "RegardingObjectId"
    t.string   "MatchingAttributeName", limit: 50
    t.datetime "CreatedOn",                        null: false
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IgnoreBlankValues"
  end

  add_index "DuplicateRuleConditionBase", ["RegardingObjectId"], name: "fndx_DuplicateRule"

  create_table "EmailBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "EmailHashBase", primary_key: "EmailHashId", force: true do |t|
    t.integer "HashType",      null: false
    t.integer "Hash",          null: false
    t.uuid    "ActivityId"
    t.binary  "VersionNumber"
  end

  add_index "EmailHashBase", ["ActivityId"], name: "fndx_for_cascaderelationship_activity_pointer_email_hash"
  add_index "EmailHashBase", ["Hash", "HashType"], name: "ndx_email_hash_hash_hashtype"
  add_index "EmailHashBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "EmailSearchBase", primary_key: "EmailSearchId", force: true do |t|
    t.string  "EmailAddress",         limit: 160, null: false
    t.binary  "VersionNumber"
    t.uuid    "ParentObjectId",                   null: false
    t.integer "ParentObjectTypeCode"
    t.integer "EmailColumnNumber"
  end

  add_index "EmailSearchBase", ["EmailAddress", "ParentObjectTypeCode"], name: "ndx_emailaddress_for_specificobject_search"
  add_index "EmailSearchBase", ["EmailAddress"], name: "ndx_emailaddress_for_search"
  add_index "EmailSearchBase", ["ParentObjectId", "EmailColumnNumber"], name: "ndx_for_forward_update", unique: true
  add_index "EmailSearchBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "Entity", id: false, force: true do |t|
  end

  create_table "EntityIds", primary_key: "EntityId", force: true do |t|
  end

  create_table "EntityIndex", id: false, force: true do |t|
  end

  create_table "EntityMapBase", primary_key: "EntityMapId", force: true do |t|
    t.string   "TargetEntityName",     limit: 50, null: false
    t.datetime "CreatedOn"
    t.string   "SourceEntityName",     limit: 50, null: false
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId",                  null: false
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.datetime "ModifiedOn"
    t.integer  "ComponentState",                  null: false
    t.boolean  "IsManaged",                       null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.datetime "OverwriteTime",                   null: false
    t.uuid     "EntityMapIdUnique",               null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "SolutionId",                      null: false
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "EntityMapBase", ["EntityMapIdUnique"], name: "UQ_EntityMapBase_EntityMapIdUnique", unique: true
  add_index "EntityMapBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "EntityRelationship", id: false, force: true do |t|
  end

  create_table "EntityRelationshipIds", primary_key: "EntityRelationshipId", force: true do |t|
  end

  create_table "EntityRelationshipRelationships", id: false, force: true do |t|
  end

  create_table "EntityRelationshipRole", id: false, force: true do |t|
  end

  create_table "EquipmentBase", primary_key: "EquipmentId", force: true do |t|
    t.uuid     "SiteId"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "BusinessUnitId",                                                  null: false
    t.string   "Skills",                    limit: 100
    t.binary   "VersionNumber"
    t.datetime "CreatedOn"
    t.integer  "TimeZoneCode",                                                    null: false
    t.boolean  "DisplayInServiceViews"
    t.boolean  "IsDisabled"
    t.string   "Name",                      limit: 160,                           null: false
    t.uuid     "CalendarId",                                                      null: false
    t.text     "Description"
    t.string   "EMailAddress",              limit: 100
    t.uuid     "OrganizationId",                                                  null: false
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "TransactionCurrencyId"
  end

  add_index "EquipmentBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "EquipmentBase", ["CalendarId"], name: "ndx_for_cascaderelationship_calendar_equipment"
  add_index "EquipmentBase", ["Name"], name: "ndx_SystemManaged_Equipment"
  add_index "EquipmentBase", ["SiteId"], name: "fndx_for_cascaderelationship_site_equipment"
  add_index "EquipmentBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "EquipmentExtensionBase", primary_key: "EquipmentId", force: true do |t|
  end

  create_table "FaxBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "FieldPermissionBase", primary_key: "ComponentState", force: true do |t|
    t.uuid     "FieldPermissionIdUnique",            null: false
    t.uuid     "SolutionId",                         null: false
    t.integer  "CanRead",                            null: false
    t.boolean  "IsManaged",                          null: false
    t.uuid     "SupportingSolutionId"
    t.integer  "CanCreate",                          null: false
    t.uuid     "FieldSecurityProfileId",             null: false
    t.integer  "EntityName",                         null: false
    t.uuid     "FieldPermissionId",                  null: false
    t.datetime "OverwriteTime",                      null: false
    t.binary   "VersionNumber"
    t.integer  "CanUpdate",                          null: false
    t.string   "AttributeLogicalName",    limit: 50, null: false
  end

  add_index "FieldPermissionBase", ["FieldPermissionIdUnique"], name: "UQ_FieldPermissionBase_FieldPermissionIdUnique", unique: true
  add_index "FieldPermissionBase", ["FieldSecurityProfileId"], name: "ndx_for_cascaderelationship_fieldsecurityprofile_permissions"
  add_index "FieldPermissionBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "FieldSecurityProfileBase", primary_key: "SolutionId", force: true do |t|
    t.text     "Description"
    t.integer  "ComponentState",                           null: false
    t.datetime "ModifiedOn"
    t.datetime "OverwriteTime",                            null: false
    t.datetime "CreatedOn"
    t.boolean  "IsManaged",                                null: false
    t.uuid     "ModifiedBy"
    t.uuid     "OrganizationId",                           null: false
    t.uuid     "CreatedBy"
    t.string   "Name",                         limit: 100, null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.binary   "VersionNumber"
    t.uuid     "FieldSecurityProfileId",                   null: false
    t.uuid     "FieldSecurityProfileIdUnique",             null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "SupportingSolutionId"
  end

  add_index "FieldSecurityProfileBase", ["FieldSecurityProfileIdUnique"], name: "UQ_FieldSecurityProfileBase_FieldSecurityProfileIdUnique", unique: true
  add_index "FieldSecurityProfileBase", ["Name", "ModifiedOn"], name: "ndx_SystemManaged_FieldSecurityProfile"
  add_index "FieldSecurityProfileBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "FilterTemplate", primary_key: "FilterTemplateId", force: true do |t|
    t.text    "FetchXml"
    t.text    "Description"
    t.integer "QueryType",                    null: false
    t.integer "ReturnedTypeCode",             null: false
    t.string  "Name",             limit: 100, null: false
  end

  create_table "GoalBase", primary_key: "GoalId", force: true do |t|
    t.datetime "CreatedOn"
    t.decimal  "ComputedTargetAsOfTodayMoney"
    t.datetime "LastRolledupDate"
    t.uuid     "RollUpQueryInprogressDecimalId"
    t.integer  "RollupErrorCode"
    t.datetime "GoalStartDate"
    t.uuid     "CreatedBy"
    t.integer  "StateCode",                                                                        null: false
    t.uuid     "ModifiedBy"
    t.integer  "ComputedTargetAsOfTodayInteger"
    t.uuid     "RollUpQueryCustomDecimalId"
    t.datetime "ModifiedOn"
    t.integer  "TargetInteger"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwningBusinessUnit"
    t.integer  "InProgressInteger"
    t.datetime "GoalEndDate"
    t.integer  "StatusCode"
    t.decimal  "ExchangeRate",                                           precision: 23, scale: 10
    t.integer  "FiscalPeriod"
    t.boolean  "ConsiderOnlyGoalOwnersRecords",                                                    null: false
    t.integer  "Depth"
    t.decimal  "InProgressDecimal",                                      precision: 23, scale: 10
    t.decimal  "Percentage",                                             precision: 23, scale: 10
    t.string   "StretchTargetString",                       limit: 100
    t.uuid     "OwnerId",                                                                          null: false
    t.integer  "ImportSequenceNumber"
    t.uuid     "RollUpQueryInprogressMoneyId"
    t.uuid     "RollupQueryActualIntegerId"
    t.string   "Title",                                     limit: 100
    t.boolean  "RollupOnlyFromChildGoals",                                                         null: false
    t.uuid     "TreeId"
    t.decimal  "StretchTargetDecimal",                                   precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "GoalWithErrorId"
    t.decimal  "ActualMoney"
    t.integer  "FiscalYear"
    t.uuid     "TransactionCurrencyId"
    t.uuid     "RollUpQueryCustomMoneyId"
    t.integer  "CustomRollupFieldInteger"
    t.uuid     "RollUpQueryInprogressIntegerId"
    t.binary   "VersionNumber"
    t.uuid     "RollUpQueryCustomIntegerId"
    t.decimal  "ActualDecimal",                                          precision: 23, scale: 10
    t.boolean  "IsOverridden"
    t.string   "ActualString",                              limit: 100
    t.integer  "TimeZoneRuleVersionNumber"
    t.string   "TargetString",                              limit: 100
    t.boolean  "IsOverride"
    t.decimal  "CustomRollupFieldDecimal",                               precision: 23, scale: 10
    t.uuid     "RollUpQueryActualMoneyId"
    t.integer  "UTCConversionTimeZoneCode"
    t.boolean  "IsFiscalPeriodGoal"
    t.uuid     "RollUpQueryActualDecimalId"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ComputedTargetAsOfTodayDecimal",                         precision: 23, scale: 10
    t.decimal  "TargetDecimal",                                          precision: 23, scale: 10
    t.decimal  "StretchTargetMoney"
    t.string   "InProgressString",                          limit: 100
    t.decimal  "TargetMoney"
    t.uuid     "MetricId"
    t.decimal  "InProgressMoney"
    t.uuid     "GoalOwnerId"
    t.string   "CustomRollupFieldString",                   limit: 100
    t.decimal  "ComputedTargetAsOfTodayPercentageAchieved",              precision: 23, scale: 10
    t.decimal  "CustomRollupFieldMoney"
    t.uuid     "ParentGoalId"
    t.integer  "ActualInteger"
    t.integer  "StretchTargetInteger"
    t.integer  "OwnerIdType",                                                                      null: false
    t.integer  "GoalOwnerIdType"
    t.string   "GoalOwnerIdName",                           limit: 4000
    t.decimal  "CustomRollupFieldMoney_Base"
    t.decimal  "ActualMoney_Base"
    t.decimal  "TargetMoney_Base"
    t.decimal  "StretchTargetMoney_Base"
    t.decimal  "InProgressMoney_Base"
    t.decimal  "ComputedTargetAsOfTodayMoney_Base"
    t.string   "GoalOwnerIdYomiName",                       limit: 4000
  end

  add_index "GoalBase", ["GoalOwnerId"], name: "ndx_for_cascaderelationship_systemuser_goal_goalowner"
  add_index "GoalBase", ["GoalStartDate", "GoalEndDate", "Title", "TargetString", "Percentage", "ActualString", "InProgressString"], name: "ndx_SystemManaged_Goal"
  add_index "GoalBase", ["GoalWithErrorId"], name: "ndx_for_cascaderelationship_goal_rolluperror_goal"
  add_index "GoalBase", ["MetricId"], name: "ndx_for_cascaderelationship_metric_goal"
  add_index "GoalBase", ["OwnerId"], name: "ndx_Security"
  add_index "GoalBase", ["OwningBusinessUnit"], name: "ndx_for_cascaderelationship_business_unit_goal"
  add_index "GoalBase", ["ParentGoalId"], name: "ndx_for_cascaderelationship_goal_parent_goal"
  add_index "GoalBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "GoalBase", ["VersionNumber"], name: "ndx_Sync"

  create_table "GoalExtensionBase", primary_key: "GoalId", force: true do |t|
  end

  create_table "GoalRollupQueryBase", primary_key: "GoalRollupQueryId", force: true do |t|
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                             null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "QueryEntityType"
    t.text     "FetchXml"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.uuid     "OwnerId",                               null: false
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "Name",                      limit: 100
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.uuid     "OwningBusinessUnit"
    t.integer  "StatusCode"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.integer  "OwnerIdType",                           null: false
  end

  add_index "GoalRollupQueryBase", ["Name", "QueryEntityType", "ModifiedOn"], name: "ndx_SystemManaged_GoalRollupQuery"
  add_index "GoalRollupQueryBase", ["OwnerId"], name: "ndx_Security"
  add_index "GoalRollupQueryBase", ["OwningBusinessUnit"], name: "ndx_for_cascaderelationship_business_unit_goalrollupquery"
  add_index "GoalRollupQueryBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "GoalRollupQueryBase", ["VersionNumber"], name: "ndx_Sync"

  create_table "ImportBase", primary_key: "ImportId", force: true do |t|
    t.boolean  "SendNotification",               null: false
    t.boolean  "IsImport",                       null: false
    t.integer  "ModeCode",                       null: false
    t.integer  "StateCode",                      null: false
    t.uuid     "OwningBusinessUnit"
    t.string   "EMailAddress",       limit: 100
    t.uuid     "CreatedBy"
    t.string   "Name",               limit: 256
    t.datetime "CreatedOn",                      null: false
    t.uuid     "ModifiedBy"
    t.integer  "Sequence",                       null: false
    t.datetime "ModifiedOn",                     null: false
    t.integer  "StatusCode",                     null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                        null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "OwnerIdType",                    null: false
  end

  add_index "ImportBase", ["OwnerId"], name: "ndx_Security"
  add_index "ImportBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_BusinessUnit_Imports"
  add_index "ImportBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "ImportDataBase", primary_key: "ImportDataId", force: true do |t|
    t.datetime "CreatedOn",          null: false
    t.integer  "LineNumber"
    t.uuid     "RecordId"
    t.text     "Data"
    t.datetime "ModifiedOn",         null: false
    t.uuid     "ImportFileId"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedBy"
    t.integer  "StateCode",          null: false
    t.uuid     "OwningBusinessUnit"
    t.boolean  "HasError"
    t.integer  "StatusCode",         null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",            null: false
    t.integer  "ErrorType"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "OwnerIdType",        null: false
  end

  add_index "ImportDataBase", ["ImportDataId", "HasError"], name: "ndx_idAndHasError"
  add_index "ImportDataBase", ["ImportDataId", "LineNumber"], name: "ndx_idAndLinenumber"
  add_index "ImportDataBase", ["ImportFileId"], name: "fndx_fileId"
  add_index "ImportDataBase", ["OwnerId"], name: "ndx_Security"
  add_index "ImportDataBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_BusinessUnit_ImportData"
  add_index "ImportDataBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "ImportEntityMappingBase", primary_key: "ImportEntityMappingId", force: true do |t|
    t.uuid     "ImportMapId"
    t.integer  "StatusCode",                     null: false
    t.uuid     "ModifiedBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "StateCode",                      null: false
    t.datetime "ModifiedOn",                     null: false
    t.datetime "CreatedOn",                      null: false
    t.integer  "DeDupe",                         null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "ProcessCode",                    null: false
    t.string   "TargetEntityName",   limit: 160
    t.uuid     "CreatedBy"
    t.string   "SourceEntityName",   limit: 160
  end

  add_index "ImportEntityMappingBase", ["SourceEntityName"], name: "ndx_SystemManaged_ImportEntityMapping"
  add_index "ImportEntityMappingBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "ImportFileBase", primary_key: "ImportFileId", force: true do |t|
    t.string   "Name",                      limit: 256
    t.boolean  "IsFirstRowHeader"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "ModifiedBy"
    t.integer  "SuccessCount"
    t.integer  "StatusCode"
    t.text     "AdditionalHeaderRow"
    t.integer  "ProcessCode",                            null: false
    t.integer  "ParsedTableColumnsNumber"
    t.text     "Content",                                null: false
    t.uuid     "RecordsOwnerId"
    t.string   "Source",                    limit: 256
    t.integer  "TimeZoneRuleVersionNumber"
    t.string   "SourceEntityName",          limit: 160
    t.integer  "StateCode",                              null: false
    t.string   "ParsedTableColumnPrefix",   limit: 160
    t.string   "ParsedTableName",           limit: 160
    t.integer  "ProgressCounter"
    t.boolean  "EnableDuplicateDetection"
    t.uuid     "ImportId",                               null: false
    t.integer  "FailureCount"
    t.integer  "FieldDelimiterCode"
    t.string   "TargetEntityName",          limit: 160
    t.integer  "UTCConversionTimeZoneCode"
    t.text     "HeaderRow"
    t.datetime "CompletedOn"
    t.integer  "DataDelimiterCode"
    t.integer  "TotalCount"
    t.integer  "ProcessingStatus",                       null: false
    t.string   "Size",                      limit: 160
    t.datetime "CreatedOn"
    t.uuid     "ImportMapId"
    t.boolean  "UseSystemMap"
    t.datetime "ModifiedOn",                             null: false
    t.uuid     "CreatedBy"
    t.uuid     "OwnerId",                                null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "FileTypeCode",                           null: false
    t.text     "RelatedEntityColumns"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "PartialFailureCount"
    t.string   "RecordsOwnerIdName",        limit: 4000
    t.integer  "OwnerIdType",                            null: false
    t.integer  "RecordsOwnerIdType",                     null: false
  end

  add_index "ImportFileBase", ["FileTypeCode", "CreatedOn", "Name", "CreatedBy", "SuccessCount", "FailureCount", "TotalCount"], name: "ndx_SystemManaged_ImportFile"
  add_index "ImportFileBase", ["OwnerId"], name: "ndx_Security"
  add_index "ImportFileBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_BusinessUnit_ImportFiles"
  add_index "ImportFileBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "ImportJobBase", primary_key: "ImportJobId", force: true do |t|
    t.datetime "CompletedOn"
    t.datetime "StartedOn"
    t.datetime "ModifiedOn"
    t.text     "Data"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.datetime "CreatedOn"
    t.string   "Name",                      limit: 256
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.string   "SolutionName",              limit: 256
    t.uuid     "OrganizationId",                        null: false
    t.uuid     "CreatedOnBehalfBy"
    t.float    "Progress",                  limit: 53
    t.uuid     "ModifiedBy"
  end

  add_index "ImportJobBase", ["CreatedOn", "Name", "Progress", "StartedOn", "CompletedOn", "ModifiedOn", "CreatedBy", "ModifiedBy"], name: "ndx_SystemManaged_ImportJob"
  add_index "ImportJobBase", ["SolutionName"], name: "fndx_SolutionName"

  create_table "ImportLogBase", primary_key: "ImportLogId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.integer  "SequenceNumber",                 null: false
    t.integer  "LineNumber"
    t.text     "AdditionalInfo"
    t.integer  "LogPhaseCode"
    t.integer  "StateCode",                      null: false
    t.integer  "ErrorNumber"
    t.integer  "StatusCode",                     null: false
    t.datetime "CreatedOn",                      null: false
    t.string   "ErrorDescription",   limit: 512
    t.uuid     "CreatedBy"
    t.uuid     "OwningBusinessUnit"
    t.datetime "ModifiedOn",                     null: false
    t.text     "HeaderColumn"
    t.text     "ColumnValue"
    t.uuid     "ImportDataId"
    t.uuid     "ImportFileId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                        null: false
    t.integer  "OwnerIdType",                    null: false
  end

  add_index "ImportLogBase", ["ImportDataId"], name: "fndx_importdata"
  add_index "ImportLogBase", ["ImportFileId"], name: "fndx_importfile"
  add_index "ImportLogBase", ["OwnerId"], name: "ndx_Security"
  add_index "ImportLogBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_BusinessUnit_ImportLogs"
  add_index "ImportLogBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "ImportMapBase", primary_key: "ImportMapId", force: true do |t|
    t.integer  "StatusCode",                                                  null: false
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn",                                                  null: false
    t.integer  "TargetEntity"
    t.integer  "ImportMapType"
    t.string   "TargetUserIdentifierForSourceCRMUserLink",        limit: 160
    t.boolean  "IsWizardCreated"
    t.datetime "CreatedOn",                                                   null: false
    t.uuid     "CreatedBy"
    t.text     "Description"
    t.string   "Name",                                            limit: 320
    t.string   "SourceUserIdentifierForSourceDataSourceUserLink", limit: 160
    t.string   "SourceUserIdentifierForSourceCRMUserLink",        limit: 160
    t.integer  "StateCode",                                                   null: false
    t.uuid     "OwningBusinessUnit"
    t.string   "Source",                                          limit: 160
    t.boolean  "IsValidForImport"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                                                     null: false
    t.integer  "SourceType"
    t.text     "MapCustomizations"
    t.integer  "EntitiesPerFile",                                             null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "OwnerIdType",                                                 null: false
  end

  add_index "ImportMapBase", ["IsValidForImport", "ImportMapType", "ModifiedOn", "CreatedOn"], name: "ndx_SystemManaged_ImportMap"
  add_index "ImportMapBase", ["Name"], name: "fndx_Name", unique: true
  add_index "ImportMapBase", ["OwnerId"], name: "ndx_Security"
  add_index "ImportMapBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_BusinessUnit_ImportMaps"
  add_index "ImportMapBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "IncidentBase", primary_key: "IncidentId", force: true do |t|
    t.uuid     "OwningBusinessUnit"
    t.uuid     "ContractDetailId"
    t.uuid     "SubjectId"
    t.uuid     "ContractId"
    t.integer  "ActualServiceUnits"
    t.integer  "CaseOriginCode"
    t.integer  "BilledServiceUnits"
    t.integer  "CaseTypeCode"
    t.string   "ProductSerialNumber",       limit: 100
    t.string   "Title",                     limit: 200
    t.uuid     "ProductId"
    t.integer  "ContractServiceLevelCode"
    t.text     "Description"
    t.boolean  "IsDecrementing"
    t.datetime "CreatedOn"
    t.string   "TicketNumber",              limit: 100
    t.integer  "PriorityCode"
    t.integer  "CustomerSatisfactionCode"
    t.integer  "IncidentStageCode"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.datetime "FollowupBy"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.integer  "StateCode",                                                        null: false
    t.integer  "SeverityCode"
    t.integer  "StatusCode"
    t.uuid     "ResponsibleContactId"
    t.uuid     "KbArticleId"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "TransactionCurrencyId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "CustomerId"
    t.uuid     "OwnerId",                                                          null: false
    t.integer  "OwnerIdType",                                                      null: false
    t.integer  "CustomerIdType"
    t.string   "CustomerIdName",            limit: 4000
    t.string   "CustomerIdYomiName",        limit: 4000
    t.uuid     "ExistingCase"
    t.integer  "ServiceStage"
  end

  add_index "IncidentBase", ["ContractDetailId"], name: "fndx_for_cascaderelationship_contract_detail_cases"
  add_index "IncidentBase", ["ContractId"], name: "fndx_for_cascaderelationship_contract_cases"
  add_index "IncidentBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_incident_customer_accounts"
  add_index "IncidentBase", ["KbArticleId"], name: "fndx_for_cascaderelationship_kbarticle_incidents"
  add_index "IncidentBase", ["OwnerId"], name: "ndx_Security"
  add_index "IncidentBase", ["OwningBusinessUnit", "TicketNumber"], name: "AK1_IncidentBase", unique: true
  add_index "IncidentBase", ["PriorityCode", "CreatedOn"], name: "ndx_SystemManaged_Incident"
  add_index "IncidentBase", ["ProductId"], name: "fndx_for_cascaderelationship_product_incidents"
  add_index "IncidentBase", ["ResponsibleContactId"], name: "fndx_for_cascaderelationship_contact_as_responsible_contact"
  add_index "IncidentBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "IncidentBase", ["StateCode"], name: "ndx_report"
  add_index "IncidentBase", ["SubjectId"], name: "fndx_for_cascaderelationship_subject_incidents"
  add_index "IncidentBase", ["TicketNumber"], name: "fndx_TicketNumber"
  add_index "IncidentBase", ["Title"], name: "fndx_Title"
  add_index "IncidentBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "IncidentExtensionBase", primary_key: "IncidentId", force: true do |t|
  end

  create_table "IndexAttributes", id: false, force: true do |t|
  end

  create_table "IndexFilters", id: false, force: true do |t|
  end

  create_table "IntegrationStatusBase", primary_key: "IntegrationEntryId", force: true do |t|
    t.string   "SystemName",         limit: 200
    t.uuid     "ObjectId"
    t.integer  "ObjectTypeCode"
    t.integer  "StateCode"
    t.text     "StateDescription"
    t.integer  "StatusCode"
    t.text     "StatusDescription"
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.uuid     "OrganizationId",                 null: false
    t.binary   "VersionNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "IntegrationStatusBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "IntegrationStatusBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "InterProcessLockBase", primary_key: "InterProcessLockId", force: true do |t|
    t.uuid     "Token",      null: false
    t.datetime "ModifiedOn"
  end

  create_table "InternalAddressBase", primary_key: "InternalAddressId", force: true do |t|
    t.uuid     "ParentId",                        null: false
    t.integer  "AddressNumber"
    t.integer  "ObjectTypeCode",                  null: false
    t.integer  "AddressTypeCode"
    t.string   "Name",               limit: 200
    t.string   "Line1",              limit: 4000
    t.string   "Line2",              limit: 4000
    t.string   "Line3",              limit: 4000
    t.string   "City",               limit: 4000
    t.string   "StateOrProvince",    limit: 4000
    t.string   "County",             limit: 4000
    t.string   "Country",            limit: 4000
    t.string   "PostOfficeBox",      limit: 50
    t.string   "PostalCode",         limit: 50
    t.integer  "UTCOffset"
    t.string   "UPSZone",            limit: 4
    t.float    "Latitude",           limit: 53
    t.string   "Telephone1",         limit: 64
    t.float    "Longitude",          limit: 53
    t.integer  "ShippingMethodCode"
    t.string   "Telephone2",         limit: 50
    t.string   "Telephone3",         limit: 50
    t.binary   "VersionNumber"
    t.string   "Fax",                limit: 64
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "InternalAddressBase", ["ParentId", "AddressNumber"], name: "AK1_InternalAddressBase", unique: true
  add_index "InternalAddressBase", ["ParentId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_site_internal_addresses"
  add_index "InternalAddressBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "InvalidDependencyBase", primary_key: "InvalidDependencyId", force: true do |t|
    t.boolean "IsExistingNodeRequiredComponent"
    t.integer "ExistingDependencyType",          null: false
    t.integer "MissingComponentLookupType",      null: false
    t.uuid    "MissingComponentId"
    t.text    "MissingComponentInfo"
    t.uuid    "ExistingComponentId"
    t.integer "ExistingComponentType"
    t.integer "MissingComponentType",            null: false
  end

  create_table "InvoiceBase", primary_key: "InvoiceId", force: true do |t|
    t.uuid     "OpportunityId"
    t.integer  "PriorityCode"
    t.uuid     "SalesOrderId"
    t.uuid     "OwningBusinessUnit"
    t.datetime "LastBackofficeSubmit"
    t.uuid     "PriceLevelId"
    t.string   "InvoiceNumber",                    limit: 100,                            null: false
    t.string   "Name",                             limit: 300
    t.text     "Description"
    t.decimal  "DiscountAmount"
    t.decimal  "FreightAmount"
    t.decimal  "TotalAmount"
    t.decimal  "TotalLineItemAmount"
    t.decimal  "TotalLineItemDiscountAmount"
    t.decimal  "TotalAmountLessFreight"
    t.decimal  "TotalDiscountAmount"
    t.uuid     "CreatedBy"
    t.decimal  "TotalTax"
    t.integer  "ShippingMethodCode"
    t.integer  "PaymentTermsCode"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                                                               null: false
    t.integer  "StatusCode"
    t.string   "ShipTo_Name",                      limit: 200
    t.binary   "VersionNumber"
    t.integer  "PricingErrorCode"
    t.string   "ShipTo_Line1",                     limit: 4000
    t.string   "ShipTo_Line2",                     limit: 4000
    t.string   "ShipTo_Line3",                     limit: 4000
    t.string   "ShipTo_City",                      limit: 80
    t.string   "ShipTo_StateOrProvince",           limit: 50
    t.string   "ShipTo_Country",                   limit: 80
    t.string   "ShipTo_PostalCode",                limit: 20
    t.boolean  "WillCall"
    t.string   "ShipTo_Telephone",                 limit: 50
    t.string   "BillTo_Name",                      limit: 200
    t.integer  "ShipTo_FreightTermsCode"
    t.string   "ShipTo_Fax",                       limit: 50
    t.string   "BillTo_Line1",                     limit: 4000
    t.string   "BillTo_Line2",                     limit: 4000
    t.string   "BillTo_Line3",                     limit: 4000
    t.string   "BillTo_City",                      limit: 80
    t.string   "BillTo_StateOrProvince",           limit: 50
    t.string   "BillTo_Country",                   limit: 80
    t.string   "BillTo_PostalCode",                limit: 20
    t.string   "BillTo_Telephone",                 limit: 50
    t.string   "BillTo_Fax",                       limit: 50
    t.decimal  "DiscountPercentage",                            precision: 23, scale: 10
    t.boolean  "IsPriceLocked"
    t.datetime "DateDelivered"
    t.datetime "DueDate"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ExchangeRate",                                  precision: 23, scale: 10
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "TotalLineItemAmount_Base"
    t.decimal  "TotalLineItemDiscountAmount_Base"
    t.decimal  "TotalTax_Base"
    t.decimal  "TotalAmountLessFreight_Base"
    t.decimal  "DiscountAmount_Base"
    t.decimal  "TotalAmount_Base"
    t.decimal  "FreightAmount_Base"
    t.decimal  "TotalDiscountAmount_Base"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                                                                 null: false
    t.uuid     "CustomerId"
    t.integer  "CustomerIdType"
    t.string   "CustomerIdName",                   limit: 4000
    t.integer  "OwnerIdType",                                                             null: false
    t.string   "CustomerIdYomiName",               limit: 4000
  end

  add_index "InvoiceBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_invoice_customer_accounts"
  add_index "InvoiceBase", ["Name", "TotalAmount"], name: "ndx_SystemManaged_Invoice"
  add_index "InvoiceBase", ["OpportunityId"], name: "fndx_for_cascaderelationship_opportunity_invoices"
  add_index "InvoiceBase", ["OwnerId"], name: "ndx_Security"
  add_index "InvoiceBase", ["OwningBusinessUnit", "InvoiceNumber"], name: "AK1_InvoiceBase", unique: true
  add_index "InvoiceBase", ["SalesOrderId"], name: "fndx_for_cascaderelationship_order_invoices"
  add_index "InvoiceBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "InvoiceBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "InvoiceDetailBase", primary_key: "InvoiceDetailId", force: true do |t|
    t.uuid     "SalesRepId"
    t.boolean  "IsProductOverridden"
    t.integer  "LineItemNumber"
    t.boolean  "IsCopied"
    t.uuid     "InvoiceId",                                                        null: false
    t.decimal  "QuantityBackordered",                    precision: 23, scale: 10
    t.uuid     "UoMId"
    t.uuid     "ProductId"
    t.datetime "ActualDeliveryOn"
    t.decimal  "Quantity",                               precision: 23, scale: 10
    t.decimal  "ManualDiscountAmount"
    t.string   "ProductDescription",        limit: 500
    t.decimal  "VolumeDiscountAmount"
    t.decimal  "PricePerUnit"
    t.decimal  "BaseAmount"
    t.decimal  "QuantityCancelled",                      precision: 23, scale: 10
    t.string   "ShippingTrackingNumber",    limit: 100
    t.decimal  "ExtendedAmount"
    t.text     "Description"
    t.boolean  "IsPriceOverridden"
    t.string   "ShipTo_Name",               limit: 200
    t.integer  "PricingErrorCode"
    t.decimal  "Tax"
    t.datetime "CreatedOn"
    t.string   "ShipTo_Line1",              limit: 4000
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.string   "ShipTo_Line2",              limit: 4000
    t.string   "ShipTo_Line3",              limit: 4000
    t.datetime "ModifiedOn"
    t.string   "ShipTo_City",               limit: 80
    t.string   "ShipTo_StateOrProvince",    limit: 50
    t.string   "ShipTo_Country",            limit: 80
    t.string   "ShipTo_PostalCode",         limit: 20
    t.boolean  "WillCall"
    t.string   "ShipTo_Telephone",          limit: 50
    t.string   "ShipTo_Fax",                limit: 50
    t.integer  "ShipTo_FreightTermsCode"
    t.decimal  "QuantityShipped",                        precision: 23, scale: 10
    t.binary   "VersionNumber",                                                    null: false
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.uuid     "TransactionCurrencyId"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "VolumeDiscountAmount_Base"
    t.decimal  "BaseAmount_Base"
    t.decimal  "PricePerUnit_Base"
    t.decimal  "Tax_Base"
    t.decimal  "ExtendedAmount_Base"
    t.decimal  "ManualDiscountAmount_Base"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "InvoiceDetailBase", ["InvoiceId"], name: "cndx_for_cascaderelationship_invoice_details"
  add_index "InvoiceDetailBase", ["ProductId"], name: "fndx_for_cascaderelationship_product_invoice_details"
  add_index "InvoiceDetailBase", ["SalesRepId"], name: "fndx_for_cascaderelationship_system_user_invoicedetail"
  add_index "InvoiceDetailBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "InvoiceDetailExtensionBase", primary_key: "InvoiceDetailId", force: true do |t|
  end

  create_table "InvoiceExtensionBase", primary_key: "InvoiceId", force: true do |t|
  end

  create_table "IsvConfigBase", primary_key: "IsvConfigId", force: true do |t|
    t.text     "ConfigXML"
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId",     null: false
    t.binary   "VersionNumber"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  create_table "KbArticleBase", primary_key: "KbArticleId", force: true do |t|
    t.uuid     "KbArticleTemplateId",                                         null: false
    t.uuid     "OrganizationId",                                              null: false
    t.uuid     "SubjectId",                                                   null: false
    t.text     "ArticleXml"
    t.string   "Title",                 limit: 500
    t.string   "Number",                limit: 100
    t.text     "Content"
    t.text     "Description"
    t.text     "Comments"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                                                   null: false
    t.integer  "StatusCode"
    t.binary   "VersionNumber"
    t.text     "KeyWords"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "CreatedOnBehalfBy"
    t.decimal  "ExchangeRate",                      precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "TransactionCurrencyId"
    t.integer  "LanguageCode"
  end

  add_index "KbArticleBase", ["KbArticleTemplateId"], name: "ndx_for_cascaderelationship_kb_article_template_kb_articles"
  add_index "KbArticleBase", ["Number"], name: "AK1_KbArticleBase", unique: true
  add_index "KbArticleBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "KbArticleBase", ["SubjectId"], name: "ndx_for_cascaderelationship_subject_kb_articles"
  add_index "KbArticleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "KbArticleCommentBase", primary_key: "KbArticleCommentId", force: true do |t|
    t.uuid     "KbArticleId",                    null: false
    t.string   "Title",              limit: 200
    t.text     "CommentText"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "KbArticleCommentBase", ["KbArticleId"], name: "ndx_for_cascaderelationship_kbarticle_comments"
  add_index "KbArticleCommentBase", ["Title", "CreatedBy", "ModifiedOn"], name: "ndx_SystemManaged_KbArticleComment"
  add_index "KbArticleCommentBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "KbArticleExtensionBase", primary_key: "KbArticleId", force: true do |t|
  end

  create_table "KbArticleTemplateBase", primary_key: "KbArticleTemplateId", force: true do |t|
    t.text     "StructureXml"
    t.uuid     "OrganizationId",                        null: false
    t.text     "FormatXml"
    t.string   "Title",                     limit: 500
    t.binary   "VersionNumber"
    t.text     "Description"
    t.boolean  "IsActive"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.datetime "OverriddenCreatedOn"
    t.integer  "LanguageCode"
    t.integer  "ImportSequenceNumber"
    t.boolean  "IsCustomizable",                        null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "SolutionId",                            null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "ComponentState",                        null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "KbArticleTemplateIdUnique",             null: false
    t.boolean  "IsManaged",                             null: false
    t.datetime "OverwriteTime",                         null: false
  end

  add_index "KbArticleTemplateBase", ["IsActive", "LanguageCode"], name: "ndx_SystemManaged_KbArticleTemplate"
  add_index "KbArticleTemplateBase", ["KbArticleTemplateIdUnique"], name: "UQ_KbArticleTemplateBase_KbArticleTemplateIdUnique", unique: true
  add_index "KbArticleTemplateBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "KbArticleTemplateBaseIds", primary_key: "KbArticleTemplateId", force: true do |t|
  end

  create_table "LeadAddressBase", primary_key: "LeadAddressId", force: true do |t|
    t.uuid     "ParentId",                                                     null: false
    t.integer  "AddressNumber"
    t.integer  "AddressTypeCode"
    t.string   "Name",                  limit: 200
    t.string   "Line1",                 limit: 4000
    t.string   "Line2",                 limit: 4000
    t.string   "Line3",                 limit: 4000
    t.string   "City",                  limit: 4000
    t.string   "StateOrProvince",       limit: 4000
    t.string   "County",                limit: 4000
    t.string   "Country",               limit: 4000
    t.string   "PostOfficeBox",         limit: 50
    t.string   "PostalCode",            limit: 50
    t.integer  "UTCOffset"
    t.string   "UPSZone",               limit: 4
    t.float    "Latitude",              limit: 53
    t.string   "Telephone1",            limit: 50
    t.float    "Longitude",             limit: 53
    t.integer  "ShippingMethodCode"
    t.string   "Telephone2",            limit: 50
    t.string   "Telephone3",            limit: 50
    t.string   "Fax",                   limit: 50
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                       precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "LeadAddressBase", ["ParentId", "AddressNumber"], name: "AK1_LeadAddressBase", unique: true
  add_index "LeadAddressBase", ["ParentId"], name: "ndx_for_cascaderelationship_lead_addresses"
  add_index "LeadAddressBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "LeadBase", primary_key: "LeadId", force: true do |t|
    t.integer  "LeadSourceCode"
    t.integer  "LeadQualityCode"
    t.integer  "PriorityCode"
    t.integer  "IndustryCode"
    t.integer  "PreferredContactMethodCode"
    t.integer  "SalesStageCode"
    t.uuid     "OwningBusinessUnit"
    t.string   "Subject",                    limit: 300
    t.boolean  "ParticipatesInWorkflow"
    t.text     "Description"
    t.float    "EstimatedValue",             limit: 53
    t.datetime "EstimatedCloseDate"
    t.string   "CompanyName",                limit: 100
    t.string   "FirstName",                  limit: 50
    t.string   "MiddleName",                 limit: 50
    t.string   "LastName",                   limit: 50
    t.decimal  "Revenue"
    t.integer  "NumberOfEmployees"
    t.boolean  "DoNotPhone"
    t.string   "SIC",                        limit: 20
    t.boolean  "DoNotFax"
    t.string   "EMailAddress1",              limit: 100
    t.string   "JobTitle",                   limit: 100
    t.string   "Salutation",                 limit: 100
    t.boolean  "DoNotEMail"
    t.string   "EMailAddress2",              limit: 100
    t.boolean  "DoNotPostalMail"
    t.string   "EMailAddress3",              limit: 100
    t.string   "FullName",                   limit: 160
    t.string   "YomiFirstName",              limit: 150
    t.string   "WebSiteUrl",                 limit: 200
    t.string   "Telephone1",                 limit: 50
    t.string   "Telephone2",                 limit: 50
    t.string   "Telephone3",                 limit: 50
    t.datetime "CreatedOn"
    t.boolean  "IsPrivate"
    t.string   "Fax",                        limit: 50
    t.string   "YomiMiddleName",             limit: 150
    t.string   "YomiLastName",               limit: 150
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.string   "YomiFullName",               limit: 450
    t.string   "MobilePhone",                limit: 20
    t.integer  "StateCode",                                                         null: false
    t.string   "Pager",                      limit: 20
    t.integer  "StatusCode"
    t.binary   "VersionNumber"
    t.uuid     "MasterId"
    t.uuid     "CampaignId"
    t.boolean  "DoNotSendMM"
    t.boolean  "Merged"
    t.boolean  "DoNotBulkEMail"
    t.datetime "LastUsedInCampaign"
    t.uuid     "TransactionCurrencyId"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ExchangeRate",                            precision: 23, scale: 10
    t.decimal  "EstimatedAmount"
    t.decimal  "EstimatedAmount_Base"
    t.decimal  "Revenue_Base"
    t.string   "YomiCompanyName",            limit: 100
    t.boolean  "IsAutoCreate"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                                                           null: false
    t.uuid     "CustomerId"
    t.integer  "CustomerIdType"
    t.string   "CustomerIdName",             limit: 4000
    t.integer  "OwnerIdType",                                                       null: false
    t.string   "CustomerIdYomiName",         limit: 4000
    t.boolean  "DecisionMaker"
    t.integer  "Need"
    t.decimal  "BudgetAmount"
    t.text     "QualificationComments"
    t.uuid     "QualifyingOpportunityId"
    t.datetime "ScheduleFollowUp_Qualify"
    t.boolean  "ConfirmInterest"
    t.uuid     "ParentAccountId"
    t.datetime "ScheduleFollowUp_Prospect"
    t.uuid     "ParentContactId"
    t.integer  "InitialCommunication"
    t.integer  "SalesStage"
    t.integer  "BudgetStatus"
    t.integer  "PurchaseTimeFrame"
    t.integer  "PurchaseProcess"
    t.boolean  "EvaluateFit"
    t.decimal  "BudgetAmount_Base"
  end

  add_index "LeadBase", ["CampaignId"], name: "fndx_for_cascaderelationship_campaign_leads"
  add_index "LeadBase", ["CompanyName"], name: "ndx_companyname"
  add_index "LeadBase", ["CreatedOn", "LeadId", "StateCode"], name: "ndx_for_lead_views"
  add_index "LeadBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_lead_customer_accounts"
  add_index "LeadBase", ["FirstName"], name: "ndx_firstname"
  add_index "LeadBase", ["FullName", "LeadId"], name: "ndx_for_oob_views"
  add_index "LeadBase", ["FullName"], name: "fndx_FullName"
  add_index "LeadBase", ["LastName"], name: "ndx_lastname"
  add_index "LeadBase", ["LastUsedInCampaign", "CampaignId"], name: "ndx_campaign_leads"
  add_index "LeadBase", ["MasterId"], name: "fndx_for_cascaderelationship_lead_master_lead"
  add_index "LeadBase", ["OwnerId", "StateCode"], name: "ndx_Security"
  add_index "LeadBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_leads"
  add_index "LeadBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "LeadBase", ["StateCode", "StatusCode"], name: "ndx_for_oob_charts"
  add_index "LeadBase", ["Subject"], name: "ndx_subject"
  add_index "LeadBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "LeadCompetitors", primary_key: "LeadCompetitorId", force: true do |t|
    t.uuid   "LeadId",        null: false
    t.uuid   "CompetitorId",  null: false
    t.binary "VersionNumber"
  end

  add_index "LeadCompetitors", ["CompetitorId"], name: "ndx_for_cascaderelationship_competitor_leads"
  add_index "LeadCompetitors", ["LeadId", "CompetitorId"], name: "UQ_LeadCompetitors", unique: true
  add_index "LeadCompetitors", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "LeadExtensionBase", primary_key: "LeadId", force: true do |t|
  end

  create_table "LeadProduct", primary_key: "LeadProductId", force: true do |t|
    t.uuid   "ProductId",     null: false
    t.uuid   "LeadId",        null: false
    t.binary "VersionNumber"
  end

  add_index "LeadProduct", ["LeadId", "ProductId"], name: "UQ_LeadProduct", unique: true
  add_index "LeadProduct", ["ProductId"], name: "ndx_for_cascaderelationship_lead_products"
  add_index "LeadProduct", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "LetterBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "License", primary_key: "LicenseId", force: true do |t|
    t.uuid     "OrganizationId",                        null: false
    t.string   "LicenseKey",                limit: 100, null: false
    t.datetime "InstalledOn",                           null: false
    t.uuid     "LicenseType"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
  end

  create_table "ListBase", primary_key: "ListId", force: true do |t|
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.integer  "MemberCount"
    t.string   "ListName",                  limit: 128,                           null: false
    t.datetime "LastUsedOn"
    t.integer  "StateCode",                                                       null: false
    t.integer  "StatusCode"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "ModifiedBy"
    t.boolean  "DoNotSendOnOptOut"
    t.text     "Description"
    t.string   "Purpose",                   limit: 512
    t.decimal  "Cost"
    t.boolean  "IgnoreInactiveListMembers"
    t.integer  "MemberType"
    t.string   "Source",                    limit: 128
    t.integer  "CreatedFromCode",                                                 null: false
    t.binary   "VersionNumber"
    t.boolean  "LockStatus"
    t.uuid     "CreatedBy"
    t.uuid     "TransactionCurrencyId"
    t.integer  "ImportSequenceNumber"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.datetime "OverriddenCreatedOn"
    t.decimal  "Cost_Base"
    t.uuid     "CreatedOnBehalfBy"
    t.boolean  "Type",                                                            null: false
    t.text     "Query"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                                                         null: false
    t.integer  "OwnerIdType",                                                     null: false
  end

  add_index "ListBase", ["ListName"], name: "ndx_SystemManaged_List"
  add_index "ListBase", ["OwnerId"], name: "ndx_Security"
  add_index "ListBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_list"
  add_index "ListBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "ListBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ListExtensionBase", primary_key: "ListId", force: true do |t|
  end

  create_table "ListMemberBase", primary_key: "ListMemberId", force: true do |t|
    t.integer  "EntityType",         null: false
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.uuid     "EntityId",           null: false
    t.uuid     "ModifiedBy"
    t.uuid     "ListId",             null: false
    t.datetime "ModifiedOn"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "EntityIdTypeCode"
  end

  add_index "ListMemberBase", ["EntityId", "EntityType"], name: "ndx_for_cascaderelationship_Account_ListMember"
  add_index "ListMemberBase", ["ListId", "EntityId"], name: "cndx_ListMember"
  add_index "ListMemberBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "LocalizedLabel", id: false, force: true do |t|
  end

  create_table "LookUpMappingBase", primary_key: "LookUpMappingId", force: true do |t|
    t.string   "LookUpEntityName",                 limit: 160
    t.uuid     "CreatedBy"
    t.integer  "LookUpSourceCode",                             null: false
    t.uuid     "ColumnMappingId"
    t.datetime "ModifiedOn",                                   null: false
    t.uuid     "TransformationParameterMappingId"
    t.integer  "ProcessCode",                                  null: false
    t.integer  "StatusCode",                                   null: false
    t.integer  "StateCode",                                    null: false
    t.datetime "CreatedOn",                                    null: false
    t.string   "LookUpAttributeName",              limit: 160
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "LookUpMappingBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "MailMergeTemplateBase", primary_key: "MailMergeTemplateId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.text     "Body"
    t.integer  "TemplateTypeCode",                                                null: false
    t.uuid     "CreatedBy"
    t.string   "Description",               limit: 256
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "FileSize"
    t.text     "ParameterXml"
    t.integer  "MailMergeType"
    t.datetime "CreatedOn"
    t.text     "DefaultFilter"
    t.string   "MimeType",                  limit: 256
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "StateCode",                                                       null: false
    t.string   "FileName"
    t.integer  "LanguageCode"
    t.uuid     "OwningBusinessUnit"
    t.datetime "ModifiedOn"
    t.integer  "DocumentFormat"
    t.binary   "VersionNumber"
    t.string   "Name",                      limit: 425,                           null: false
    t.boolean  "IsPersonal",                                                      null: false
    t.integer  "StatusCode"
    t.boolean  "IsCustomizable",                                                  null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.uuid     "OwnerId",                                                         null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "MailMergeTemplateIdUnique",                                       null: false
    t.uuid     "TransactionCurrencyId"
    t.datetime "OverwriteTime",                                                   null: false
    t.uuid     "SolutionId",                                                      null: false
    t.boolean  "IsManaged",                                                       null: false
    t.integer  "ComponentState",                                                  null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "OwnerIdType",                                                     null: false
  end

  add_index "MailMergeTemplateBase", ["MailMergeTemplateIdUnique"], name: "UQ_MailMergeTemplateBase_MailMergeTemplateIdUnique", unique: true
  add_index "MailMergeTemplateBase", ["Name"], name: "ndx_SystemManaged_MailMergeTemplate"
  add_index "MailMergeTemplateBase", ["OwnerId"], name: "ndx_Security"
  add_index "MailMergeTemplateBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_mailmergetemplates"
  add_index "MailMergeTemplateBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "MailMergeTemplateBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "MailMergeTemplateExtensionBase", primary_key: "MailMergeTemplateIdUnique", force: true do |t|
    t.uuid "MailMergeTemplateId", null: false
  end

  create_table "ManagedProperty", id: false, force: true do |t|
  end

  create_table "MatchCode03706cd9148b490aa4f6a5a6f09bca25", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCode03706cd9148b490aa4f6a5a6f09bca25", ["MatchCode"], name: "Index1"
  add_index "MatchCode03706cd9148b490aa4f6a5a6f09bca25", ["ModifiedOn"], name: "Index2"
  add_index "MatchCode03706cd9148b490aa4f6a5a6f09bca25", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCode2be85ccc56fa45f8ba2255c73a33e447", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCode2be85ccc56fa45f8ba2255c73a33e447", ["MatchCode"], name: "Index1"
  add_index "MatchCode2be85ccc56fa45f8ba2255c73a33e447", ["ModifiedOn"], name: "Index2"
  add_index "MatchCode2be85ccc56fa45f8ba2255c73a33e447", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCode4abf128d307644509127068d01f6969a", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCode4abf128d307644509127068d01f6969a", ["MatchCode"], name: "Index1"
  add_index "MatchCode4abf128d307644509127068d01f6969a", ["ModifiedOn"], name: "Index2"
  add_index "MatchCode4abf128d307644509127068d01f6969a", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCode644e114623654881bd8861b9d975e6ed", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCode644e114623654881bd8861b9d975e6ed", ["MatchCode"], name: "Index1"
  add_index "MatchCode644e114623654881bd8861b9d975e6ed", ["ModifiedOn"], name: "Index2"
  add_index "MatchCode644e114623654881bd8861b9d975e6ed", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCode764295606b204d69944a4af2e58ea8c3", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCode764295606b204d69944a4af2e58ea8c3", ["MatchCode"], name: "Index1"
  add_index "MatchCode764295606b204d69944a4af2e58ea8c3", ["ModifiedOn"], name: "Index2"
  add_index "MatchCode764295606b204d69944a4af2e58ea8c3", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCode779c89d44cf6458bad2ee87d97b33026", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCode779c89d44cf6458bad2ee87d97b33026", ["MatchCode"], name: "Index1"
  add_index "MatchCode779c89d44cf6458bad2ee87d97b33026", ["ModifiedOn"], name: "Index2"
  add_index "MatchCode779c89d44cf6458bad2ee87d97b33026", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCode7f03acf3b71e4777a03594433a3dfde8", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCode7f03acf3b71e4777a03594433a3dfde8", ["MatchCode"], name: "Index1"
  add_index "MatchCode7f03acf3b71e4777a03594433a3dfde8", ["ModifiedOn"], name: "Index2"
  add_index "MatchCode7f03acf3b71e4777a03594433a3dfde8", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCodea941fafe5dab4a43b98d20e10603a878", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCodea941fafe5dab4a43b98d20e10603a878", ["MatchCode"], name: "Index1"
  add_index "MatchCodea941fafe5dab4a43b98d20e10603a878", ["ModifiedOn"], name: "Index2"
  add_index "MatchCodea941fafe5dab4a43b98d20e10603a878", ["ObjectId"], name: "Index3", unique: true

  create_table "MatchCodec0385fcf1ba54cd8ac873942587f1c0d", id: false, force: true do |t|
    t.uuid     "ObjectId",               null: false
    t.string   "MatchCode",  limit: 450
    t.datetime "ModifiedOn"
  end

  add_index "MatchCodec0385fcf1ba54cd8ac873942587f1c0d", ["MatchCode"], name: "Index1"
  add_index "MatchCodec0385fcf1ba54cd8ac873942587f1c0d", ["ModifiedOn"], name: "Index2"
  add_index "MatchCodec0385fcf1ba54cd8ac873942587f1c0d", ["ObjectId"], name: "Index3", unique: true

  create_table "MetadataSyncTrackingDeletedObject", primary_key: "Timestamp", force: true do |t|
    t.datetime "CreatedOn",              null: false
    t.integer  "MetadataObjectTypeCode", null: false
    t.uuid     "ObjectId",               null: false
  end

  add_index "MetadataSyncTrackingDeletedObject", ["ObjectId", "MetadataObjectTypeCode"], name: "ndx_MetadataSyncTrackingDeletedObjects"

  create_table "MetricBase", primary_key: "MetricId", force: true do |t|
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "ImportSequenceNumber"
    t.datetime "CreatedOn"
    t.boolean  "IsAmount"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.string   "Name",                      limit: 100
    t.text     "Description"
    t.datetime "OverriddenCreatedOn"
    t.integer  "AmountDataType"
    t.boolean  "IsStretchTracked"
    t.integer  "StateCode",                             null: false
    t.datetime "ModifiedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.uuid     "OrganizationId"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "StatusCode"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "MetricBase", ["ModifiedOn", "Name", "IsAmount", "AmountDataType"], name: "ndx_SystemManaged_Metric"
  add_index "MetricBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "MetricBase", ["VersionNumber"], name: "ndx_Sync"

  create_table "Notification", primary_key: "NotificationNumber", force: true do |t|
    t.text     "EventData"
    t.datetime "CreatedOn",                  null: false
    t.integer  "EventId",                    null: false
    t.uuid     "NotificationId",             null: false
    t.string   "CreatedOnString", limit: 40, null: false
    t.uuid     "OrganizationId",             null: false
  end

  add_index "Notification", ["CreatedOn", "EventId"], name: "ndx_NotificationCover"
  add_index "Notification", ["NotificationNumber"], name: "cndx_Notification", unique: true

  create_table "OpportunityBase", primary_key: "OpportunityId", force: true do |t|
    t.uuid     "PriceLevelId"
    t.integer  "OpportunityRatingCode"
    t.integer  "PriorityCode"
    t.string   "Name",                             limit: 300
    t.uuid     "StepId"
    t.text     "Description"
    t.decimal  "EstimatedValue"
    t.string   "StepName",                         limit: 200
    t.integer  "SalesStageCode"
    t.boolean  "ParticipatesInWorkflow"
    t.integer  "PricingErrorCode"
    t.datetime "EstimatedCloseDate"
    t.integer  "CloseProbability"
    t.decimal  "ActualValue"
    t.datetime "ActualCloseDate"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "OriginatingLeadId"
    t.datetime "CreatedOn"
    t.boolean  "IsPrivate"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.integer  "StateCode",                                                               null: false
    t.integer  "StatusCode"
    t.boolean  "IsRevenueSystemCalculated"
    t.uuid     "CampaignId"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                                  precision: 23, scale: 10
    t.integer  "ImportSequenceNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ActualValue_Base"
    t.decimal  "EstimatedValue_Base"
    t.decimal  "TotalDiscountAmount"
    t.uuid     "ModifiedOnBehalfBy"
    t.decimal  "TotalAmount"
    t.uuid     "CreatedOnBehalfBy"
    t.decimal  "TotalAmountLessFreight"
    t.decimal  "TotalLineItemDiscountAmount"
    t.uuid     "CustomerId"
    t.decimal  "DiscountAmount"
    t.uuid     "OwnerId",                                                                 null: false
    t.decimal  "FreightAmount"
    t.decimal  "TotalTax"
    t.decimal  "DiscountPercentage",                            precision: 23, scale: 10
    t.decimal  "TotalLineItemAmount"
    t.string   "CustomerIdName",                   limit: 4000
    t.integer  "CustomerIdType"
    t.integer  "OwnerIdType",                                                             null: false
    t.decimal  "TotalDiscountAmount_Base"
    t.decimal  "FreightAmount_Base"
    t.decimal  "TotalLineItemAmount_Base"
    t.decimal  "TotalTax_Base"
    t.decimal  "TotalLineItemDiscountAmount_Base"
    t.decimal  "TotalAmount_Base"
    t.decimal  "DiscountAmount_Base"
    t.decimal  "TotalAmountLessFreight_Base"
    t.string   "CustomerIdYomiName",               limit: 4000
    t.boolean  "FileDebrief"
    t.integer  "BudgetStatus"
    t.boolean  "PresentProposal"
    t.boolean  "SendThankYouNote"
    t.boolean  "EvaluateFit"
    t.datetime "FinalDecisionDate"
    t.boolean  "ConfirmInterest"
    t.boolean  "CompleteInternalReview"
    t.integer  "TimeLine"
    t.text     "CustomerPainPoints"
    t.boolean  "ResolveFeedback"
    t.integer  "PurchaseProcess"
    t.boolean  "CaptureProposalFeedback"
    t.boolean  "IdentifyCustomerContacts"
    t.boolean  "CompleteFinalProposal"
    t.text     "QuoteComments"
    t.decimal  "BudgetAmount"
    t.datetime "ScheduleFollowup_Qualify"
    t.integer  "Need"
    t.boolean  "PursuitDecision"
    t.uuid     "ParentAccountId"
    t.datetime "ScheduleProposalMeeting"
    t.text     "QualificationComments"
    t.integer  "SalesStage"
    t.uuid     "ParentContactId"
    t.integer  "InitialCommunication"
    t.boolean  "IdentifyPursuitTeam"
    t.datetime "ScheduleFollowup_Prospect"
    t.integer  "PurchaseTimeframe"
    t.boolean  "IdentifyCompetitors"
    t.boolean  "DecisionMaker"
    t.text     "CurrentSituation"
    t.text     "CustomerNeed"
    t.text     "ProposedSolution"
    t.boolean  "PresentFinalProposal"
    t.boolean  "DevelopProposal"
    t.decimal  "BudgetAmount_Base"
  end

  add_index "OpportunityBase", ["ActualCloseDate", "StateCode"], name: "ndx_FiscalYear"
  add_index "OpportunityBase", ["CampaignId"], name: "fndx_for_cascaderelationship_campaign_opportunities"
  add_index "OpportunityBase", ["CreatedOn"], name: "ndx_CreatedOn"
  add_index "OpportunityBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_opportunity_customer_accounts"
  add_index "OpportunityBase", ["EstimatedCloseDate"], name: "fndx_Opportunity_EstimatedCloseDate"
  add_index "OpportunityBase", ["Name"], name: "fndx_Opportunity_Name"
  add_index "OpportunityBase", ["OriginatingLeadId"], name: "fndx_for_cascaderelationship_opportunity_originating_lead"
  add_index "OpportunityBase", ["OwnerId", "StateCode"], name: "ndx_Security"
  add_index "OpportunityBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_opportunities"
  add_index "OpportunityBase", ["StateCode", "Name", "OpportunityId"], name: "ndx_OpenOpportunities"
  add_index "OpportunityBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "OpportunityBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "OpportunityCompetitors", primary_key: "OpportunityCompetitorId", force: true do |t|
    t.uuid   "OpportunityId", null: false
    t.uuid   "CompetitorId",  null: false
    t.binary "VersionNumber"
  end

  add_index "OpportunityCompetitors", ["CompetitorId"], name: "ndx_for_cascaderelationship_competitor_opportunities"
  add_index "OpportunityCompetitors", ["OpportunityId", "CompetitorId"], name: "UQ_OpportunityCompetitors", unique: true
  add_index "OpportunityCompetitors", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "OpportunityExtensionBase", primary_key: "OpportunityId", force: true do |t|
  end

  create_table "OpportunityProductBase", primary_key: "OpportunityProductId", force: true do |t|
    t.uuid     "ProductId"
    t.integer  "PricingErrorCode"
    t.boolean  "IsProductOverridden"
    t.boolean  "IsPriceOverridden"
    t.decimal  "PricePerUnit"
    t.uuid     "OpportunityId",                                                   null: false
    t.decimal  "BaseAmount"
    t.decimal  "ExtendedAmount"
    t.uuid     "UoMId"
    t.decimal  "ManualDiscountAmount"
    t.decimal  "Quantity",                              precision: 23, scale: 10
    t.datetime "CreatedOn"
    t.decimal  "VolumeDiscountAmount"
    t.uuid     "CreatedBy"
    t.decimal  "Tax"
    t.uuid     "ModifiedBy"
    t.string   "ProductDescription",        limit: 500
    t.datetime "ModifiedOn"
    t.text     "Description"
    t.binary   "VersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.uuid     "TransactionCurrencyId"
    t.decimal  "BaseAmount_Base"
    t.decimal  "ManualDiscountAmount_Base"
    t.decimal  "VolumeDiscountAmount_Base"
    t.decimal  "PricePerUnit_Base"
    t.decimal  "Tax_Base"
    t.decimal  "ExtendedAmount_Base"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "LineItemNumber"
  end

  add_index "OpportunityProductBase", ["OpportunityId"], name: "cndx_for_cascaderelationship_product_opportunities"
  add_index "OpportunityProductBase", ["ProductId"], name: "fndx_for_cascaderelationship_opportunity_products"
  add_index "OpportunityProductBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "OpportunityProductExtensionBase", primary_key: "OpportunityProductId", force: true do |t|
  end

  create_table "OptionSet", id: false, force: true do |t|
  end

  create_table "OptionSetIds", primary_key: "OptionSetId", force: true do |t|
  end

  create_table "OrganizationBase", primary_key: "OrganizationId", force: true do |t|
    t.string   "Name",                                             limit: 160,  null: false
    t.uuid     "UserGroupId"
    t.uuid     "PrivilegeUserGroupId"
    t.integer  "FiscalPeriodType",                                              null: false
    t.datetime "FiscalCalendarStart"
    t.integer  "DateFormatCode",                                                null: false
    t.integer  "TimeFormatCode",                                                null: false
    t.string   "CurrencySymbol",                                   limit: 13
    t.integer  "WeekStartDayCode",                                              null: false
    t.string   "DateSeparator",                                    limit: 5
    t.integer  "FullNameConventionCode",                                        null: false
    t.integer  "NegativeFormatCode",                                            null: false
    t.string   "NumberFormat",                                     limit: 2
    t.boolean  "IsDisabled"
    t.string   "DisabledReason",                                   limit: 500
    t.string   "KbPrefix",                                         limit: 20
    t.integer  "CurrentKbNumber"
    t.string   "CasePrefix",                                       limit: 20
    t.integer  "CurrentCaseNumber"
    t.string   "ContractPrefix",                                   limit: 20
    t.integer  "CurrentContractNumber"
    t.string   "QuotePrefix",                                      limit: 20
    t.integer  "CurrentQuoteNumber"
    t.string   "OrderPrefix",                                      limit: 20
    t.integer  "CurrentOrderNumber"
    t.string   "InvoicePrefix",                                    limit: 20
    t.integer  "CurrentInvoiceNumber"
    t.integer  "UniqueSpecifierLength"
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.string   "FiscalYearFormat",                                 limit: 25
    t.string   "FiscalPeriodFormat",                               limit: 25
    t.string   "FiscalYearPeriodConnect",                          limit: 5,    null: false
    t.integer  "LanguageCode"
    t.integer  "SortId"
    t.string   "DateFormatString"
    t.string   "TimeFormatString"
    t.integer  "PricingDecimalPrecision",                                       null: false
    t.boolean  "ShowWeekNumber"
    t.integer  "NextTrackingNumber"
    t.integer  "TagMaxAggressiveCycles",                           limit: 1,    null: false
    t.string   "TokenKey",                                         limit: 90
    t.uuid     "SystemUserId"
    t.uuid     "CreatedBy"
    t.boolean  "GrantAccessToNetworkService"
    t.boolean  "AllowOutlookScheduledSyncs",                                    null: false
    t.boolean  "AllowMarketingEmailExecution",                                  null: false
    t.uuid     "SqlAccessGroupId"
    t.integer  "CurrencyFormatCode",                                            null: false
    t.boolean  "FiscalSettingsUpdated",                                         null: false
    t.uuid     "ReportingGroupId"
    t.integer  "TokenExpiry",                                      limit: 2
    t.boolean  "ShareToPreviousOwnerOnAssign",                                  null: false
    t.uuid     "AcknowledgementTemplateId"
    t.uuid     "ModifiedBy"
    t.uuid     "IntegrationUserId"
    t.integer  "TrackingTokenIdBase"
    t.uuid     "BusinessClosureCalendarId"
    t.boolean  "AllowAutoUnsubscribeAcknowledgement"
    t.boolean  "AllowAutoUnsubscribe"
    t.text     "Picture"
    t.binary   "VersionNumber"
    t.string   "TrackingPrefix",                                   limit: 256
    t.integer  "MinOutlookSyncInterval",                                        null: false
    t.string   "BulkOperationPrefix",                              limit: 20,   null: false
    t.boolean  "AllowAutoResponseCreation"
    t.integer  "MaximumTrackingNumber"
    t.string   "CampaignPrefix",                                   limit: 20,   null: false
    t.string   "SqlAccessGroupName",                               limit: 256
    t.integer  "CurrentCampaignNumber"
    t.integer  "FiscalYearDisplayCode",                            limit: 1,    null: false
    t.text     "SiteMapXml"
    t.boolean  "IsRegistered"
    t.string   "ReportingGroupName",                               limit: 256
    t.integer  "CurrentBulkOperationNumber"
    t.string   "SchemaNamePrefix",                                 limit: 8
    t.boolean  "IgnoreInternalEmail",                                           null: false
    t.integer  "TagPollingPeriod",                                              null: false
    t.integer  "TrackingTokenIdDigits",                            limit: 1
    t.string   "NumberGroupFormat",                                limit: 50
    t.integer  "LongDateFormatCode",                                            null: false
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "CurrentImportSequenceNumber",                                   null: false
    t.string   "ParsedTablePrefix",                                limit: 20,   null: false
    t.string   "V3CalloutConfigHash",                              limit: 256
    t.boolean  "IsFiscalPeriodMonthBased",                                      null: false
    t.integer  "LocaleId",                                                      null: false
    t.string   "ParsedTableColumnPrefix",                          limit: 20,   null: false
    t.uuid     "SupportUserId"
    t.string   "AMDesignator",                                     limit: 25,   null: false
    t.integer  "CurrencyDisplayOption",                                         null: false
    t.integer  "MinAddressBookSyncInterval",                                    null: false
    t.boolean  "IsDuplicateDetectionEnabledForOnlineCreateUpdate",              null: false
    t.text     "FeatureSet"
    t.text     "BlockedAttachments"
    t.boolean  "IsDuplicateDetectionEnabledForOfflineSync",                     null: false
    t.boolean  "AllowOfflineScheduledSyncs",                                    null: false
    t.boolean  "AllowUnresolvedPartiesOnEmailSend",                             null: false
    t.string   "TimeSeparator",                                    limit: 5
    t.integer  "CurrentParsedTableNumber",                                      null: false
    t.integer  "MinOfflineSyncInterval",                                        null: false
    t.boolean  "AllowWebExcelExport",                                           null: false
    t.text     "ReferenceSiteMapXml"
    t.boolean  "IsDuplicateDetectionEnabledForImport",                          null: false
    t.integer  "CalendarType"
    t.boolean  "SQMEnabled"
    t.integer  "NegativeCurrencyFormatCode",                                    null: false
    t.boolean  "AllowAddressBookSyncs",                                         null: false
    t.integer  "ISVIntegrationCode",                                            null: false
    t.string   "DecimalSymbol",                                    limit: 5,    null: false
    t.integer  "MaxUploadFileSize",                                             null: false
    t.boolean  "IsAppMode",                                                     null: false
    t.boolean  "EnablePricingOnCreate",                                         null: false
    t.boolean  "IsSOPIntegrationEnabled",                                       null: false
    t.string   "PMDesignator",                                     limit: 25,   null: false
    t.integer  "CurrencyDecimalPrecision",                                      null: false
    t.integer  "MaxAppointmentDurationDays",                                    null: false
    t.integer  "EmailSendPollingPeriod",                                        null: false
    t.boolean  "RenderSecureIFrameForEmail",                                    null: false
    t.string   "NumberSeparator",                                  limit: 5,    null: false
    t.uuid     "PrivReportingGroupId"
    t.uuid     "BaseCurrencyId"
    t.integer  "MaxRecordsForExportToExcel",                                    null: false
    t.string   "PrivReportingGroupName",                           limit: 256
    t.integer  "YearStartWeekCode",                                             null: false
    t.boolean  "IsPresenceEnabled"
    t.boolean  "IsDuplicateDetectionEnabled",                                   null: false
    t.integer  "RecurrenceExpansionJobBatchInterval",                           null: false
    t.integer  "DefaultRecurrenceEndRangeType"
    t.integer  "HashMinAddressCount"
    t.boolean  "RequireApprovalForUserEmail",                                   null: false
    t.integer  "RecurrenceDefaultNumberOfOccurrences",                          null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "RequireApprovalForQueueEmail",                                  null: false
    t.boolean  "AllowEntityOnlyAudit",                                          null: false
    t.boolean  "IsAuditEnabled",                                                null: false
    t.integer  "RecurrenceExpansionSynchCreateMax",                             null: false
    t.integer  "GoalRollupExpiryTime",                                          null: false
    t.integer  "BaseCurrencyPrecision",                                         null: false
    t.integer  "FiscalPeriodFormatPeriod"
    t.boolean  "AllowClientMessageBarAd",                                       null: false
    t.string   "InitialVersion",                                   limit: 20
    t.text     "HashFilterKeywords"
    t.integer  "NextCustomObjectTypeCode",                                      null: false
    t.integer  "ExpireSubscriptionsInDays",                                     null: false
    t.text     "OrgDbOrgSettings"
    t.integer  "PastExpansionWindow",                                           null: false
    t.boolean  "EnableSmartMatching"
    t.integer  "MaxRecordsForLookupFilters",                                    null: false
    t.string   "BaseCurrencySymbol",                               limit: 4000, null: false
    t.integer  "ReportScriptErrors",                                            null: false
    t.integer  "RecurrenceExpansionJobBatchSize",                               null: false
    t.integer  "FutureExpansionWindow",                                         null: false
    t.boolean  "GetStartedPaneContentEnabled",                                  null: false
    t.uuid     "SampleDataImportId"
    t.string   "BaseISOCurrencyCode",                              limit: 4000, null: false
    t.integer  "GoalRollupFrequency",                                           null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "HashDeltaSubjectCount"
    t.integer  "HashMaxCount"
    t.integer  "FiscalYearFormatYear"
    t.integer  "FiscalYearFormatPrefix"
    t.integer  "PinpointLanguageCode"
    t.integer  "FiscalYearFormatSuffix"
    t.boolean  "IsUserAccessAuditEnabled",                                      null: false
    t.integer  "UserAccessAuditingInterval",                                    null: false
    t.boolean  "AllowUserFormModePreference",                                   null: false
    t.boolean  "UseReadForm",                                                   null: false
    t.integer  "YammerGroupId"
    t.boolean  "IsDefaultCountryCodeCheckEnabled",                              null: false
    t.datetime "MetadataSyncLastTimeOfNeverExpiredDeletedObjects"
    t.boolean  "QuickFindRecordLimitEnabled",                                   null: false
    t.boolean  "YammerOAuthAccessTokenExpired"
    t.boolean  "UseSkypeProtocol",                                              null: false
    t.string   "DefaultCountryCode",                               limit: 15
    t.integer  "MetadataSyncTimestamp",                            limit: 8,    null: false
    t.string   "YammerNetworkPermalink",                           limit: 256
    t.integer  "YammerPostMethod"
    t.boolean  "EnableBingMapsIntegration",                                     null: false
  end

  add_index "OrganizationBase", ["Name"], name: "ndx_SystemManaged_Organization"

  create_table "OrganizationLanguagePack", id: false, force: true do |t|
  end

  create_table "OrganizationStatisticBase", primary_key: "OrganizationStatisticId", force: true do |t|
    t.integer "Hour"
    t.integer "StatisticType"
    t.string  "ServerName",     limit: 256
    t.integer "StatisticValue"
  end

  create_table "OrganizationUIBase", id: false, force: true do |t|
    t.uuid     "FormId",               null: false
    t.uuid     "OrganizationId",       null: false
    t.text     "FormXml"
    t.text     "FieldXml"
    t.integer  "ObjectTypeCode"
    t.text     "PreviewXml"
    t.text     "PreviewColumnsetXml"
    t.integer  "Version"
    t.text     "OutlookShortcutIcon"
    t.binary   "VersionNumber"
    t.text     "GridIcon"
    t.uuid     "FormIdUnique",         null: false
    t.text     "LargeEntityIcon"
    t.datetime "OverwriteTime",        null: false
    t.uuid     "SolutionId",           null: false
    t.integer  "ComponentState",       null: false
    t.uuid     "SupportingSolutionId"
    t.boolean  "IsManaged",            null: false
    t.boolean  "IsCustomizable",       null: false
  end

  create_table "OwnerBase", primary_key: "OwnerId", force: true do |t|
    t.integer "OwnerIdType",               null: false
    t.string  "Name",          limit: 160
    t.binary  "VersionNumber"
    t.string  "YomiName",      limit: 160
  end

  add_index "OwnerBase", ["Name"], name: "ndx_SystemManaged_Owner"
  add_index "OwnerBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "OwnerMappingBase", primary_key: "OwnerMappingId", force: true do |t|
    t.datetime "CreatedOn",                                       null: false
    t.string   "TargetUserValueForSourceCRMUserLink", limit: 160
    t.integer  "StatusCode",                                      null: false
    t.uuid     "ImportMapId"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedBy"
    t.integer  "ProcessCode",                                     null: false
    t.string   "SourceSystemUserName",                limit: 160
    t.uuid     "TargetSystemUserId"
    t.integer  "StateCode",                                       null: false
    t.string   "SourceUserValueForSourceCRMUserLink", limit: 160
    t.string   "TargetSystemUserDomainName",          limit: 260
    t.datetime "ModifiedOn",                                      null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "OwnerMappingBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "PhoneCallBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "PickListMappingBase", primary_key: "PickListMappingId", force: true do |t|
    t.integer  "StatusCode",         null: false
    t.datetime "ModifiedOn",         null: false
    t.uuid     "ModifiedBy"
    t.integer  "TargetValue"
    t.integer  "ProcessCode",        null: false
    t.uuid     "ColumnMappingId"
    t.text     "SourceValue"
    t.datetime "CreatedOn",          null: false
    t.integer  "StateCode",          null: false
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "PickListMappingBase", ["ColumnMappingId"], name: "fndx_for_cascaderelationship_PickListMapping_ColumnMapping"
  add_index "PickListMappingBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "PluginAssemblyBase", primary_key: "PluginAssemblyId", force: true do |t|
    t.string   "SourceHash",             limit: 256
    t.integer  "CustomizationLevel",                 null: false
    t.text     "Content"
    t.uuid     "OrganizationId",                     null: false
    t.datetime "ModifiedOn"
    t.string   "Path",                   limit: 256
    t.string   "Name",                   limit: 256, null: false
    t.uuid     "CreatedBy"
    t.string   "Version",                limit: 32,  null: false
    t.binary   "VersionNumber"
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.string   "Culture",                limit: 32,  null: false
    t.integer  "SourceType",                         null: false
    t.uuid     "PluginAssemblyIdUnique",             null: false
    t.string   "PublicKeyToken",         limit: 32,  null: false
    t.datetime "OverwriteTime",                      null: false
    t.integer  "IsolationMode",                      null: false
    t.integer  "Minor",                              null: false
    t.uuid     "SolutionId",                         null: false
    t.integer  "Major",                              null: false
    t.uuid     "CreatedOnBehalfBy"
    t.boolean  "IsManaged",                          null: false
    t.integer  "ComponentState",                     null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "ModifiedOnBehalfBy"
    t.string   "Description",            limit: 256
    t.boolean  "IsHidden",                           null: false
  end

  add_index "PluginAssemblyBase", ["Name", "Major", "Minor", "Culture", "PublicKeyToken", "SolutionId", "ComponentState", "OverwriteTime"], name: "UQ_PluginAssemblyBase_AssemblyMetadata", unique: true
  add_index "PluginAssemblyBase", ["PluginAssemblyIdUnique"], name: "UQ_PluginAssemblyBase_PluginAssemblyIdUnique", unique: true
  add_index "PluginAssemblyBase", ["Version", "IsolationMode"], name: "ndx_SystemManaged_PluginAssembly"
  add_index "PluginAssemblyBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PluginAssemblyBaseIds", primary_key: "PluginAssemblyId", force: true do |t|
  end

  create_table "PluginTypeBase", primary_key: "PluginTypeId", force: true do |t|
    t.string   "FriendlyName",               limit: 256, null: false
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId",                         null: false
    t.string   "TypeName",                   limit: 256, null: false
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.boolean  "IsWorkflowActivity"
    t.uuid     "PluginTypeIdUnique",                     null: false
    t.uuid     "PluginAssemblyId"
    t.integer  "CustomizationLevel",                     null: false
    t.uuid     "SolutionId",                             null: false
    t.integer  "ComponentState",                         null: false
    t.string   "Description",                limit: 256
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "SupportingSolutionId"
    t.string   "WorkflowActivityGroupName",  limit: 256
    t.boolean  "IsManaged",                              null: false
    t.datetime "OverwriteTime",                          null: false
    t.uuid     "CreatedOnBehalfBy"
    t.string   "Name",                       limit: 256
    t.text     "CustomWorkflowActivityInfo"
  end

  add_index "PluginTypeBase", ["FriendlyName", "SolutionId", "ComponentState", "OverwriteTime"], name: "UQ1_PluginType", unique: true
  add_index "PluginTypeBase", ["Name", "IsWorkflowActivity"], name: "ndx_SystemManaged_PluginType"
  add_index "PluginTypeBase", ["PluginAssemblyId"], name: "fndx_for_cascaderelationship_pluginassembly_plugintype"
  add_index "PluginTypeBase", ["PluginTypeIdUnique"], name: "UQ_PluginTypeBase_PluginTypeIdUnique", unique: true
  add_index "PluginTypeBase", ["TypeName", "PluginAssemblyId", "SolutionId", "ComponentState", "OverwriteTime"], name: "UQ_PluginTypeBase_TypeMetadata", unique: true
  add_index "PluginTypeBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PluginTypeBaseIds", primary_key: "PluginTypeId", force: true do |t|
  end

  create_table "PluginTypeStatisticBase", primary_key: "PluginTypeStatisticId", force: true do |t|
    t.integer  "TerminateMemoryContributionPercent",  null: false
    t.uuid     "OrganizationId",                      null: false
    t.integer  "AverageExecuteTimeInMilliseconds",    null: false
    t.integer  "FailurePercent",                      null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "CrashPercent",                        null: false
    t.uuid     "CreatedBy"
    t.integer  "FailureCount",                        null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "CrashCount",                          null: false
    t.integer  "CrashContributionPercent",            null: false
    t.integer  "TerminateCpuContributionPercent",     null: false
    t.uuid     "ModifiedBy"
    t.integer  "TerminateHandlesContributionPercent", null: false
    t.uuid     "PluginTypeId",                        null: false
    t.datetime "ModifiedOn"
    t.integer  "ExecuteCount",                        null: false
    t.integer  "TerminateOtherContributionPercent",   null: false
    t.datetime "CreatedOn"
  end

  add_index "PluginTypeStatisticBase", ["PluginTypeId", "CrashCount", "FailurePercent", "FailureCount", "ExecuteCount"], name: "ndx_SystemManaged_PluginTypeStatistic"

  create_table "PostBase", primary_key: "PostId", force: true do |t|
    t.uuid     "PostRegardingId",                        null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.string   "Text",                      limit: 2000
    t.integer  "TimeZoneRuleVersionNumber"
    t.datetime "CreatedOn"
    t.uuid     "OrganizationId",                         null: false
    t.datetime "ModifiedOn"
    t.integer  "Source"
    t.integer  "Type"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedBy",                              null: false
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "YammerRetryCount"
    t.boolean  "PostToYammer"
    t.integer  "YammerPostState"
  end

  add_index "PostBase", ["CreatedBy"], name: "ndx_CreatedBy"
  add_index "PostBase", ["CreatedOn", "Source"], name: "ndx_SystemManaged_Post"
  add_index "PostBase", ["ModifiedOn"], name: "ndx_ModifiedOn"
  add_index "PostBase", ["PostRegardingId"], name: "ndx_PostRegarding"

  create_table "PostCommentBase", primary_key: "PostCommentId", force: true do |t|
    t.uuid     "CreatedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.string   "Text",                      limit: 1000
    t.uuid     "OrganizationId",                         null: false
    t.datetime "CreatedOn",                              null: false
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "PostId",                                 null: false
  end

  add_index "PostCommentBase", ["CreatedOn"], name: "ndx_CreatedOn"
  add_index "PostCommentBase", ["PostId"], name: "ndx_Post"

  create_table "PostFollowBase", primary_key: "PostFollowId", force: true do |t|
    t.uuid     "OwnerId",                                null: false
    t.uuid     "OwningBusinessUnit"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "RegardingObjectId",                      null: false
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn",                              null: false
    t.integer  "OwnerIdType",                            null: false
    t.string   "RegardingObjectIdName",     limit: 4000
    t.integer  "RegardingObjectTypeCode"
    t.string   "RegardingObjectIdYomiName", limit: 4000
    t.integer  "YammerRetryCount"
    t.boolean  "PostToYammer"
    t.integer  "YammerPostState"
  end

  add_index "PostFollowBase", ["CreatedOn"], name: "ndx_CreatedOn"
  add_index "PostFollowBase", ["OwnerId"], name: "ndx_Security"
  add_index "PostFollowBase", ["OwningBusinessUnit"], name: "ndx_for_cascaderelationship_business_unit"
  add_index "PostFollowBase", ["RegardingObjectId", "RegardingObjectTypeCode", "OwnerId"], name: "ndx_PostFollower", unique: true

  create_table "PostLikeBase", primary_key: "PostLikeId", force: true do |t|
    t.uuid     "OrganizationId",            null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "PostId",                    null: false
  end

  add_index "PostLikeBase", ["CreatedBy"], name: "ndx_createdby"
  add_index "PostLikeBase", ["PostId", "CreatedBy"], name: "ndx_CreatedByPostId", unique: true

  create_table "PostRegardingBase", primary_key: "PostRegardingId", force: true do |t|
    t.uuid     "RegardingObjectOwningBusinessUnit"
    t.uuid     "RegardingObjectId"
    t.uuid     "RegardingObjectOwnerId"
    t.integer  "RegardingObjectTypeCodeForSharing",              null: false
    t.integer  "RegardingObjectOwnerIdType"
    t.string   "RegardingObjectIdName",             limit: 4000
    t.integer  "RegardingObjectTypeCode",                        null: false
    t.string   "RegardingObjectIdYomiName",         limit: 4000
    t.datetime "LatestManualPostModifiedOn"
    t.datetime "LatestAutoPostModifiedOn"
  end

  add_index "PostRegardingBase", ["RegardingObjectId", "RegardingObjectTypeCodeForSharing"], name: "ndx_RegardingObjectForSharing", unique: true
  add_index "PostRegardingBase", ["RegardingObjectTypeCode", "RegardingObjectId"], name: "ndx_RegardingObjectTypeCode"

  create_table "PostRoleBase", primary_key: "PostRoleId", force: true do |t|
    t.uuid    "OrganizationId",          null: false
    t.uuid    "RegardingObjectId",       null: false
    t.integer "Type"
    t.uuid    "PostId",                  null: false
    t.integer "RegardingObjectTypeCode"
  end

  add_index "PostRoleBase", ["PostId", "RegardingObjectId", "RegardingObjectTypeCode"], name: "ndx_UniqueRolePerPost", unique: true
  add_index "PostRoleBase", ["RegardingObjectId", "RegardingObjectTypeCode"], name: "ndx_Regarding"

  create_table "PriceLevelBase", primary_key: "PriceLevelId", force: true do |t|
    t.uuid     "OrganizationId",                                                  null: false
    t.string   "Name",                      limit: 100,                           null: false
    t.text     "Description"
    t.integer  "ShippingMethodCode"
    t.datetime "BeginDate"
    t.integer  "PaymentMethodCode"
    t.integer  "FreightTermsCode"
    t.datetime "EndDate"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                                                       null: false
    t.binary   "VersionNumber"
    t.integer  "StatusCode"
    t.integer  "ImportSequenceNumber"
    t.uuid     "TransactionCurrencyId"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "ModifiedOnBehalfBy"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "PriceLevelBase", ["EndDate", "BeginDate"], name: "ndx_SystemManaged_PriceLevel"
  add_index "PriceLevelBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "PriceLevelBase", ["TransactionCurrencyId", "Name"], name: "ndx_Unique_PriceLevel", unique: true
  add_index "PriceLevelBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PriceLevelExtensionBase", primary_key: "PriceLevelId", force: true do |t|
  end

  create_table "PrincipalAttributeAccessMap", primary_key: "PrincipalAttributeAccessMapId", force: true do |t|
    t.uuid    "PrincipalId",   null: false
    t.integer "ReadAccess",    null: false
    t.integer "CreateAccess",  null: false
    t.uuid    "AttributeId",   null: false
    t.binary  "VersionNumber"
    t.integer "UpdateAccess",  null: false
  end

  add_index "PrincipalAttributeAccessMap", ["PrincipalId", "AttributeId"], name: "cndx_Security", unique: true
  add_index "PrincipalAttributeAccessMap", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PrincipalEntityMap", primary_key: "PrincipalEntityMapId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.uuid    "PrincipalId",    null: false
    t.binary  "VersionNumber"
  end

  add_index "PrincipalEntityMap", ["PrincipalId", "ObjectTypeCode"], name: "ndx_Security", unique: true
  add_index "PrincipalEntityMap", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PrincipalObjectAccess", primary_key: "PrincipalObjectAccessId", force: true do |t|
    t.uuid     "PrincipalId",               null: false
    t.uuid     "ObjectId",                  null: false
    t.integer  "ObjectTypeCode",            null: false
    t.integer  "PrincipalTypeCode"
    t.integer  "AccessRightsMask"
    t.datetime "ChangedOn"
    t.binary   "VersionNumber"
    t.integer  "InheritedAccessRightsMask", null: false
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
  end

  add_index "PrincipalObjectAccess", ["ObjectId", "PrincipalId"], name: "cndx_PrincipalObjectAccess"
  add_index "PrincipalObjectAccess", ["ObjectTypeCode", "PrincipalId", "ObjectId", "AccessRightsMask", "InheritedAccessRightsMask"], name: "ndx_Cover"
  add_index "PrincipalObjectAccess", ["PrincipalId", "ObjectId", "ObjectTypeCode"], name: "UQ_PrincipalObjectAccess", unique: true
  add_index "PrincipalObjectAccess", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PrincipalObjectAccessReadSnapshot", primary_key: "PrincipalObjectAccessReadSnapshotId", force: true do |t|
    t.integer "ObjectTypeCode",           null: false
    t.integer "Count",          limit: 8, null: false
    t.uuid    "PrincipalId",              null: false
  end

  add_index "PrincipalObjectAccessReadSnapshot", ["PrincipalId", "ObjectTypeCode"], name: "cndx_PrincipalObjectAccessReadSnapshot_PrincipalObject", unique: true

  create_table "PrincipalObjectAttributeAccessBase", primary_key: "PrincipalObjectAttributeAccessId", force: true do |t|
    t.uuid    "ObjectId",        null: false
    t.uuid    "OrganizationId",  null: false
    t.uuid    "PrincipalId",     null: false
    t.uuid    "AttributeId",     null: false
    t.boolean "ReadAccess",      null: false
    t.boolean "UpdateAccess",    null: false
    t.binary  "VersionNumber"
    t.integer "PrincipalIdType", null: false
    t.integer "ObjectTypeCode",  null: false
  end

  add_index "PrincipalObjectAttributeAccessBase", ["ObjectId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_SecuredEntity_PrincipalObjectAttributeAccess"
  add_index "PrincipalObjectAttributeAccessBase", ["PrincipalId", "AttributeId", "ObjectId", "ObjectTypeCode"], name: "cndx_Security", unique: true
  add_index "PrincipalObjectAttributeAccessBase", ["PrincipalId", "PrincipalIdType"], name: "ndx_for_cascaderelationship_team_principalobjectattributeaccess_principalid"
  add_index "PrincipalObjectAttributeAccessBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PrivilegeBase", primary_key: "PrivilegeId", force: true do |t|
    t.string  "Name",                     limit: 100
    t.boolean "CanBeLocal"
    t.boolean "CanBeDeep"
    t.binary  "VersionNumber"
    t.boolean "CanBeGlobal"
    t.boolean "CanBeBasic"
    t.integer "AccessRight"
    t.boolean "IsDisabledWhenIntegrated",             null: false
  end

  add_index "PrivilegeBase", ["Name"], name: "ndx_SystemManaged_Privilege"
  add_index "PrivilegeBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PrivilegeObjectTypeCodes", primary_key: "PrivilegeObjectTypeCodeId", force: true do |t|
    t.binary  "VersionNumber"
    t.integer "ObjectTypeCode", null: false
    t.uuid    "PrivilegeId",    null: false
  end

  add_index "PrivilegeObjectTypeCodes", ["ObjectTypeCode", "PrivilegeId"], name: "ndx_Unique_PrivilegeObjectTypeCodePrivilegeId", unique: true
  add_index "PrivilegeObjectTypeCodes", ["ObjectTypeCode"], name: "ndx_Cover"
  add_index "PrivilegeObjectTypeCodes", ["PrivilegeId"], name: "ndx_for_cascaderelationship_FK_PrivilegeObjectTypeCodes"
  add_index "PrivilegeObjectTypeCodes", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ProcessSessionBase", primary_key: "ProcessSessionId", force: true do |t|
    t.uuid     "ExecutedBy"
    t.integer  "ErrorCode"
    t.datetime "ExecutedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.text     "Comments"
    t.uuid     "CreatedBy"
    t.string   "ActivityName",              limit: 256
    t.uuid     "RegardingObjectId"
    t.datetime "StartedOn"
    t.datetime "CompletedOn"
    t.integer  "StatusCode"
    t.uuid     "NextLinkedSessionId"
    t.string   "Name",                      limit: 256
    t.uuid     "OriginatingSessionId"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "PreviousLinkedSessionId"
    t.uuid     "StartedBy"
    t.text     "ProtectionKey"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                                null: false
    t.text     "ProcessState"
    t.string   "StepName",                  limit: 256
    t.text     "InputArguments"
    t.datetime "CreatedOn"
    t.string   "ProcessStageName",          limit: 256
    t.integer  "StateCode",                              null: false
    t.uuid     "ProcessId"
    t.datetime "CanceledOn"
    t.uuid     "CompletedBy"
    t.uuid     "CanceledBy"
    t.string   "RegardingObjectIdYomiName", limit: 4000
    t.integer  "RegardingObjectTypeCode"
    t.integer  "OwnerIdType",                            null: false
    t.string   "RegardingObjectIdName",     limit: 4000
  end

  add_index "ProcessSessionBase", ["ExecutedOn", "OwnerId", "StatusCode", "Name"], name: "ndx_processsessionview"
  add_index "ProcessSessionBase", ["OwnerId"], name: "ndx_Security"
  add_index "ProcessSessionBase", ["StartedOn", "StartedBy", "RegardingObjectId"], name: "ndx_SystemManaged_ProcessSession"

  create_table "ProductAssociation", primary_key: "ProductAssociationId", force: true do |t|
    t.uuid   "AssociatedProduct", null: false
    t.uuid   "ProductId",         null: false
    t.binary "VersionNumber"
  end

  add_index "ProductAssociation", ["AssociatedProduct"], name: "ndx_for_cascaderelationship_associated_product"
  add_index "ProductAssociation", ["ProductId", "AssociatedProduct"], name: "UQ_ProductAssociation", unique: true
  add_index "ProductAssociation", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ProductBase", primary_key: "ProductId", force: true do |t|
    t.uuid     "DefaultUoMScheduleId"
    t.uuid     "SubjectId"
    t.uuid     "OrganizationId",                                                  null: false
    t.string   "Name",                      limit: 100
    t.uuid     "DefaultUoMId"
    t.uuid     "PriceLevelId"
    t.text     "Description"
    t.integer  "ProductTypeCode"
    t.string   "ProductUrl"
    t.decimal  "Price"
    t.boolean  "IsKit"
    t.string   "ProductNumber",             limit: 100,                           null: false
    t.string   "Size",                      limit: 200
    t.decimal  "CurrentCost"
    t.decimal  "StockVolume",                           precision: 23, scale: 10
    t.decimal  "StandardCost"
    t.decimal  "StockWeight",                           precision: 23, scale: 10
    t.integer  "QuantityDecimal"
    t.decimal  "QuantityOnHand",                        precision: 23, scale: 10
    t.boolean  "IsStockItem"
    t.string   "SupplierName",              limit: 100
    t.string   "VendorName",                limit: 100
    t.string   "VendorPartNumber",          limit: 100
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.integer  "StateCode",                                                       null: false
    t.uuid     "ModifiedBy"
    t.integer  "StatusCode"
    t.binary   "VersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "ImportSequenceNumber"
    t.integer  "TimeZoneRuleVersionNumber"
    t.decimal  "CurrentCost_Base"
    t.decimal  "Price_Base"
    t.decimal  "StandardCost_Base"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "ProductBase", ["Name", "ProductTypeCode"], name: "ndx_SystemManaged_Product"
  add_index "ProductBase", ["Name"], name: "ndx_name"
  add_index "ProductBase", ["ProductNumber"], name: "AK1_ProductBase", unique: true
  add_index "ProductBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "ProductBase", ["SubjectId"], name: "fndx_for_cascaderelationship_subject_products"
  add_index "ProductBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ProductExtensionBase", primary_key: "ProductId", force: true do |t|
    t.string "new_ModelCode",   limit: 20
    t.string "new_VehicleType", limit: 100
    t.string "new_VehicleUse",  limit: 100
  end

  create_table "ProductPriceLevelBase", primary_key: "ProductPriceLevelId", force: true do |t|
    t.uuid     "PriceLevelId",                                        null: false
    t.uuid     "UoMId"
    t.uuid     "UoMScheduleId"
    t.uuid     "DiscountTypeId"
    t.uuid     "ProductId",                                           null: false
    t.decimal  "Percentage",                precision: 23, scale: 10
    t.decimal  "Amount"
    t.datetime "CreatedOn"
    t.integer  "QuantitySellingCode"
    t.integer  "RoundingPolicyCode"
    t.datetime "ModifiedOn"
    t.integer  "PricingMethodCode"
    t.integer  "RoundingOptionCode"
    t.decimal  "RoundingOptionAmount"
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.decimal  "ExchangeRate",              precision: 23, scale: 10
    t.uuid     "TransactionCurrencyId"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.decimal  "Amount_Base"
    t.decimal  "RoundingOptionAmount_Base"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "ProductPriceLevelBase", ["DiscountTypeId"], name: "fndx_for_cascaderelationship_discount_type_product_price_levels"
  add_index "ProductPriceLevelBase", ["PriceLevelId"], name: "ndx_for_cascaderelationship_price_level_product_price_levels"
  add_index "ProductPriceLevelBase", ["ProductId", "UoMId", "PriceLevelId"], name: "AK1_ProductPriceLevelBase", unique: true
  add_index "ProductPriceLevelBase", ["ProductId"], name: "ndx_for_cascaderelationship_product_price_levels"
  add_index "ProductPriceLevelBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ProductSalesLiterature", primary_key: "ProductSalesLiteratureId", force: true do |t|
    t.uuid   "ProductId",         null: false
    t.uuid   "SalesLiteratureId", null: false
    t.binary "VersionNumber"
  end

  add_index "ProductSalesLiterature", ["ProductId", "SalesLiteratureId"], name: "UQ_ProductSalesLiterature", unique: true
  add_index "ProductSalesLiterature", ["SalesLiteratureId"], name: "ndx_for_cascaderelationship_sales_literature_products"
  add_index "ProductSalesLiterature", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ProductSubstitute", primary_key: "ProductSubstituteId", force: true do |t|
    t.uuid   "ProductId",            null: false
    t.uuid   "SubstitutedProductId", null: false
    t.binary "VersionNumber"
  end

  add_index "ProductSubstitute", ["ProductId", "SubstitutedProductId"], name: "UQ_ProductSubstitute", unique: true
  add_index "ProductSubstitute", ["SubstitutedProductId"], name: "ndx_for_cascaderelationship_substituted_product"
  add_index "ProductSubstitute", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PublisherAddressBase", primary_key: "PublisherAddressId", force: true do |t|
    t.string   "Line1",                     limit: 4000
    t.string   "Line3",                     limit: 4000
    t.integer  "UTCOffset"
    t.string   "Telephone2",                limit: 50
    t.datetime "CreatedOn"
    t.float    "Longitude",                 limit: 53
    t.binary   "VersionNumber"
    t.integer  "FreightTermsCode"
    t.string   "PrimaryContactName",        limit: 150
    t.uuid     "ModifiedBy"
    t.string   "Line2",                     limit: 4000
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "ShippingMethodCode"
    t.string   "PostalCode",                limit: 50
    t.datetime "ModifiedOn"
    t.string   "City",                      limit: 4000
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "ImportSequenceNumber"
    t.float    "Latitude",                  limit: 53
    t.string   "Name",                      limit: 200
    t.integer  "AddressTypeCode"
    t.string   "Telephone3",                limit: 50
    t.uuid     "ParentId",                               null: false
    t.string   "StateOrProvince",           limit: 4000
    t.string   "Country",                   limit: 4000
    t.string   "Telephone1",                limit: 50
    t.string   "PostOfficeBox",             limit: 50
    t.integer  "AddressNumber"
    t.string   "Fax",                       limit: 50
    t.string   "County",                    limit: 4000
    t.string   "UPSZone",                   limit: 4
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "CreatedBy"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ParentIdTypeCode"
  end

  add_index "PublisherAddressBase", ["Name"], name: "fndx_NamePublisherAddressId"
  add_index "PublisherAddressBase", ["ParentId"], name: "ndx_for_cascaderelationship_Publisher_PublisherAddress"
  add_index "PublisherAddressBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "PublisherBase", primary_key: "PublisherId", force: true do |t|
    t.integer  "PinpointPublisherId",            limit: 8
    t.string   "CustomizationPrefix",            limit: 8,    null: false
    t.datetime "ModifiedOn"
    t.string   "EMailAddress",                   limit: 100
    t.binary   "VersionNumber"
    t.uuid     "ModifiedOnBehalfBy"
    t.string   "PinpointPublisherDefaultLocale", limit: 16
    t.string   "Description",                    limit: 2000
    t.integer  "CustomizationOptionValuePrefix"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OrganizationId",                              null: false
    t.string   "SupportingWebsiteUrl",           limit: 200
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.string   "UniqueName",                     limit: 256,  null: false
    t.uuid     "CreatedBy"
    t.boolean  "IsReadonly",                                  null: false
    t.string   "FriendlyName",                   limit: 256,  null: false
  end

  add_index "PublisherBase", ["UniqueName"], name: "ndx_UniqueName", unique: true
  add_index "PublisherBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "QueueBase", primary_key: "QueueId", force: true do |t|
    t.uuid     "BusinessUnitId"
    t.uuid     "OrganizationId",                                                     null: false
    t.string   "EMailAddress",                 limit: 100
    t.uuid     "PrimaryUserId"
    t.integer  "QueueTypeCode"
    t.string   "Name",                         limit: 200
    t.text     "Description"
    t.integer  "QueueSemantics"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.boolean  "IgnoreUnsolicitedEmail"
    t.boolean  "IsFaxQueue"
    t.string   "EmailPassword",                limit: 200
    t.integer  "IncomingEmailDeliveryMethod",                                        null: false
    t.string   "EmailUsername",                limit: 200
    t.integer  "OutgoingEmailDeliveryMethod",                                        null: false
    t.boolean  "AllowEmailCredentials",                                              null: false
    t.integer  "IncomingEmailFilteringMethod",                                       null: false
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                             precision: 23, scale: 10
    t.integer  "StatusCode",                                                         null: false
    t.integer  "ImportSequenceNumber"
    t.integer  "StateCode",                                                          null: false
    t.uuid     "OwningBusinessUnit"
    t.uuid     "OwnerId",                                                            null: false
    t.datetime "OverriddenCreatedOn"
    t.integer  "EmailRouterAccessApproval",                                          null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "OwnerIdType",                                                        null: false
  end

  add_index "QueueBase", ["BusinessUnitId"], name: "fndx_for_cascaderelationship_business_unit_queues"
  add_index "QueueBase", ["EMailAddress", "IgnoreUnsolicitedEmail"], name: "ndx_Email"
  add_index "QueueBase", ["Name"], name: "ndx_name"
  add_index "QueueBase", ["OwnerId"], name: "ndx_Security"
  add_index "QueueBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_queues2"
  add_index "QueueBase", ["PrimaryUserId"], name: "fndx_for_cascaderelationship_queue_primary_user"
  add_index "QueueBase", ["StateCode", "Name"], name: "ndx_SystemManaged_Queue"
  add_index "QueueBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "QueueExtensionBase", primary_key: "QueueId", force: true do |t|
  end

  create_table "QueueItemBase", primary_key: "QueueItemId", force: true do |t|
    t.uuid     "QueueId"
    t.uuid     "ObjectId"
    t.integer  "ObjectTypeCode"
    t.string   "Title",                     limit: 300
    t.datetime "EnteredOn"
    t.integer  "Priority"
    t.integer  "State"
    t.integer  "Status"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.string   "ToRecipients",              limit: 500
    t.string   "Sender",                    limit: 250
    t.uuid     "OrganizationId",                                                   null: false
    t.binary   "VersionNumber"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "ImportSequenceNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "StateCode",                                                        null: false
    t.datetime "OverriddenCreatedOn"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.integer  "StatusCode",                                                       null: false
    t.uuid     "WorkerId"
    t.datetime "WorkerIdModifiedOn"
    t.string   "WorkerIdName",              limit: 4000
    t.integer  "WorkerIdType"
    t.string   "WorkerIdYomiName",          limit: 4000
  end

  add_index "QueueItemBase", ["ObjectId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_Letter_QueueItem"
  add_index "QueueItemBase", ["QueueId"], name: "fndx_for_cascaderelationship_queue_entries"
  add_index "QueueItemBase", ["StateCode", "WorkerId", "EnteredOn"], name: "ndx_SystemManaged_QueueItem"
  add_index "QueueItemBase", ["Title"], name: "fndx_TitleQueueItemId"
  add_index "QueueItemBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "QueueItemExtensionBase", primary_key: "QueueItemId", force: true do |t|
  end

  create_table "QuoteBase", primary_key: "QuoteId", force: true do |t|
    t.uuid     "OwningBusinessUnit"
    t.uuid     "PriceLevelId"
    t.uuid     "OpportunityId"
    t.string   "QuoteNumber",                      limit: 100,                            null: false
    t.integer  "RevisionNumber",                                                          null: false
    t.string   "Name",                             limit: 300
    t.integer  "PricingErrorCode"
    t.text     "Description"
    t.decimal  "DiscountAmount"
    t.decimal  "FreightAmount"
    t.decimal  "TotalAmount"
    t.decimal  "TotalLineItemAmount"
    t.decimal  "TotalLineItemDiscountAmount"
    t.decimal  "TotalAmountLessFreight"
    t.datetime "EffectiveFrom"
    t.decimal  "TotalTax"
    t.decimal  "TotalDiscountAmount"
    t.datetime "EffectiveTo"
    t.datetime "ExpiresOn"
    t.datetime "ClosedOn"
    t.datetime "RequestDeliveryBy"
    t.integer  "ShippingMethodCode"
    t.integer  "PaymentTermsCode"
    t.integer  "FreightTermsCode"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                                                               null: false
    t.integer  "StatusCode"
    t.string   "ShipTo_Name",                      limit: 200
    t.binary   "VersionNumber"
    t.string   "ShipTo_Line1",                     limit: 4000
    t.string   "ShipTo_Line2",                     limit: 4000
    t.string   "ShipTo_Line3",                     limit: 4000
    t.string   "ShipTo_City",                      limit: 80
    t.string   "ShipTo_StateOrProvince",           limit: 50
    t.string   "ShipTo_Country",                   limit: 80
    t.string   "ShipTo_PostalCode",                limit: 20
    t.boolean  "WillCall"
    t.string   "ShipTo_Telephone",                 limit: 50
    t.string   "BillTo_Name",                      limit: 200
    t.integer  "ShipTo_FreightTermsCode"
    t.string   "ShipTo_Fax",                       limit: 50
    t.string   "BillTo_Line1",                     limit: 4000
    t.string   "BillTo_Line2",                     limit: 4000
    t.string   "BillTo_Line3",                     limit: 4000
    t.string   "BillTo_City",                      limit: 80
    t.string   "BillTo_StateOrProvince",           limit: 50
    t.string   "BillTo_Country",                   limit: 80
    t.string   "BillTo_PostalCode",                limit: 20
    t.string   "BillTo_Telephone",                 limit: 50
    t.string   "BillTo_Fax",                       limit: 50
    t.decimal  "DiscountPercentage",                            precision: 23, scale: 10
    t.uuid     "CampaignId"
    t.uuid     "ShipTo_AddressId"
    t.string   "ShipTo_ContactName",               limit: 150
    t.uuid     "BillTo_AddressId"
    t.string   "BillTo_ContactName",               limit: 150
    t.integer  "TimeZoneRuleVersionNumber"
    t.uuid     "UniqueDscId"
    t.integer  "ImportSequenceNumber"
    t.decimal  "ExchangeRate",                                  precision: 23, scale: 10
    t.datetime "OverriddenCreatedOn"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "TotalLineItemDiscountAmount_Base"
    t.decimal  "TotalAmountLessFreight_Base"
    t.decimal  "DiscountAmount_Base"
    t.decimal  "FreightAmount_Base"
    t.decimal  "TotalAmount_Base"
    t.decimal  "TotalDiscountAmount_Base"
    t.decimal  "TotalTax_Base"
    t.decimal  "TotalLineItemAmount_Base"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                                                                 null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CustomerId"
    t.integer  "OwnerIdType",                                                             null: false
    t.string   "CustomerIdName",                   limit: 4000
    t.integer  "CustomerIdType"
    t.string   "CustomerIdYomiName",               limit: 4000
  end

  add_index "QuoteBase", ["CampaignId"], name: "fndx_for_cascaderelationship_campaign_quotes"
  add_index "QuoteBase", ["CreatedOn"], name: "ndx_SystemManaged_Quote"
  add_index "QuoteBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_quote_customer_accounts"
  add_index "QuoteBase", ["Name"], name: "fndx_QuoteName"
  add_index "QuoteBase", ["OpportunityId"], name: "fndx_for_cascaderelationship_opportunity_quotes"
  add_index "QuoteBase", ["OwnerId"], name: "ndx_Security"
  add_index "QuoteBase", ["OwningBusinessUnit", "QuoteNumber", "RevisionNumber", "UniqueDscId"], name: "ndx_Unique_Quote", unique: true
  add_index "QuoteBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "QuoteBase", ["TotalAmount"], name: "fndx_TotalAmount"
  add_index "QuoteBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "QuoteDetailBase", primary_key: "QuoteDetailId", force: true do |t|
    t.uuid     "QuoteId",                                                          null: false
    t.uuid     "SalesRepId"
    t.integer  "LineItemNumber"
    t.uuid     "UoMId"
    t.uuid     "ProductId"
    t.datetime "RequestDeliveryBy"
    t.decimal  "Quantity",                               precision: 23, scale: 10
    t.integer  "PricingErrorCode"
    t.decimal  "ManualDiscountAmount"
    t.string   "ProductDescription",        limit: 500
    t.decimal  "VolumeDiscountAmount"
    t.decimal  "PricePerUnit"
    t.decimal  "BaseAmount"
    t.decimal  "ExtendedAmount"
    t.text     "Description"
    t.string   "ShipTo_Name",               limit: 200
    t.boolean  "IsPriceOverridden"
    t.decimal  "Tax"
    t.string   "ShipTo_Line1",              limit: 4000
    t.datetime "CreatedOn"
    t.string   "ShipTo_Line2",              limit: 4000
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.string   "ShipTo_Line3",              limit: 4000
    t.string   "ShipTo_City",               limit: 80
    t.datetime "ModifiedOn"
    t.string   "ShipTo_StateOrProvince",    limit: 50
    t.string   "ShipTo_Country",            limit: 80
    t.string   "ShipTo_PostalCode",         limit: 20
    t.boolean  "WillCall"
    t.boolean  "IsProductOverridden"
    t.string   "ShipTo_Telephone",          limit: 50
    t.string   "ShipTo_Fax",                limit: 50
    t.integer  "ShipTo_FreightTermsCode"
    t.uuid     "ShipTo_AddressId"
    t.string   "ShipTo_ContactName",        limit: 150
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.integer  "TimeZoneRuleVersionNumber"
    t.decimal  "Tax_Base"
    t.decimal  "ExtendedAmount_Base"
    t.decimal  "PricePerUnit_Base"
    t.decimal  "BaseAmount_Base"
    t.decimal  "ManualDiscountAmount_Base"
    t.decimal  "VolumeDiscountAmount_Base"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "QuoteDetailBase", ["ProductId"], name: "fndx_for_cascaderelationship_product_quote_details"
  add_index "QuoteDetailBase", ["QuoteId"], name: "cndx_for_cascaderelationship_quote_details"
  add_index "QuoteDetailBase", ["SalesRepId"], name: "fndx_for_cascaderelationship_system_user_quotedetail"
  add_index "QuoteDetailBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "QuoteDetailExtensionBase", primary_key: "QuoteDetailId", force: true do |t|
  end

  create_table "QuoteExtensionBase", primary_key: "QuoteId", force: true do |t|
  end

  create_table "RecordCountSnapshot", primary_key: "RecordCountSnapshotId", force: true do |t|
    t.integer "Count",          limit: 8, null: false
    t.integer "ObjectTypeCode",           null: false
  end

  add_index "RecordCountSnapshot", ["ObjectTypeCode"], name: "cndx_RecordCountSnapshot_ObjectTypeCode", unique: true

  create_table "RecurrenceRuleBase", primary_key: "RuleId", force: true do |t|
    t.integer  "Interval"
    t.datetime "StartTime"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "OwnerId",               null: false
    t.integer  "MonthOfYear"
    t.integer  "RecurrencePatternType", null: false
    t.uuid     "CreatedBy"
    t.boolean  "IsNthYearly",           null: false
    t.datetime "PatternStartDate"
    t.integer  "PatternEndType",        null: false
    t.boolean  "IsNthMonthly",          null: false
    t.datetime "EffectiveEndDate"
    t.integer  "FirstDayOfWeek"
    t.datetime "PatternEndDate"
    t.datetime "EndTime"
    t.integer  "Duration"
    t.integer  "DaysOfWeekMask"
    t.datetime "ModifiedOn"
    t.boolean  "IsRegenerate",          null: false
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.boolean  "IsWeekDayPattern",      null: false
    t.datetime "EffectiveStartDate"
    t.uuid     "ObjectId"
    t.integer  "Instance"
    t.integer  "DayOfMonth"
    t.uuid     "CreatedOnBehalfBy"
    t.binary   "VersionNumber"
    t.integer  "Occurrences"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "ObjectTypeCode"
    t.integer  "OwnerIdType",           null: false
  end

  add_index "RecurrenceRuleBase", ["ObjectId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_activity_pointer_recurrencerule"
  add_index "RecurrenceRuleBase", ["ObjectId", "PatternStartDate", "RecurrencePatternType"], name: "ndx_RecurrenceRuleCore"
  add_index "RecurrenceRuleBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_recurrencerule"

  create_table "RecurringAppointmentMasterExtensionBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "Relationship", id: false, force: true do |t|
  end

  create_table "RelationshipExtraCondition", id: false, force: true do |t|
  end

  create_table "RelationshipIds", primary_key: "RelationshipId", force: true do |t|
  end

  create_table "RelationshipRoleBase", primary_key: "RelationshipRoleId", force: true do |t|
    t.string   "Description",          limit: 500
    t.string   "Name",                 limit: 100, null: false
    t.integer  "StatusCode"
    t.datetime "CreatedOn"
    t.uuid     "OrganizationId",                   null: false
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                        null: false
    t.integer  "ImportSequenceNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "RelationshipRoleBase", ["Name"], name: "AK1_RelationshipRoleBase", unique: true
  add_index "RelationshipRoleBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "RelationshipRoleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RelationshipRoleMapBase", primary_key: "RelationshipRoleMapId", force: true do |t|
    t.datetime "ModifiedOn"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.uuid     "ModifiedBy"
    t.integer  "AssociateObjectTypeCode", null: false
    t.uuid     "RelationshipRoleId",      null: false
    t.integer  "PrimaryObjectTypeCode",   null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "RelationshipRoleMapBase", ["RelationshipRoleId", "PrimaryObjectTypeCode", "AssociateObjectTypeCode"], name: "AK1_RelationshipRoleMapBase", unique: true
  add_index "RelationshipRoleMapBase", ["RelationshipRoleId"], name: "ndx_for_cascaderelationship_relationship_role_relationship_role_map"
  add_index "RelationshipRoleMapBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ReplicationBacklogBase", primary_key: "ReplicationBacklogId", force: true do |t|
    t.uuid    "TargetObjectId"
    t.text    "Data"
    t.integer "ReplicationBacklogType"
    t.uuid    "TargetDatacenterId"
    t.integer "TargetObjectTypeCode"
  end

  create_table "ReportBase", primary_key: "ReportId", force: true do |t|
    t.text     "DefaultFilter"
    t.uuid     "OwningBusinessUnit"
    t.string   "Name",                      limit: 425, null: false
    t.boolean  "IsCustomReport",                        null: false
    t.datetime "ModifiedOn"
    t.integer  "SignatureMajorVersion"
    t.uuid     "CreatedBy"
    t.text     "BodyText"
    t.uuid     "ModifiedBy"
    t.boolean  "IsPersonal",                            null: false
    t.datetime "CreatedOn"
    t.integer  "SignatureLcid"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "FileSize"
    t.text     "CustomReportXml"
    t.string   "Description",               limit: 256
    t.text     "ScheduleXml"
    t.datetime "SignatureDate"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "FileName"
    t.uuid     "ParentReportId"
    t.text     "BodyBinary"
    t.text     "QueryInfo"
    t.integer  "LanguageCode"
    t.uuid     "SignatureId"
    t.string   "BodyUrl",                   limit: 200
    t.string   "MimeType",                  limit: 256
    t.integer  "SignatureMinorVersion"
    t.boolean  "IsScheduledReport",                     null: false
    t.binary   "VersionNumber"
    t.integer  "ReportTypeCode"
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "OverwriteTime",                         null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "ReportIdUnique",                        null: false
    t.text     "OriginalBodyText"
    t.integer  "ComponentState",                        null: false
    t.string   "ReportNameOnSRS",           limit: 425
    t.boolean  "IsCustomizable",                        null: false
    t.boolean  "IsManaged",                             null: false
    t.uuid     "SolutionId",                            null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                               null: false
    t.integer  "OwnerIdType",                           null: false
  end

  add_index "ReportBase", ["LanguageCode", "Name"], name: "ndx_SystemManaged_Report"
  add_index "ReportBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_reports"
  add_index "ReportBase", ["ParentReportId"], name: "fndx_for_cascaderelationship_report_parent_report"
  add_index "ReportBase", ["ReportIdUnique"], name: "UQ_ReportBase_ReportIdUnique", unique: true
  add_index "ReportBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ReportCategoryBase", primary_key: "ReportCategoryId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.integer  "CategoryCode"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "CreatedBy"
    t.integer  "TimeZoneRuleVersionNumber"
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.uuid     "ReportId",                                            null: false
    t.uuid     "SolutionId",                                          null: false
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "OverwriteTime",                                       null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "SupportingSolutionId"
    t.uuid     "ReportCategoryIdUnique",                              null: false
    t.integer  "ComponentState",                                      null: false
    t.boolean  "IsManaged",                                           null: false
    t.decimal  "ExchangeRate",              precision: 23, scale: 10
    t.boolean  "IsCustomizable",                                      null: false
    t.uuid     "TransactionCurrencyId"
  end

  add_index "ReportCategoryBase", ["ReportCategoryIdUnique"], name: "UQ_ReportCategoryBase_ReportCategoryIdUnique", unique: true
  add_index "ReportCategoryBase", ["ReportId"], name: "ndx_for_cascaderelationship_report_reportcategories"
  add_index "ReportCategoryBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ReportCategoryExtensionBase", primary_key: "ReportCategoryIdUnique", force: true do |t|
    t.uuid "ReportCategoryId", null: false
  end

  create_table "ReportEntityBase", primary_key: "ReportEntityId", force: true do |t|
    t.datetime "CreatedOn"
    t.boolean  "IsFilterable",         null: false
    t.integer  "ImportSequenceNumber"
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.uuid     "ReportId",             null: false
    t.integer  "ObjectTypeCode",       null: false
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "SupportingSolutionId"
    t.datetime "OverwriteTime",        null: false
    t.uuid     "ReportEntityIdUnique", null: false
    t.boolean  "IsCustomizable",       null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IsManaged",            null: false
    t.uuid     "SolutionId",           null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "ComponentState",       null: false
  end

  add_index "ReportEntityBase", ["ReportEntityIdUnique"], name: "UQ_ReportEntityBase_ReportEntityIdUnique", unique: true
  add_index "ReportEntityBase", ["ReportId"], name: "ndx_for_cascaderelationship_report_reportentities"
  add_index "ReportEntityBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ReportLinkBase", primary_key: "ReportLinkId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedBy"
    t.integer  "LinkTypeCode",         null: false
    t.string   "LinkedReportName",     null: false
    t.integer  "ImportSequenceNumber"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.uuid     "ReportId",             null: false
    t.uuid     "LinkedReportId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "ReportLinkIdUnique",   null: false
  end

  add_index "ReportLinkBase", ["LinkedReportId"], name: "fndx_for_cascaderelationship_report_reportlink_sub"
  add_index "ReportLinkBase", ["ReportId"], name: "ndx_for_cascaderelationship_report_reportlink"
  add_index "ReportLinkBase", ["ReportLinkIdUnique"], name: "UQ_ReportLinkBase_ReportLinkIdUnique", unique: true
  add_index "ReportLinkBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ReportVisibilityBase", primary_key: "ReportVisibilityId", force: true do |t|
    t.uuid     "ReportId",                 null: false
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "ModifiedOn"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.integer  "VisibilityCode",           null: false
    t.uuid     "ModifiedBy"
    t.uuid     "SolutionId",               null: false
    t.boolean  "IsCustomizable",           null: false
    t.boolean  "IsManaged",                null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "OverwriteTime",            null: false
    t.uuid     "ReportVisibilityIdUnique", null: false
    t.uuid     "SupportingSolutionId"
    t.integer  "ComponentState",           null: false
  end

  add_index "ReportVisibilityBase", ["ReportId"], name: "ndx_for_cascaderelationship_report_reportvisibility"
  add_index "ReportVisibilityBase", ["ReportVisibilityIdUnique"], name: "UQ_ReportVisibilityBase_ReportVisibilityIdUnique", unique: true
  add_index "ReportVisibilityBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ResourceBase", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "DisplayInServiceViews"
    t.uuid    "BusinessUnitId",                    null: false
    t.uuid    "CalendarId"
    t.boolean "IsDisabled"
    t.uuid    "ResourceId",                        null: false
    t.binary  "VersionNumber"
    t.uuid    "OrganizationId",                    null: false
    t.string  "Name",                  limit: 160
    t.uuid    "SiteId"
  end

  add_index "ResourceBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "ResourceBase", ["IsDisabled", "Name", "SiteId"], name: "ndx_SystemManaged_Resource"
  add_index "ResourceBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ResourceGroupBase", primary_key: "ObjectTypeCode", force: true do |t|
    t.string  "Name",            limit: 160
    t.uuid    "ResourceGroupId",             null: false
    t.integer "GroupTypeCode"
    t.uuid    "BusinessUnitId"
    t.binary  "VersionNumber"
    t.uuid    "OrganizationId",              null: false
  end

  add_index "ResourceGroupBase", ["BusinessUnitId"], name: "fndx_Security"
  add_index "ResourceGroupBase", ["Name"], name: "ndx_SystemManaged_ResourceGroup"
  add_index "ResourceGroupBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ResourceGroupExpansionBase", primary_key: "ResourceGroupExpansionId", force: true do |t|
    t.uuid     "ObjectId",   null: false
    t.datetime "ModifiedOn"
    t.uuid     "ItemId",     null: false
    t.integer  "MethodCode", null: false
  end

  add_index "ResourceGroupExpansionBase", ["ItemId", "MethodCode"], name: "ndx_ItemIdMethodCode_ResourceGroupExpansion"
  add_index "ResourceGroupExpansionBase", ["ObjectId", "MethodCode"], name: "ndx_ObjectIdMethodCode_ResourceGroupExpansion"

  create_table "ResourceSpecBase", primary_key: "ResourceSpecId", force: true do |t|
    t.float    "EffortRequired",      limit: 53,  null: false
    t.uuid     "OrganizationId",                  null: false
    t.datetime "ModifiedOn"
    t.integer  "ObjectTypeCode",                  null: false
    t.text     "Description"
    t.uuid     "ModifiedBy"
    t.uuid     "BusinessUnitId",                  null: false
    t.string   "Name",                limit: 160, null: false
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.binary   "VersionNumber"
    t.text     "ObjectiveExpression",             null: false
    t.boolean  "SameSite"
    t.text     "Constraints"
    t.uuid     "GroupObjectId",                   null: false
    t.integer  "RequiredCount",                   null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "ResourceSpecBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "ResourceSpecBase", ["GroupObjectId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_constraint_based_group_resource_specs"
  add_index "ResourceSpecBase", ["Name"], name: "ndx_SystemManaged_ResourceSpec"
  add_index "ResourceSpecBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RibbonCommandBase", primary_key: "OverwriteTime", force: true do |t|
    t.string  "Entity",                limit: 50
    t.text    "Command",                          null: false
    t.integer "ComponentState",                   null: false
    t.text    "CommandDefinition"
    t.boolean "IsManaged",                        null: false
    t.uuid    "RibbonCommandId",                  null: false
    t.uuid    "SupportingSolutionId"
    t.uuid    "RibbonCommandUniqueId",            null: false
    t.uuid    "RibbonCustomizationId"
    t.binary  "VersionNumber"
    t.uuid    "OrganizationId",                   null: false
    t.uuid    "SolutionId",                       null: false
  end

  add_index "RibbonCommandBase", ["RibbonCommandUniqueId"], name: "UQ_RibbonCommandBase_UniqueRowId", unique: true
  add_index "RibbonCommandBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RibbonContextGroupBase", primary_key: "OverwriteTime", force: true do |t|
    t.binary  "VersionNumber"
    t.uuid    "OrganizationId",                        null: false
    t.boolean "IsManaged",                             null: false
    t.string  "Entity",                     limit: 50
    t.uuid    "RibbonContextGroupId",                  null: false
    t.uuid    "SolutionId",                            null: false
    t.uuid    "SupportingSolutionId"
    t.text    "ContextGroupXml"
    t.uuid    "RibbonContextGroupUniqueId",            null: false
    t.text    "ContextGroupId",                        null: false
    t.uuid    "RibbonCustomizationId"
    t.integer "ComponentState",                        null: false
  end

  add_index "RibbonContextGroupBase", ["RibbonContextGroupUniqueId"], name: "UQ_RibbonContextGroupBase_UniqueRowId", unique: true
  add_index "RibbonContextGroupBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RibbonCustomizationBase", primary_key: "OverwriteTime", force: true do |t|
    t.binary   "VersionNumber"
    t.boolean  "IsManaged",                              null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "RibbonCustomizationUniqueId",            null: false
    t.uuid     "OrganizationId",                         null: false
    t.uuid     "RibbonCustomizationId",                  null: false
    t.string   "Entity",                      limit: 50
    t.integer  "ComponentState",                         null: false
    t.uuid     "SolutionId",                             null: false
    t.datetime "PublishedOn"
  end

  add_index "RibbonCustomizationBase", ["RibbonCustomizationUniqueId"], name: "UQ_RibbonCustomizationBase_UniqueRowId", unique: true
  add_index "RibbonCustomizationBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RibbonDiffBase", primary_key: "ComponentState", force: true do |t|
    t.uuid     "SupportingSolutionId"
    t.text     "RDX"
    t.uuid     "RibbonDiffUniqueId",               null: false
    t.uuid     "SolutionId",                       null: false
    t.uuid     "RibbonCustomizationId"
    t.boolean  "IsManaged",                        null: false
    t.string   "Entity",                limit: 50
    t.uuid     "RibbonDiffId",                     null: false
    t.integer  "Sequence"
    t.text     "DiffId",                           null: false
    t.uuid     "ContextGroupId"
    t.uuid     "OrganizationId",                   null: false
    t.binary   "VersionNumber"
    t.text     "TabId",                            null: false
    t.datetime "OverwriteTime",                    null: false
    t.integer  "DiffType",                         null: false
  end

  add_index "RibbonDiffBase", ["RibbonDiffUniqueId"], name: "UQ_RibbonDiffBase_UniqueRowId", unique: true
  add_index "RibbonDiffBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RibbonRuleBase", primary_key: "OverwriteTime", force: true do |t|
    t.integer "RuleType",                         null: false
    t.string  "Entity",                limit: 50
    t.uuid    "RibbonRuleId",                     null: false
    t.uuid    "RibbonCustomizationId"
    t.integer "ComponentState",                   null: false
    t.text    "RuleId",                           null: false
    t.boolean "IsManaged",                        null: false
    t.uuid    "OrganizationId",                   null: false
    t.uuid    "RibbonRuleUniqueId",               null: false
    t.text    "RuleDefinition"
    t.binary  "VersionNumber"
    t.uuid    "SolutionId",                       null: false
    t.uuid    "SupportingSolutionId"
  end

  add_index "RibbonRuleBase", ["RibbonRuleUniqueId"], name: "UQ_RibbonRuleBase_UniqueRowId", unique: true
  add_index "RibbonRuleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RibbonTabToCommandMapBase", primary_key: "SolutionId", force: true do |t|
    t.text     "TabId",                                    null: false
    t.uuid     "RibbonTabToCommandMapUniqueId",            null: false
    t.text     "Command"
    t.integer  "ComponentState",                           null: false
    t.uuid     "RibbonTabToCommandMapId",                  null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "RibbonDiffId"
    t.text     "ControlId"
    t.binary   "VersionNumber"
    t.uuid     "OrganizationId",                           null: false
    t.boolean  "IsManaged",                                null: false
    t.string   "Entity",                        limit: 50
    t.datetime "OverwriteTime",                            null: false
  end

  add_index "RibbonTabToCommandMapBase", ["RibbonDiffId"], name: "fndx_for_cascaderelationship_RibbonDiff_RibbonTabToCommandMap"
  add_index "RibbonTabToCommandMapBase", ["RibbonTabToCommandMapUniqueId"], name: "UQ_RibbonTabToCommandMapBase_UniqueRowId", unique: true
  add_index "RibbonTabToCommandMapBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RoleBase", primary_key: "RoleId", force: true do |t|
    t.uuid     "RoleTemplateId"
    t.uuid     "OrganizationId",                   null: false
    t.string   "Name",                 limit: 100, null: false
    t.uuid     "BusinessUnitId",                   null: false
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.uuid     "ModifiedBy"
    t.uuid     "ParentRoleId"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.boolean  "IsManaged",                        null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "ComponentState",                   null: false
    t.uuid     "RoleIdUnique",                     null: false
    t.uuid     "SolutionId",                       null: false
    t.datetime "OverwriteTime",                    null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IsCustomizable",                   null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "ParentRootRoleId",                 null: false
  end

  add_index "RoleBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "RoleBase", ["ParentRoleId"], name: "fndx_for_cascaderelationship_role_parent_role"
  add_index "RoleBase", ["ParentRootRoleId"], name: "ndx_for_cascaderelationship_role_parent_root_role"
  add_index "RoleBase", ["RoleIdUnique"], name: "UQ_RoleBase_RoleIdUnique", unique: true
  add_index "RoleBase", ["RoleTemplateId"], name: "fndx_for_cascaderelationship_role_template_roles"
  add_index "RoleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RoleBaseIds", primary_key: "RoleId", force: true do |t|
  end

  create_table "RolePrivilegesBase", primary_key: "RolePrivilegeId", force: true do |t|
    t.uuid     "PrivilegeId",           null: false
    t.uuid     "RoleId",                null: false
    t.integer  "PrivilegeDepthMask",    null: false
    t.binary   "VersionNumber"
    t.datetime "OverwriteTime",         null: false
    t.boolean  "IsManaged",             null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "RolePrivilegeIdUnique", null: false
    t.integer  "ComponentState",        null: false
    t.uuid     "SolutionId",            null: false
  end

  add_index "RolePrivilegesBase", ["PrivilegeId"], name: "ndx_for_cascaderelationship_privilege_roles"
  add_index "RolePrivilegesBase", ["RoleId", "PrivilegeId", "SolutionId"], name: "UQ_RolePrivileges", unique: true
  add_index "RolePrivilegesBase", ["RoleId"], name: "ndx_for_cascaderelationship_role_privileges"
  add_index "RolePrivilegesBase", ["RolePrivilegeIdUnique"], name: "UQ_RolePrivilegesBase_RolePrivilegeIdUnique", unique: true
  add_index "RolePrivilegesBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "RoleTemplateBase", primary_key: "RoleTemplateId", force: true do |t|
    t.string  "Name",      limit: 100, null: false
    t.boolean "Upgrading",             null: false
  end

  add_index "RoleTemplateBase", ["Name"], name: "ndx_SystemManaged_RoleTemplate"

  create_table "RoleTemplatePrivileges", primary_key: "RoleTemplatePrivilegeId", force: true do |t|
    t.uuid    "RoleTemplateId", null: false
    t.uuid    "PrivilegeId",    null: false
    t.boolean "IsBasic",        null: false
    t.boolean "IsLocal",        null: false
    t.boolean "IsDeep",         null: false
    t.boolean "IsGlobal",       null: false
    t.boolean "Upgrading",      null: false
  end

  add_index "RoleTemplatePrivileges", ["PrivilegeId"], name: "ndx_for_cascaderelationship_privilege_role_templates"
  add_index "RoleTemplatePrivileges", ["RoleTemplateId", "PrivilegeId"], name: "UQ_RoleTemplatePrivileges", unique: true

  create_table "RollupFieldBase", primary_key: "RollupFieldId", force: true do |t|
    t.uuid     "CreatedBy"
    t.uuid     "MetricId"
    t.binary   "VersionNumber"
    t.datetime "CreatedOn"
    t.string   "SourceAttribute",              limit: 100
    t.integer  "SourceState"
    t.string   "GoalAttribute",                limit: 100
    t.integer  "SourceEntity"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "SourceStatus"
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "ImportSequenceNumber"
    t.integer  "TimeZoneRuleVersionNumber"
    t.datetime "ModifiedOn"
    t.string   "DateAttribute",                limit: 100
    t.boolean  "IsStateParentEntityAttribute"
    t.uuid     "ModifiedBy"
    t.integer  "EntityForDateAttribute"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "RollupFieldBase", ["CreatedOn", "GoalAttribute", "SourceEntity", "SourceAttribute", "DateAttribute", "SourceState", "SourceStatus", "EntityForDateAttribute", "IsStateParentEntityAttribute"], name: "ndx_SystemManaged_RollupField"
  add_index "RollupFieldBase", ["MetricId"], name: "ndx_for_cascaderelationship_metric_rollupfield"
  add_index "RollupFieldBase", ["VersionNumber"], name: "ndx_Sync"

  create_table "SalesLiteratureBase", primary_key: "SalesLiteratureId", force: true do |t|
    t.uuid     "OrganizationId",                                                  null: false
    t.uuid     "EmployeeContactId"
    t.uuid     "SubjectId"
    t.text     "Description"
    t.integer  "LiteratureTypeCode"
    t.string   "Name",                      limit: 100
    t.datetime "ExpirationDate"
    t.boolean  "IsCustomerViewable"
    t.uuid     "CreatedBy"
    t.text     "KeyWords"
    t.boolean  "HasAttachments"
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",                          precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "SalesLiteratureBase", ["EmployeeContactId"], name: "fndx_for_cascaderelationship_system_user_sales_literature"
  add_index "SalesLiteratureBase", ["Name", "LiteratureTypeCode"], name: "ndx_SystemManaged_SalesLiterature"
  add_index "SalesLiteratureBase", ["Name"], name: "ndx_name"
  add_index "SalesLiteratureBase", ["SubjectId"], name: "fndx_for_cascaderelationship_subject_sales_literature"
  add_index "SalesLiteratureBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SalesLiteratureExtensionBase", primary_key: "SalesLiteratureId", force: true do |t|
  end

  create_table "SalesLiteratureItemBase", primary_key: "SalesLiteratureItemId", force: true do |t|
    t.uuid     "SalesLiteratureId",                null: false
    t.boolean  "IsCustomerViewable"
    t.string   "AttachedDocumentUrl",  limit: 500
    t.string   "Title",                limit: 200
    t.string   "MimeType",             limit: 256
    t.string   "AuthorName",           limit: 500
    t.text     "Abstract"
    t.text     "DocumentBody"
    t.datetime "CreatedOn"
    t.text     "KeyWords"
    t.string   "FileName"
    t.integer  "FileTypeCode"
    t.integer  "FileSize"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "ImportSequenceNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SalesLiteratureItemBase", ["SalesLiteratureId"], name: "ndx_for_cascaderelationship_sales_literature_items"
  add_index "SalesLiteratureItemBase", ["Title", "ModifiedOn"], name: "ndx_SystemManaged_SalesLiteratureItem"
  add_index "SalesLiteratureItemBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SalesOrderBase", primary_key: "SalesOrderId", force: true do |t|
    t.uuid     "OpportunityId"
    t.uuid     "QuoteId"
    t.integer  "PriorityCode"
    t.integer  "SubmitStatus"
    t.datetime "SubmitDate"
    t.uuid     "OwningBusinessUnit"
    t.text     "SubmitStatusDescription"
    t.uuid     "PriceLevelId"
    t.datetime "LastBackofficeSubmit"
    t.string   "OrderNumber",                      limit: 100,                            null: false
    t.string   "Name",                             limit: 300
    t.integer  "PricingErrorCode"
    t.text     "Description"
    t.decimal  "DiscountAmount"
    t.decimal  "FreightAmount"
    t.decimal  "TotalAmount"
    t.decimal  "TotalLineItemAmount"
    t.decimal  "TotalLineItemDiscountAmount"
    t.decimal  "TotalAmountLessFreight"
    t.decimal  "TotalDiscountAmount"
    t.datetime "RequestDeliveryBy"
    t.decimal  "TotalTax"
    t.integer  "ShippingMethodCode"
    t.integer  "PaymentTermsCode"
    t.integer  "FreightTermsCode"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                                                               null: false
    t.integer  "StatusCode"
    t.string   "ShipTo_Name",                      limit: 200
    t.binary   "VersionNumber"
    t.string   "ShipTo_Line1",                     limit: 4000
    t.string   "ShipTo_Line2",                     limit: 4000
    t.string   "ShipTo_Line3",                     limit: 4000
    t.string   "ShipTo_City",                      limit: 80
    t.string   "ShipTo_StateOrProvince",           limit: 50
    t.string   "ShipTo_Country",                   limit: 80
    t.string   "ShipTo_PostalCode",                limit: 20
    t.boolean  "WillCall"
    t.string   "ShipTo_Telephone",                 limit: 50
    t.string   "BillTo_Name",                      limit: 200
    t.integer  "ShipTo_FreightTermsCode"
    t.string   "ShipTo_Fax",                       limit: 50
    t.string   "BillTo_Line1",                     limit: 4000
    t.string   "BillTo_Line2",                     limit: 4000
    t.string   "BillTo_Line3",                     limit: 4000
    t.string   "BillTo_City",                      limit: 80
    t.string   "BillTo_StateOrProvince",           limit: 50
    t.string   "BillTo_Country",                   limit: 80
    t.string   "BillTo_PostalCode",                limit: 20
    t.string   "BillTo_Telephone",                 limit: 50
    t.string   "BillTo_Fax",                       limit: 50
    t.decimal  "DiscountPercentage",                            precision: 23, scale: 10
    t.string   "BillTo_ContactName",               limit: 150
    t.uuid     "CampaignId"
    t.uuid     "BillTo_AddressId"
    t.uuid     "ShipTo_AddressId"
    t.boolean  "IsPriceLocked"
    t.datetime "DateFulfilled"
    t.string   "ShipTo_ContactName",               limit: 150
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.decimal  "ExchangeRate",                                  precision: 23, scale: 10
    t.datetime "OverriddenCreatedOn"
    t.decimal  "TotalLineItemAmount_Base"
    t.decimal  "TotalDiscountAmount_Base"
    t.decimal  "TotalAmountLessFreight_Base"
    t.decimal  "TotalAmount_Base"
    t.decimal  "DiscountAmount_Base"
    t.decimal  "FreightAmount_Base"
    t.decimal  "TotalLineItemDiscountAmount_Base"
    t.decimal  "TotalTax_Base"
    t.uuid     "CustomerId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwnerId",                                                                 null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "OwnerIdType",                                                             null: false
    t.integer  "CustomerIdType"
    t.string   "CustomerIdName",                   limit: 4000
    t.string   "CustomerIdYomiName",               limit: 4000
  end

  add_index "SalesOrderBase", ["CampaignId"], name: "fndx_for_cascaderelationship_campaign_orders"
  add_index "SalesOrderBase", ["CustomerId", "CustomerIdType"], name: "ndx_for_cascaderelationship_order_customer_accounts"
  add_index "SalesOrderBase", ["Name", "TotalAmount"], name: "ndx_SystemManaged_SalesOrder"
  add_index "SalesOrderBase", ["OpportunityId"], name: "fndx_for_cascaderelationship_opportunity_sales_orders"
  add_index "SalesOrderBase", ["OwnerId"], name: "ndx_Security"
  add_index "SalesOrderBase", ["OwningBusinessUnit", "OrderNumber"], name: "AK1_SalesOrderBase", unique: true
  add_index "SalesOrderBase", ["QuoteId"], name: "fndx_for_cascaderelationship_quote_orders"
  add_index "SalesOrderBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "SalesOrderBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SalesOrderDetailBase", primary_key: "SalesOrderDetailId", force: true do |t|
    t.uuid     "SalesOrderId",                                                     null: false
    t.uuid     "SalesRepId"
    t.boolean  "IsProductOverridden"
    t.boolean  "IsCopied"
    t.decimal  "QuantityShipped",                        precision: 23, scale: 10
    t.integer  "LineItemNumber"
    t.decimal  "QuantityBackordered",                    precision: 23, scale: 10
    t.uuid     "UoMId"
    t.decimal  "QuantityCancelled",                      precision: 23, scale: 10
    t.uuid     "ProductId"
    t.datetime "RequestDeliveryBy"
    t.decimal  "Quantity",                               precision: 23, scale: 10
    t.integer  "PricingErrorCode"
    t.decimal  "ManualDiscountAmount"
    t.string   "ProductDescription",        limit: 500
    t.decimal  "VolumeDiscountAmount"
    t.decimal  "PricePerUnit"
    t.decimal  "BaseAmount"
    t.decimal  "ExtendedAmount"
    t.text     "Description"
    t.boolean  "IsPriceOverridden"
    t.string   "ShipTo_Name",               limit: 200
    t.decimal  "Tax"
    t.datetime "CreatedOn"
    t.string   "ShipTo_Line1",              limit: 4000
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.string   "ShipTo_Line2",              limit: 4000
    t.string   "ShipTo_Line3",              limit: 4000
    t.datetime "ModifiedOn"
    t.string   "ShipTo_City",               limit: 80
    t.string   "ShipTo_StateOrProvince",    limit: 50
    t.string   "ShipTo_Country",            limit: 80
    t.string   "ShipTo_PostalCode",         limit: 20
    t.boolean  "WillCall"
    t.string   "ShipTo_Telephone",          limit: 50
    t.string   "ShipTo_Fax",                limit: 50
    t.integer  "ShipTo_FreightTermsCode"
    t.string   "ShipTo_ContactName",        limit: 150
    t.binary   "VersionNumber"
    t.uuid     "ShipTo_AddressId"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "ImportSequenceNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.datetime "OverriddenCreatedOn"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "BaseAmount_Base"
    t.decimal  "PricePerUnit_Base"
    t.decimal  "VolumeDiscountAmount_Base"
    t.decimal  "ExtendedAmount_Base"
    t.decimal  "Tax_Base"
    t.decimal  "ManualDiscountAmount_Base"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SalesOrderDetailBase", ["ProductId"], name: "fndx_for_cascaderelationship_product_order_details"
  add_index "SalesOrderDetailBase", ["SalesOrderId"], name: "cndx_for_cascaderelationship_order_details"
  add_index "SalesOrderDetailBase", ["SalesRepId"], name: "fndx_for_cascaderelationship_system_user_salesorderdetail"
  add_index "SalesOrderDetailBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SalesOrderDetailExtensionBase", primary_key: "SalesOrderDetailId", force: true do |t|
  end

  create_table "SalesOrderExtensionBase", primary_key: "SalesOrderId", force: true do |t|
  end

  create_table "SavedQueryBase", primary_key: "SavedQueryId", force: true do |t|
    t.string   "Name",                  limit: 200, null: false
    t.uuid     "OrganizationId",                    null: false
    t.text     "Description"
    t.integer  "QueryType",                         null: false
    t.boolean  "IsDefault",                         null: false
    t.integer  "ReturnedTypeCode",                  null: false
    t.integer  "QueryAppUsage"
    t.boolean  "IsUserDefined"
    t.text     "FetchXml"
    t.boolean  "IsCustomizable",                    null: false
    t.boolean  "IsQuickFindQuery",                  null: false
    t.text     "ColumnSetXml"
    t.text     "LayoutXml"
    t.string   "QueryAPI",              limit: 100
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.boolean  "IsPrivate",                         null: false
    t.uuid     "SavedQueryIdUnique",                null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "OverwriteTime",                     null: false
    t.boolean  "IsManaged",                         null: false
    t.string   "AdvancedGroupBy",       limit: 160
    t.text     "ConditionalFormatting"
    t.boolean  "CanBeDeleted",                      null: false
    t.integer  "StatusCode"
    t.integer  "ComponentState",                    null: false
    t.integer  "OrganizationTabOrder"
    t.uuid     "SolutionId",                        null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "StateCode",                         null: false
  end

  add_index "SavedQueryBase", ["ReturnedTypeCode", "StateCode", "QueryType"], name: "ndx_Core"
  add_index "SavedQueryBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SavedQueryVisualizationBase", primary_key: "OverwriteTime", force: true do |t|
    t.integer  "ComponentState",                              null: false
    t.text     "Description"
    t.text     "PresentationDescription"
    t.binary   "VersionNumber"
    t.boolean  "IsDefault",                                   null: false
    t.datetime "ModifiedOn"
    t.text     "DataDescription"
    t.uuid     "CreatedBy"
    t.uuid     "SolutionId",                                  null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "SavedQueryVisualizationIdUnique",             null: false
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.boolean  "IsCustomizable",                              null: false
    t.string   "Name",                            limit: 100, null: false
    t.uuid     "SavedQueryVisualizationId",                   null: false
    t.integer  "PrimaryEntityTypeCode",                       null: false
    t.uuid     "WebResourceId"
    t.boolean  "IsManaged",                                   null: false
    t.uuid     "OrganizationId",                              null: false
    t.datetime "CreatedOn"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SavedQueryVisualizationBase", ["Name"], name: "ndx_SavedQueryVisualizationName"
  add_index "SavedQueryVisualizationBase", ["SavedQueryVisualizationIdUnique"], name: "UQ_SavedQueryVisualizationBase_SavedQueryVisualizationIdUnique", unique: true
  add_index "SavedQueryVisualizationBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true
  add_index "SavedQueryVisualizationBase", ["WebResourceId"], name: "ndx_for_cascaderelationship_webresource_savedqueryvisualizations"

  create_table "SdkMessageBase", primary_key: "SdkMessageId", force: true do |t|
    t.uuid     "OrganizationId",                 null: false
    t.boolean  "IsPrivate"
    t.uuid     "CreatedBy"
    t.string   "CategoryName",       limit: 25,  null: false
    t.integer  "CustomizationLevel",             null: false
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "SdkMessageIdUnique",             null: false
    t.boolean  "Expand"
    t.boolean  "AutoTransact"
    t.binary   "VersionNumber"
    t.datetime "CreatedOn"
    t.integer  "Availability",                   null: false
    t.string   "Name",               limit: 256, null: false
    t.boolean  "Template"
    t.uuid     "ModifiedOnBehalfBy"
    t.string   "ThrottleSettings",   limit: 512
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "SdkMessageBase", ["Name"], name: "ndx_Name"
  add_index "SdkMessageBase", ["SdkMessageIdUnique"], name: "UQ_SdkMessageBase_SdkMessageIdUnique", unique: true
  add_index "SdkMessageBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessageBaseIds", primary_key: "SdkMessageId", force: true do |t|
  end

  create_table "SdkMessageFilterBase", primary_key: "SdkMessageFilterId", force: true do |t|
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId",                null: false
    t.integer  "PrimaryObjectTypeCode",         null: false
    t.binary   "VersionNumber"
    t.uuid     "ModifiedBy"
    t.integer  "CustomizationLevel",            null: false
    t.integer  "SecondaryObjectTypeCode",       null: false
    t.uuid     "SdkMessageFilterIdUnique",      null: false
    t.datetime "ModifiedOn"
    t.boolean  "IsCustomProcessingStepAllowed", null: false
    t.datetime "CreatedOn"
    t.integer  "Availability",                  null: false
    t.uuid     "SdkMessageId",                  null: false
    t.boolean  "IsVisible",                     null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "SdkMessageFilterBase", ["SdkMessageFilterIdUnique"], name: "UQ_SdkMessageFilterBase_SdkMessageFilterIdUnique", unique: true
  add_index "SdkMessageFilterBase", ["SdkMessageId", "PrimaryObjectTypeCode", "SecondaryObjectTypeCode"], name: "ndx_Cover_SdkMessageFilter"
  add_index "SdkMessageFilterBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessageFilterBaseIds", primary_key: "SdkMessageFilterId", force: true do |t|
  end

  create_table "SdkMessagePairBase", primary_key: "SdkMessagePairId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.integer  "CustomizationLevel",                 null: false
    t.datetime "CreatedOn"
    t.uuid     "SdkMessagePairIdUnique",             null: false
    t.string   "Endpoint",               limit: 128, null: false
    t.uuid     "OrganizationId",                     null: false
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.string   "Namespace",              limit: 256, null: false
    t.uuid     "SdkMessageId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SdkMessagePairBase", ["SdkMessagePairIdUnique"], name: "UQ_SdkMessagePairBase_SdkMessagePairIdUnique", unique: true
  add_index "SdkMessagePairBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessagePairBaseIds", primary_key: "SdkMessagePairId", force: true do |t|
  end

  create_table "SdkMessageProcessingStepBase", primary_key: "SdkMessageProcessingStepId", force: true do |t|
    t.datetime "CreatedOn"
    t.text     "Configuration"
    t.integer  "SupportedDeployment",                                null: false
    t.uuid     "PluginTypeId",                                       null: false
    t.integer  "Rank",                                               null: false
    t.uuid     "SdkMessageId",                                       null: false
    t.datetime "ModifiedOn"
    t.integer  "Stage",                                              null: false
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId",                                     null: false
    t.uuid     "SdkMessageProcessingStepIdUnique",                   null: false
    t.text     "FilteringAttributes"
    t.integer  "CustomizationLevel",                                 null: false
    t.uuid     "ModifiedBy"
    t.integer  "StateCode",                                          null: false
    t.uuid     "SdkMessageProcessingStepSecureConfigId"
    t.string   "Description",                            limit: 256
    t.binary   "VersionNumber"
    t.integer  "Mode",                                               null: false
    t.uuid     "SdkMessageFilterId"
    t.integer  "StatusCode"
    t.uuid     "ImpersonatingUserId"
    t.integer  "InvocationSource",                                   null: false
    t.boolean  "AsyncAutoDelete",                                    null: false
    t.boolean  "IsCustomizable",                                     null: false
    t.string   "Name",                                   limit: 256, null: false
    t.boolean  "IsManaged",                                          null: false
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "OverwriteTime",                                      null: false
    t.uuid     "EventHandler"
    t.boolean  "IsHidden",                                           null: false
    t.uuid     "SolutionId",                                         null: false
    t.integer  "ComponentState",                                     null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "EventHandlerTypeCode"
  end

  add_index "SdkMessageProcessingStepBase", ["Description", "EventHandler"], name: "ndx_SystemManaged_SdkMessageProcessingStep"
  add_index "SdkMessageProcessingStepBase", ["PluginTypeId"], name: "ndx_for_cascaderelationship_plugintypeid_sdkmessageprocessingstep"
  add_index "SdkMessageProcessingStepBase", ["SdkMessageId", "Rank", "SdkMessageFilterId"], name: "ndx_MessageProcessing"
  add_index "SdkMessageProcessingStepBase", ["SdkMessageProcessingStepIdUnique"], name: "UQ_SdkMessageProcessingStepBase_SdkMessageProcessingStepIdUnique", unique: true
  add_index "SdkMessageProcessingStepBase", ["SdkMessageProcessingStepSecureConfigId"], name: "fndx_for_cascaderelationship_sdkmessageprocessingstepsecureconfigid_sdkmessageprocessingstep"
  add_index "SdkMessageProcessingStepBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "SdkMessageProcessingStepBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessageProcessingStepBaseIds", primary_key: "SdkMessageProcessingStepId", force: true do |t|
  end

  create_table "SdkMessageProcessingStepImageBase", primary_key: "SdkMessageProcessingStepImageId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.uuid     "SdkMessageProcessingStepId"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.uuid     "OrganizationId",                                    null: false
    t.datetime "CreatedOn"
    t.string   "EntityAlias",                           limit: 256, null: false
    t.integer  "CustomizationLevel",                                null: false
    t.uuid     "CreatedBy"
    t.uuid     "SdkMessageProcessingStepImageIdUnique",             null: false
    t.integer  "ImageType",                                         null: false
    t.string   "RelatedAttributeName",                  limit: 256
    t.string   "MessagePropertyName",                   limit: 256, null: false
    t.text     "Attributes"
    t.boolean  "IsCustomizable",                                    null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.string   "Description",                           limit: 256
    t.boolean  "IsManaged",                                         null: false
    t.string   "Name",                                  limit: 256, null: false
    t.integer  "ComponentState",                                    null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "SolutionId",                                        null: false
    t.datetime "OverwriteTime",                                     null: false
  end

  add_index "SdkMessageProcessingStepImageBase", ["SdkMessageProcessingStepId"], name: "fndx_ProcessingStep"
  add_index "SdkMessageProcessingStepImageBase", ["SdkMessageProcessingStepImageIdUnique"], name: "UQ_SdkMessageProcessingStepImageBase_SdkMessageProcessingStepImageIdUnique", unique: true
  add_index "SdkMessageProcessingStepImageBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessageProcessingStepSecureConfigBase", primary_key: "SdkMessageProcessingStepSecureConfigId", force: true do |t|
    t.integer  "CustomizationLevel",                           null: false
    t.datetime "CreatedOn"
    t.text     "SecureConfig"
    t.uuid     "ModifiedBy"
    t.uuid     "SdkMessageProcessingStepSecureConfigIdUnique", null: false
    t.datetime "ModifiedOn"
    t.uuid     "OrganizationId",                               null: false
    t.uuid     "CreatedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SdkMessageProcessingStepSecureConfigBase", ["SdkMessageProcessingStepSecureConfigIdUnique"], name: "UQ_SdkMessageProcessingStepSecureConfigBase_SdkMessageProcessingStepSecureConfigIdUnique", unique: true

  create_table "SdkMessageProcessingStepSecureConfigBaseIds", primary_key: "SdkMessageProcessingStepSecureConfigId", force: true do |t|
  end

  create_table "SdkMessageRequestBase", primary_key: "CustomizationLevel", force: true do |t|
    t.uuid     "SdkMessagePairId"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "OrganizationId",                        null: false
    t.binary   "VersionNumber"
    t.uuid     "SdkMessageRequestIdUnique",             null: false
    t.string   "Name",                      limit: 256, null: false
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "SdkMessageRequestId",                   null: false
    t.uuid     "CreatedOnBehalfBy"
    t.integer  "PrimaryObjectTypeCode"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SdkMessageRequestBase", ["SdkMessageRequestIdUnique"], name: "UQ_SdkMessageRequestBase_SdkMessageRequestIdUnique", unique: true
  add_index "SdkMessageRequestBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessageRequestBaseIds", primary_key: "SdkMessageRequestId", force: true do |t|
  end

  create_table "SdkMessageRequestFieldBase", primary_key: "CustomizationLevel", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "SdkMessageRequestFieldIdUnique",             null: false
    t.boolean  "Optional"
    t.uuid     "CreatedBy"
    t.integer  "Position",                                   null: false
    t.string   "ClrParser",                      limit: 256
    t.string   "PublicName",                     limit: 256
    t.uuid     "SdkMessageRequestId"
    t.datetime "ModifiedOn"
    t.string   "Parser",                         limit: 256
    t.uuid     "OrganizationId",                             null: false
    t.uuid     "SdkMessageRequestFieldId",                   null: false
    t.uuid     "ModifiedBy"
    t.string   "Name",                           limit: 256, null: false
    t.binary   "VersionNumber"
    t.integer  "FieldMask",                                  null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SdkMessageRequestFieldBase", ["SdkMessageRequestFieldIdUnique"], name: "UQ_SdkMessageRequestFieldBase_SdkMessageRequestFieldIdUnique", unique: true
  add_index "SdkMessageRequestFieldBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessageResponseBase", primary_key: "CustomizationLevel", force: true do |t|
    t.binary   "VersionNumber"
    t.uuid     "SdkMessageResponseIdUnique", null: false
    t.uuid     "ModifiedBy"
    t.uuid     "SdkMessageRequestId"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.datetime "CreatedOn"
    t.uuid     "OrganizationId",             null: false
    t.uuid     "SdkMessageResponseId",       null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SdkMessageResponseBase", ["SdkMessageResponseIdUnique"], name: "UQ_SdkMessageResponseBase_SdkMessageResponseIdUnique", unique: true
  add_index "SdkMessageResponseBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SdkMessageResponseBaseIds", primary_key: "SdkMessageResponseId", force: true do |t|
  end

  create_table "SdkMessageResponseFieldBase", primary_key: "CustomizationLevel", force: true do |t|
    t.string   "PublicName",                      limit: 256
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.uuid     "SdkMessageResponseFieldIdUnique",             null: false
    t.string   "Value",                           limit: 256, null: false
    t.uuid     "OrganizationId",                              null: false
    t.string   "Formatter",                       limit: 256
    t.string   "ClrFormatter",                    limit: 256
    t.string   "Name",                            limit: 256, null: false
    t.uuid     "CreatedBy"
    t.integer  "Position",                                    null: false
    t.binary   "VersionNumber"
    t.uuid     "SdkMessageResponseFieldId",                   null: false
    t.uuid     "SdkMessageResponseId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SdkMessageResponseFieldBase", ["SdkMessageResponseFieldIdUnique"], name: "UQ_SdkMessageResponseFieldBase_SdkMessageResponseFieldIdUnique", unique: true
  add_index "SdkMessageResponseFieldBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ServiceAppointmentBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "ServiceBase", primary_key: "ServiceId", force: true do |t|
    t.string   "Name",                 limit: 160, null: false
    t.uuid     "OrganizationId",                   null: false
    t.uuid     "ResourceSpecId",                   null: false
    t.uuid     "ModifiedBy"
    t.integer  "AnchorOffset"
    t.datetime "ModifiedOn"
    t.integer  "Duration",                         null: false
    t.boolean  "IsSchedulable",                    null: false
    t.uuid     "StrategyId",                       null: false
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.integer  "InitialStatusCode",                null: false
    t.uuid     "CalendarId"
    t.boolean  "ShowResources"
    t.string   "Granularity",          limit: 100, null: false
    t.text     "Description"
    t.datetime "CreatedOn"
    t.boolean  "IsVisible"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "ServiceBase", ["CalendarId"], name: "fndx_for_cascaderelationship_calendar_services"
  add_index "ServiceBase", ["IsSchedulable", "Name", "Duration"], name: "ndx_SystemManaged_Service"
  add_index "ServiceBase", ["ResourceSpecId"], name: "ndx_for_cascaderelationship_resource_spec_services"
  add_index "ServiceBase", ["StrategyId"], name: "ndx_for_cascaderelationship_plugin_type_service"
  add_index "ServiceBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ServiceContractContacts", primary_key: "ServiceContractContactId", force: true do |t|
    t.uuid    "ContractId",    null: false
    t.uuid    "ContactId",     null: false
    t.integer "ServiceLevel"
    t.binary  "VersionNumber"
  end

  add_index "ServiceContractContacts", ["ContactId"], name: "ndx_for_cascaderelationship_contact_serviced_by_contract"
  add_index "ServiceContractContacts", ["ContractId", "ContactId"], name: "UQ_ServiceContractContacts", unique: true
  add_index "ServiceContractContacts", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ServiceEndpointBase", primary_key: "SolutionId", force: true do |t|
    t.integer  "Contract",                            null: false
    t.integer  "UserClaim",                           null: false
    t.integer  "ConnectionMode",                      null: false
    t.text     "Description"
    t.uuid     "ServiceEndpointIdUnique",             null: false
    t.integer  "ComponentState",                      null: false
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "ModifiedOn"
    t.string   "Name",                    limit: 256, null: false
    t.boolean  "IsCustomizable",                      null: false
    t.uuid     "ServiceEndpointId",                   null: false
    t.uuid     "OrganizationId",                      null: false
    t.datetime "CreatedOn"
    t.boolean  "IsManaged",                           null: false
    t.uuid     "SupportingSolutionId"
    t.string   "Path",                    limit: 160, null: false
    t.uuid     "ModifiedBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.datetime "OverwriteTime",                       null: false
    t.uuid     "CreatedBy"
    t.string   "SolutionNamespace",       limit: 160, null: false
  end

  add_index "ServiceEndpointBase", ["ServiceEndpointIdUnique"], name: "UQ_ServiceEndpointBase_ServiceEndpointIdUnique", unique: true

  create_table "SharePointDocumentLocationBase", primary_key: "SharePointDocumentLocationId", force: true do |t|
    t.binary   "VersionNumber"
    t.integer  "StateCode",                                                           null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "TimeZoneRuleVersionNumber"
    t.text     "Description"
    t.uuid     "TransactionCurrencyId"
    t.string   "RelativeUrl"
    t.string   "AbsoluteURL",                  limit: 2000
    t.string   "Name",                         limit: 160,                            null: false
    t.uuid     "CreatedBy"
    t.integer  "StatusCode"
    t.uuid     "OwnerId",                                                             null: false
    t.uuid     "RegardingObjectId"
    t.datetime "ModifiedOn"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "SiteCollectionId"
    t.uuid     "ParentSiteOrLocation"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "ModifiedBy"
    t.integer  "ImportSequenceNumber"
    t.decimal  "ExchangeRate",                              precision: 23, scale: 10
    t.datetime "CreatedOn"
    t.datetime "OverriddenCreatedOn"
    t.string   "ParentSiteOrLocationName",     limit: 4000
    t.integer  "ParentSiteOrLocationTypeCode"
    t.integer  "OwnerIdType",                                                         null: false
    t.integer  "RegardingObjectTypeCode"
    t.string   "RegardingObjectIdName",        limit: 4000
    t.string   "RegardingObjectIdYomiName",    limit: 4000
  end

  add_index "SharePointDocumentLocationBase", ["Name"], name: "ndx_SystemManaged_SharePointDocumentLocation"
  add_index "SharePointDocumentLocationBase", ["OwnerId"], name: "ndx_Security"
  add_index "SharePointDocumentLocationBase", ["OwningBusinessUnit"], name: "ndx_for_cascaderelationship_business_unit_sharepointdocumentlocations"
  add_index "SharePointDocumentLocationBase", ["ParentSiteOrLocation", "ParentSiteOrLocationTypeCode"], name: "ndx_for_cascaderelationship_sharepointdocumentlocation_parent_sharepointsite"
  add_index "SharePointDocumentLocationBase", ["RegardingObjectId", "RegardingObjectTypeCode"], name: "ndx_RegardingObjectId_SharePointDocumentLocation"
  add_index "SharePointDocumentLocationBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "SharePointDocumentLocationBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber"

  create_table "SharePointDocumentLocationExtensionBase", primary_key: "SharePointDocumentLocationId", force: true do |t|
  end

  create_table "SharePointSiteBase", primary_key: "SharePointSiteId", force: true do |t|
    t.boolean  "IsGridPresent"
    t.uuid     "CreatedBy"
    t.string   "AbsoluteURL",               limit: 2000
    t.uuid     "TransactionCurrencyId"
    t.datetime "ModifiedOn"
    t.text     "Description"
    t.integer  "FolderStructureEntity"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "StatusCode"
    t.datetime "CreatedOn"
    t.integer  "ValidationStatus"
    t.string   "RelativeUrl",               limit: 160
    t.uuid     "OwnerId",                                                          null: false
    t.datetime "OverriddenCreatedOn"
    t.uuid     "SiteCollectionId"
    t.decimal  "ExchangeRate",                           precision: 23, scale: 10
    t.integer  "ImportSequenceNumber"
    t.boolean  "IsDefault"
    t.integer  "TimeZoneRuleVersionNumber"
    t.uuid     "OwningBusinessUnit"
    t.integer  "StateCode",                                                        null: false
    t.integer  "ValidationStatusErrorCode"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "Name",                      limit: 160,                            null: false
    t.binary   "VersionNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "LastValidated"
    t.uuid     "ParentSite"
    t.uuid     "ModifiedBy"
    t.integer  "OwnerIdType",                                                      null: false
    t.integer  "ParentSiteObjectTypeCode"
    t.string   "ParentSiteName",            limit: 4000
  end

  add_index "SharePointSiteBase", ["Name"], name: "ndx_SystemManaged_SharePointSite"
  add_index "SharePointSiteBase", ["OwnerId"], name: "ndx_Security"
  add_index "SharePointSiteBase", ["OwningBusinessUnit"], name: "ndx_for_cascaderelationship_business_unit_sharepointsites"
  add_index "SharePointSiteBase", ["ParentSite", "ParentSiteObjectTypeCode"], name: "ndx_for_cascaderelationship_sharepointsite_parentsite_sharepointsite"
  add_index "SharePointSiteBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "SharePointSiteBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SharePointSiteExtensionBase", primary_key: "SharePointSiteId", force: true do |t|
  end

  create_table "SiteBase", primary_key: "SiteId", force: true do |t|
    t.binary   "VersionNumber"
    t.uuid     "OrganizationId",                   null: false
    t.string   "EMailAddress",         limit: 100
    t.string   "Name",                 limit: 160, null: false
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.integer  "TimeZoneCode",                     null: false
    t.uuid     "CreatedBy"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SiteBase", ["Name"], name: "ndx_SystemManaged_Site"
  add_index "SiteBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SiteMapBase", primary_key: "OverwriteTime", force: true do |t|
    t.binary  "VersionNumber"
    t.text    "SiteMapXmlManaged"
    t.uuid    "SolutionId",           null: false
    t.uuid    "SiteMapIdUnique",      null: false
    t.text    "SiteMapXml"
    t.boolean "IsManaged",            null: false
    t.uuid    "SiteMapId",            null: false
    t.integer "ComponentState",       null: false
    t.uuid    "SupportingSolutionId"
    t.uuid    "OrganizationId",       null: false
  end

  add_index "SiteMapBase", ["SiteMapIdUnique"], name: "UQ_SiteMapBase_SiteMapIdUnique", unique: true
  add_index "SiteMapBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SolutionAwareEntitiesForUpgrade", id: false, force: true do |t|
    t.uuid "EntityId", null: false
  end

  create_table "SolutionBase", primary_key: "SolutionId", force: true do |t|
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.string   "PinpointAssetId"
    t.string   "UniqueName",                    limit: 50,   null: false
    t.string   "Description",                   limit: 2000
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OrganizationId",                             null: false
    t.integer  "PinpointSolutionId",            limit: 8
    t.string   "PinpointSolutionDefaultLocale", limit: 16
    t.string   "FriendlyName",                  limit: 256,  null: false
    t.uuid     "CreatedBy"
    t.boolean  "IsVisible"
    t.string   "Version",                       limit: 256,  null: false
    t.uuid     "ConfigurationPageId"
    t.boolean  "IsManaged"
    t.datetime "CreatedOn"
    t.binary   "VersionNumber"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "PublisherId",                                null: false
    t.datetime "InstalledOn"
  end

  add_index "SolutionBase", ["IsVisible", "InstalledOn"], name: "ndx_SystemManaged_Solution"
  add_index "SolutionBase", ["UniqueName"], name: "ndx_UniqueName", unique: true
  add_index "SolutionBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SolutionComponentBase", primary_key: "SolutionComponentId", force: true do |t|
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ObjectId"
    t.boolean  "IsMetadata"
    t.uuid     "ModifiedBy"
    t.uuid     "SolutionId"
    t.datetime "CreatedOn"
    t.binary   "VersionNumber"
    t.integer  "ComponentType",      null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "SolutionComponentBase", ["SolutionId", "ComponentType", "ObjectId"], name: "ndx_Solution_Component"
  add_index "SolutionComponentBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "StatusMapBase", primary_key: "StatusMapId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.uuid    "OrganizationId", null: false
    t.integer "State",          null: false
    t.integer "Status",         null: false
    t.boolean "IsDefault"
    t.binary  "VersionNumber"
  end

  add_index "StatusMapBase", ["ObjectTypeCode", "State", "Status"], name: "UQ_StatusMap", unique: true
  add_index "StatusMapBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "StoredProcedureCatalog", id: false, force: true do |t|
  end

  create_table "StringMapBase", primary_key: "StringMapId", force: true do |t|
    t.integer "ObjectTypeCode",              null: false
    t.string  "AttributeName",  limit: 100,  null: false
    t.integer "AttributeValue",              null: false
    t.integer "LangId",                      null: false
    t.uuid    "OrganizationId",              null: false
    t.string  "Value",          limit: 4000
    t.integer "DisplayOrder"
    t.binary  "VersionNumber"
  end

  add_index "StringMapBase", ["LangId", "ObjectTypeCode", "AttributeName", "AttributeValue"], name: "ndx_StringMap_FilteredViews", unique: true
  add_index "StringMapBase", ["ObjectTypeCode", "AttributeName", "AttributeValue", "LangId", "OrganizationId"], name: "UQ_StringMap", unique: true
  add_index "StringMapBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SubjectBase", primary_key: "SubjectId", force: true do |t|
    t.string   "Title",                limit: 500
    t.uuid     "OrganizationId",                   null: false
    t.text     "Description"
    t.uuid     "ParentSubject"
    t.integer  "FeatureMask"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "SubjectBase", ["ParentSubject"], name: "fndx_for_cascaderelationship_subject_parent_subject"
  add_index "SubjectBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "Subscription", primary_key: "SubscriptionId", force: true do |t|
    t.uuid     "SystemUserId",                           null: false
    t.string   "MachineName",                limit: 200
    t.datetime "LastSyncStartedOn"
    t.string   "SyncEntryTableName",         limit: 128, null: false
    t.integer  "SubscriptionType"
    t.datetime "CompletedSyncStartedOn"
    t.boolean  "ReInitialize",                           null: false
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "CompletedSyncVersionNumber", limit: 8
  end

  create_table "SubscriptionClients", primary_key: "SubscriptionClientId", force: true do |t|
    t.uuid    "ClientId",                    null: false
    t.string  "MachineName",     limit: 200
    t.uuid    "SubscriptionId",              null: false
    t.boolean "IsPrimaryClient"
  end

  add_index "SubscriptionClients", ["SubscriptionId", "ClientId", "IsPrimaryClient", "MachineName"], name: "ndx_Cover"
  add_index "SubscriptionClients", ["SubscriptionId", "MachineName"], name: "UQ_SubscriptionClients", unique: true

  create_table "SubscriptionManuallyTrackedObject", primary_key: "SubscriptionManuallyTrackedObjectId", force: true do |t|
    t.uuid    "SubscriptionId", null: false
    t.uuid    "ObjectId",       null: false
    t.boolean "Track",          null: false
    t.integer "ObjectTypeCode"
  end

  add_index "SubscriptionManuallyTrackedObject", ["ObjectId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_contact_subscriptionmanuallytrackedobject"
  add_index "SubscriptionManuallyTrackedObject", ["SubscriptionId", "ObjectTypeCode", "ObjectId"], name: "ndx_SubscriptionManuallyTrackedObject"

  create_table "SubscriptionStatistics_00aac3fa617ce3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_00f5c60a86a8e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_00faaece82dee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0186da6336cfe4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_027db31cc5e8e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_02ac65f67fd1e4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_034c81674240e511a73c766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0387d45173e9e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_040e95993bb4e311abd096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_04d14b7bfa93e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0694a3126271e211bf9c96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0a59aa6772e9e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0af0e13d82ede211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0c1e3a11bccee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0c410aa8172ae311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0cf0e13d82ede211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0d477c7c9025e5119eaf766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_0d652143a731e3119e1296147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_10029fddeaf2e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_11f43f6841dfe211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_13dbdb5ae53fe3119e1296147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_15cf51cc3fc2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1671d9308fb4e511b83f766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_182a3e1b37eae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_18308835e4e7e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1903e80990f4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1b03e80990f4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1c413b6064f4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1d5e9a84c13ae5118553766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1d6df579a98de3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1de1a7c146b3e211894b96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_1e0d5a3860eae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_20926e24c607e611bba2766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_20936ef7d69be211b27896147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_217e3ca8b1c9e4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_227b2f740e40e3119e1296147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_23d06bd4fbc2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_251519e63fc2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_2647c318a059e211a63096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_281519e63fc2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_2987692690f4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_29aec2cf84fde411bc1f96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_2aa1443fe5cee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_30ede0b53beae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_31936d966fa5e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_3380ace772e9e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_33c4a96e3ceae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_33d12ab14687e211b27896147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_349a0c8964f4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_35f76df93fc2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_3680ace772e9e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_36bc2d4f81dee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_3926909ef4efe311b1b096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_394c1bfe83ede211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_39e7dee976dbe3118fd996147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_3a267ec173e9e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_3a776b8d7adbe3118fd996147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_3ace5990d26be211bf9c96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_3fd13c47c1efe211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_405dc57d83dee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_41655d7c6647e511a73c766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_41be6de463b2e211894b96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_41e010609ae8e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_432dffc09248e31181ea96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_441c726360c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_45a4835340c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_4727b6a5cd97e211b27896147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_48548cbf42eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_49e0a2f35d21e311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_4a3077193061e511896b766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_4a6a4fb373e9e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_4a7237808ff4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_4cc122b0dd6ae611bd08766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_503309da4ab6e611b21b766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_509f964485dee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_51010972e9f2e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_5186d7544e9ae3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_51bc68c67aeae311b1b096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_533e74a81ad5e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_5448cb400aa3e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_549d68a25345e311ade596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_58798ce2dcbbe211971a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_59f148af1a68e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_5ab98cd581ede211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_5b9a30745bf5e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_5bc56995f6f3e411bc1f96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_5fc15cfbaddee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_6048a83dfaf2e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_610f39583b13e411956096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_61a7c3e3c7e8e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_63693dd533aee4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_663abce8def8e411bc1f96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_6652180b338fe3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_67def02425dde3118fd996147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_6824019214f3e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_69e114e5c9ade211894b96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_6a10a9f543f5e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7032a8c3e8f2e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_70411e04be48e411b07e96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_70853afb83dee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_711e4d38d29be211b27896147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_73853afb83dee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7814f8f9e3e7e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_781e4647e4e7e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_79e126d56cc5e311abd096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7a58c0c945eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7acbf37c8303e311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7ae8f1125e3ae3119e1296147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7c28a3df71ede211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7edd221f94e2e21180d396147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_7ff28ec28bdee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_801f3ad35deee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_802e262bedf9e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_80b81e43332ce311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_821f7b5dbfa5e611b21b766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_841a803240c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_867b167071a8e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_877410cfa88ee3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_89eb2a2bf160e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_8c839fbddd6ae611bd08766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_8e0f2d505789e511a1e8766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_8ea680431c6ce41195d396147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_90f0fcf9c507e611bba2766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_91a21265bfa5e611b21b766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_91f1c1c188a4e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_921659bbe8eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_94fefd3c04c1e4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_95342bd32acde211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_98b8ee879f3fe5118553766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_9b3894c9f561e511896b766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_9df98ecc617ce3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_9e5c6e4623ebe211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_9f59e8a93beae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_a04b7e332cade611b21b766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_a18c1ca1e9f2e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_a7e143f83beae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_a898afa5d82ce611a434766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_a91104ddf0efe211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_aa03c3afac59e211a63096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_aa70caafe851e31181ea96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_abe754b1f4f7e411bc1f96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_ad2e914120aae3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_ae0c9a49edf9e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_af58464ed9fde211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_af8fc11997ffe211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b000476a5edce4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b018bc0602f3e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b085fa1201ebe211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b1ef55e14b40e511a73c766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b4b97b7258c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b53e6e83dc8de3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b5a3362240c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b72d56ef8566e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b883789842eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b89eecb7e4e7e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b8a7028142eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_b8f71b6bf1a9e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_bbb88479e0b6e4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_bc83098097c1e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_bf3c24e19dc9e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c13e866ae9f2e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c1df9ec38566e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c402870345c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c4e650da800be511bc1f96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c59f34c7973ae3119e1296147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c5fe37165e21e311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c894a5a48bf4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c942b0e1cdf4e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_c94508afe3e7e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_ca4f1b6981ede211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_cb6eb026e3cee211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_ce69fc258deae311b1b096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_cf6b86c93beae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_d020724444eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_d0ecb583b7efe211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_d15e000404c1e4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_d2c874eb2a5ce31198f996147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_d52386b643c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_d7edf27542eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_da133035ac59e211a63096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_daad09f9ea7be511901f766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_de8e2141a3a3e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_df6dae94d9c3e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_dfc9345bd397e211b27896147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_dfee765fe8c3e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_e0000df1dcbbe211971a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_e18b70c9c9f2e211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_e30bc996c571e511901f766cc8970d42", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_e46845f939eae211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_e4a83453242ae311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_e59e2adb3fc2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_e9e4f7e208e8e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_edfb8669ff16e311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_ef1a1913c9dae3118fd996147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_efecf4a7409ee3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f25a8174a3a3e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f276326c77d1e4118b3596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f2c3f58ac4e8e211884d96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f3f5a8d5f9c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f426af2655c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f4e7837a792be311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f73b4d52bb09e311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f7ca38e3594ee411b07e96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f895807e48eee211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f8f1af1040c2e211957a96147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_f95af40d461ae311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_fabf4f49ac59e211a63096147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_fbe54eb10322e311a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_fd871aa34f93e3118eb696147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_fed608ab9145e311ade596147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_ff3923c0d9fde211a9b796147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionStatistics_ff82cdb10a31e3119e1296147297305b", primary_key: "ObjectTypeCode", force: true do |t|
    t.boolean "FullSyncRequired", null: false
  end

  create_table "SubscriptionSyncInfo", primary_key: "SubscriptionSyncInfoId", force: true do |t|
    t.datetime "EndTime"
    t.integer  "DeleteObjectCount"
    t.uuid     "SubscriptionId"
    t.boolean  "SyncResult"
    t.datetime "StartTime"
    t.integer  "DataSize"
    t.integer  "InsertObjectCount"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "ClientVersion",             limit: 20
  end

  add_index "SubscriptionSyncInfo", ["StartTime"], name: "fndx_for_syncinfo_cleanup"
  add_index "SubscriptionSyncInfo", ["SubscriptionId"], name: "fndx_for_subscription_lookup"

  create_table "SubscriptionTrackingDeletedObject", primary_key: "TimeStamp", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.uuid    "ObjectId",       null: false
  end

  add_index "SubscriptionTrackingDeletedObject", ["ObjectTypeCode", "ObjectId"], name: "ndx_SubscriptionTrackingDeletedObjects"

  create_table "SyncEntry_00aac3fa617ce3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_00aac3fa617ce3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_00aac3fa617ce3118eb696147297305b"

  create_table "SyncEntry_00f5c60a86a8e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_00f5c60a86a8e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_00f5c60a86a8e3118eb696147297305b"

  create_table "SyncEntry_00faaece82dee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_00faaece82dee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_00faaece82dee211957a96147297305b"

  create_table "SyncEntry_0186da6336cfe4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0186da6336cfe4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0186da6336cfe4118b3596147297305b"

  create_table "SyncEntry_027db31cc5e8e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_027db31cc5e8e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_027db31cc5e8e211884d96147297305b"

  create_table "SyncEntry_02ac65f67fd1e4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_02ac65f67fd1e4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_02ac65f67fd1e4118b3596147297305b"

  create_table "SyncEntry_034c81674240e511a73c766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_034c81674240e511a73c766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_034c81674240e511a73c766cc8970d42"

  create_table "SyncEntry_0387d45173e9e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0387d45173e9e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0387d45173e9e211884d96147297305b"

  create_table "SyncEntry_040e95993bb4e311abd096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_040e95993bb4e311abd096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_040e95993bb4e311abd096147297305b"

  create_table "SyncEntry_04d14b7bfa93e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_04d14b7bfa93e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_04d14b7bfa93e3118eb696147297305b"

  create_table "SyncEntry_0694a3126271e211bf9c96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0694a3126271e211bf9c96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0694a3126271e211bf9c96147297305b"

  create_table "SyncEntry_0a59aa6772e9e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0a59aa6772e9e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0a59aa6772e9e211884d96147297305b"

  create_table "SyncEntry_0af0e13d82ede211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0af0e13d82ede211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0af0e13d82ede211884d96147297305b"

  create_table "SyncEntry_0c1e3a11bccee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0c1e3a11bccee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0c1e3a11bccee211957a96147297305b"

  create_table "SyncEntry_0c410aa8172ae311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0c410aa8172ae311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0c410aa8172ae311a9b796147297305b"

  create_table "SyncEntry_0cf0e13d82ede211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0cf0e13d82ede211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0cf0e13d82ede211884d96147297305b"

  create_table "SyncEntry_0d477c7c9025e5119eaf766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0d477c7c9025e5119eaf766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0d477c7c9025e5119eaf766cc8970d42"

  create_table "SyncEntry_0d652143a731e3119e1296147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_0d652143a731e3119e1296147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_0d652143a731e3119e1296147297305b"

  create_table "SyncEntry_10029fddeaf2e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_10029fddeaf2e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_10029fddeaf2e211a9b796147297305b"

  create_table "SyncEntry_11f43f6841dfe211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_11f43f6841dfe211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_11f43f6841dfe211957a96147297305b"

  create_table "SyncEntry_13dbdb5ae53fe3119e1296147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_13dbdb5ae53fe3119e1296147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_13dbdb5ae53fe3119e1296147297305b"

  create_table "SyncEntry_15cf51cc3fc2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_15cf51cc3fc2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_15cf51cc3fc2e211957a96147297305b"

  create_table "SyncEntry_1671d9308fb4e511b83f766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1671d9308fb4e511b83f766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1671d9308fb4e511b83f766cc8970d42"

  create_table "SyncEntry_182a3e1b37eae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_182a3e1b37eae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_182a3e1b37eae211884d96147297305b"

  create_table "SyncEntry_18308835e4e7e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_18308835e4e7e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_18308835e4e7e211884d96147297305b"

  create_table "SyncEntry_1903e80990f4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1903e80990f4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1903e80990f4e211a9b796147297305b"

  create_table "SyncEntry_1b03e80990f4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1b03e80990f4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1b03e80990f4e211a9b796147297305b"

  create_table "SyncEntry_1c413b6064f4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1c413b6064f4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1c413b6064f4e211a9b796147297305b"

  create_table "SyncEntry_1d5e9a84c13ae5118553766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1d5e9a84c13ae5118553766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1d5e9a84c13ae5118553766cc8970d42"

  create_table "SyncEntry_1d6df579a98de3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1d6df579a98de3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1d6df579a98de3118eb696147297305b"

  create_table "SyncEntry_1de1a7c146b3e211894b96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1de1a7c146b3e211894b96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1de1a7c146b3e211894b96147297305b"

  create_table "SyncEntry_1e0d5a3860eae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_1e0d5a3860eae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_1e0d5a3860eae211884d96147297305b"

  create_table "SyncEntry_20926e24c607e611bba2766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_20926e24c607e611bba2766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_20926e24c607e611bba2766cc8970d42"

  create_table "SyncEntry_20936ef7d69be211b27896147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_20936ef7d69be211b27896147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_20936ef7d69be211b27896147297305b"

  create_table "SyncEntry_217e3ca8b1c9e4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_217e3ca8b1c9e4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_217e3ca8b1c9e4118b3596147297305b"

  create_table "SyncEntry_227b2f740e40e3119e1296147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_227b2f740e40e3119e1296147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_227b2f740e40e3119e1296147297305b"

  create_table "SyncEntry_23d06bd4fbc2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_23d06bd4fbc2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_23d06bd4fbc2e211957a96147297305b"

  create_table "SyncEntry_251519e63fc2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_251519e63fc2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_251519e63fc2e211957a96147297305b"

  create_table "SyncEntry_2647c318a059e211a63096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_2647c318a059e211a63096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_2647c318a059e211a63096147297305b"

  create_table "SyncEntry_281519e63fc2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_281519e63fc2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_281519e63fc2e211957a96147297305b"

  create_table "SyncEntry_2987692690f4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_2987692690f4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_2987692690f4e211a9b796147297305b"

  create_table "SyncEntry_29aec2cf84fde411bc1f96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_29aec2cf84fde411bc1f96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_29aec2cf84fde411bc1f96147297305b"

  create_table "SyncEntry_2aa1443fe5cee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_2aa1443fe5cee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_2aa1443fe5cee211957a96147297305b"

  create_table "SyncEntry_30ede0b53beae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_30ede0b53beae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_30ede0b53beae211884d96147297305b"

  create_table "SyncEntry_31936d966fa5e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_31936d966fa5e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_31936d966fa5e3118eb696147297305b"

  create_table "SyncEntry_3380ace772e9e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_3380ace772e9e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_3380ace772e9e211884d96147297305b"

  create_table "SyncEntry_33c4a96e3ceae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_33c4a96e3ceae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_33c4a96e3ceae211884d96147297305b"

  create_table "SyncEntry_33d12ab14687e211b27896147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_33d12ab14687e211b27896147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_33d12ab14687e211b27896147297305b"

  create_table "SyncEntry_349a0c8964f4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_349a0c8964f4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_349a0c8964f4e211a9b796147297305b"

  create_table "SyncEntry_35f76df93fc2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_35f76df93fc2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_35f76df93fc2e211957a96147297305b"

  create_table "SyncEntry_3680ace772e9e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_3680ace772e9e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_3680ace772e9e211884d96147297305b"

  create_table "SyncEntry_36bc2d4f81dee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_36bc2d4f81dee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_36bc2d4f81dee211957a96147297305b"

  create_table "SyncEntry_3926909ef4efe311b1b096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_3926909ef4efe311b1b096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_3926909ef4efe311b1b096147297305b"

  create_table "SyncEntry_394c1bfe83ede211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_394c1bfe83ede211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_394c1bfe83ede211884d96147297305b"

  create_table "SyncEntry_39e7dee976dbe3118fd996147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_39e7dee976dbe3118fd996147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_39e7dee976dbe3118fd996147297305b"

  create_table "SyncEntry_3a267ec173e9e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_3a267ec173e9e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_3a267ec173e9e211884d96147297305b"

  create_table "SyncEntry_3a776b8d7adbe3118fd996147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_3a776b8d7adbe3118fd996147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_3a776b8d7adbe3118fd996147297305b"

  create_table "SyncEntry_3ace5990d26be211bf9c96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_3ace5990d26be211bf9c96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_3ace5990d26be211bf9c96147297305b"

  create_table "SyncEntry_3fd13c47c1efe211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_3fd13c47c1efe211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_3fd13c47c1efe211a9b796147297305b"

  create_table "SyncEntry_405dc57d83dee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_405dc57d83dee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_405dc57d83dee211957a96147297305b"

  create_table "SyncEntry_41655d7c6647e511a73c766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_41655d7c6647e511a73c766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_41655d7c6647e511a73c766cc8970d42"

  create_table "SyncEntry_41be6de463b2e211894b96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_41be6de463b2e211894b96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_41be6de463b2e211894b96147297305b"

  create_table "SyncEntry_41e010609ae8e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_41e010609ae8e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_41e010609ae8e211884d96147297305b"

  create_table "SyncEntry_432dffc09248e31181ea96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_432dffc09248e31181ea96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_432dffc09248e31181ea96147297305b"

  create_table "SyncEntry_441c726360c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_441c726360c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_441c726360c2e211957a96147297305b"

  create_table "SyncEntry_45a4835340c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_45a4835340c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_45a4835340c2e211957a96147297305b"

  create_table "SyncEntry_4727b6a5cd97e211b27896147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_4727b6a5cd97e211b27896147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_4727b6a5cd97e211b27896147297305b"

  create_table "SyncEntry_48548cbf42eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_48548cbf42eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_48548cbf42eee211a9b796147297305b"

  create_table "SyncEntry_49e0a2f35d21e311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_49e0a2f35d21e311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_49e0a2f35d21e311a9b796147297305b"

  create_table "SyncEntry_4a3077193061e511896b766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_4a3077193061e511896b766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_4a3077193061e511896b766cc8970d42"

  create_table "SyncEntry_4a6a4fb373e9e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_4a6a4fb373e9e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_4a6a4fb373e9e211884d96147297305b"

  create_table "SyncEntry_4a7237808ff4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_4a7237808ff4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_4a7237808ff4e211a9b796147297305b"

  create_table "SyncEntry_4cc122b0dd6ae611bd08766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_4cc122b0dd6ae611bd08766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_4cc122b0dd6ae611bd08766cc8970d42"

  create_table "SyncEntry_503309da4ab6e611b21b766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_503309da4ab6e611b21b766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_503309da4ab6e611b21b766cc8970d42"

  create_table "SyncEntry_509f964485dee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_509f964485dee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_509f964485dee211957a96147297305b"

  create_table "SyncEntry_51010972e9f2e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_51010972e9f2e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_51010972e9f2e211a9b796147297305b"

  create_table "SyncEntry_5186d7544e9ae3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_5186d7544e9ae3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_5186d7544e9ae3118eb696147297305b"

  create_table "SyncEntry_51bc68c67aeae311b1b096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_51bc68c67aeae311b1b096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_51bc68c67aeae311b1b096147297305b"

  create_table "SyncEntry_533e74a81ad5e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_533e74a81ad5e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_533e74a81ad5e211957a96147297305b"

  create_table "SyncEntry_5448cb400aa3e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_5448cb400aa3e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_5448cb400aa3e3118eb696147297305b"

  create_table "SyncEntry_549d68a25345e311ade596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_549d68a25345e311ade596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_549d68a25345e311ade596147297305b"

  create_table "SyncEntry_58798ce2dcbbe211971a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_58798ce2dcbbe211971a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_58798ce2dcbbe211971a96147297305b"

  create_table "SyncEntry_59f148af1a68e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_59f148af1a68e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_59f148af1a68e3118eb696147297305b"

  create_table "SyncEntry_5ab98cd581ede211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_5ab98cd581ede211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_5ab98cd581ede211884d96147297305b"

  create_table "SyncEntry_5b9a30745bf5e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_5b9a30745bf5e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_5b9a30745bf5e211a9b796147297305b"

  create_table "SyncEntry_5bc56995f6f3e411bc1f96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_5bc56995f6f3e411bc1f96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_5bc56995f6f3e411bc1f96147297305b"

  create_table "SyncEntry_5fc15cfbaddee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_5fc15cfbaddee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_5fc15cfbaddee211957a96147297305b"

  create_table "SyncEntry_6048a83dfaf2e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_6048a83dfaf2e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_6048a83dfaf2e211a9b796147297305b"

  create_table "SyncEntry_610f39583b13e411956096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_610f39583b13e411956096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_610f39583b13e411956096147297305b"

  create_table "SyncEntry_61a7c3e3c7e8e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_61a7c3e3c7e8e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_61a7c3e3c7e8e211884d96147297305b"

  create_table "SyncEntry_63693dd533aee4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_63693dd533aee4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_63693dd533aee4118b3596147297305b"

  create_table "SyncEntry_663abce8def8e411bc1f96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_663abce8def8e411bc1f96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_663abce8def8e411bc1f96147297305b"

  create_table "SyncEntry_6652180b338fe3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_6652180b338fe3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_6652180b338fe3118eb696147297305b"

  create_table "SyncEntry_67def02425dde3118fd996147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_67def02425dde3118fd996147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_67def02425dde3118fd996147297305b"

  create_table "SyncEntry_6824019214f3e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_6824019214f3e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_6824019214f3e211a9b796147297305b"

  create_table "SyncEntry_69e114e5c9ade211894b96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_69e114e5c9ade211894b96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_69e114e5c9ade211894b96147297305b"

  create_table "SyncEntry_6a10a9f543f5e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_6a10a9f543f5e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_6a10a9f543f5e211a9b796147297305b"

  create_table "SyncEntry_7032a8c3e8f2e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7032a8c3e8f2e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7032a8c3e8f2e211a9b796147297305b"

  create_table "SyncEntry_70411e04be48e411b07e96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_70411e04be48e411b07e96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_70411e04be48e411b07e96147297305b"

  create_table "SyncEntry_70853afb83dee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_70853afb83dee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_70853afb83dee211957a96147297305b"

  create_table "SyncEntry_711e4d38d29be211b27896147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_711e4d38d29be211b27896147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_711e4d38d29be211b27896147297305b"

  create_table "SyncEntry_73853afb83dee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_73853afb83dee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_73853afb83dee211957a96147297305b"

  create_table "SyncEntry_7814f8f9e3e7e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7814f8f9e3e7e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7814f8f9e3e7e211884d96147297305b"

  create_table "SyncEntry_781e4647e4e7e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_781e4647e4e7e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_781e4647e4e7e211884d96147297305b"

  create_table "SyncEntry_79e126d56cc5e311abd096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_79e126d56cc5e311abd096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_79e126d56cc5e311abd096147297305b"

  create_table "SyncEntry_7a58c0c945eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7a58c0c945eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7a58c0c945eee211a9b796147297305b"

  create_table "SyncEntry_7acbf37c8303e311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7acbf37c8303e311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7acbf37c8303e311a9b796147297305b"

  create_table "SyncEntry_7ae8f1125e3ae3119e1296147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7ae8f1125e3ae3119e1296147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7ae8f1125e3ae3119e1296147297305b"

  create_table "SyncEntry_7c28a3df71ede211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7c28a3df71ede211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7c28a3df71ede211884d96147297305b"

  create_table "SyncEntry_7edd221f94e2e21180d396147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7edd221f94e2e21180d396147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7edd221f94e2e21180d396147297305b"

  create_table "SyncEntry_7ff28ec28bdee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_7ff28ec28bdee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_7ff28ec28bdee211957a96147297305b"

  create_table "SyncEntry_801f3ad35deee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_801f3ad35deee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_801f3ad35deee211a9b796147297305b"

  create_table "SyncEntry_802e262bedf9e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_802e262bedf9e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_802e262bedf9e211a9b796147297305b"

  create_table "SyncEntry_80b81e43332ce311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_80b81e43332ce311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_80b81e43332ce311a9b796147297305b"

  create_table "SyncEntry_821f7b5dbfa5e611b21b766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_821f7b5dbfa5e611b21b766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_821f7b5dbfa5e611b21b766cc8970d42"

  create_table "SyncEntry_841a803240c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_841a803240c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_841a803240c2e211957a96147297305b"

  create_table "SyncEntry_867b167071a8e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_867b167071a8e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_867b167071a8e3118eb696147297305b"

  create_table "SyncEntry_877410cfa88ee3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_877410cfa88ee3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_877410cfa88ee3118eb696147297305b"

  create_table "SyncEntry_89eb2a2bf160e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_89eb2a2bf160e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_89eb2a2bf160e3118eb696147297305b"

  create_table "SyncEntry_8c839fbddd6ae611bd08766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_8c839fbddd6ae611bd08766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_8c839fbddd6ae611bd08766cc8970d42"

  create_table "SyncEntry_8e0f2d505789e511a1e8766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_8e0f2d505789e511a1e8766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_8e0f2d505789e511a1e8766cc8970d42"

  create_table "SyncEntry_8ea680431c6ce41195d396147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_8ea680431c6ce41195d396147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_8ea680431c6ce41195d396147297305b"

  create_table "SyncEntry_90f0fcf9c507e611bba2766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_90f0fcf9c507e611bba2766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_90f0fcf9c507e611bba2766cc8970d42"

  create_table "SyncEntry_91a21265bfa5e611b21b766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_91a21265bfa5e611b21b766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_91a21265bfa5e611b21b766cc8970d42"

  create_table "SyncEntry_91f1c1c188a4e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_91f1c1c188a4e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_91f1c1c188a4e3118eb696147297305b"

  create_table "SyncEntry_921659bbe8eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_921659bbe8eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_921659bbe8eee211a9b796147297305b"

  create_table "SyncEntry_94fefd3c04c1e4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_94fefd3c04c1e4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_94fefd3c04c1e4118b3596147297305b"

  create_table "SyncEntry_95342bd32acde211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_95342bd32acde211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_95342bd32acde211957a96147297305b"

  create_table "SyncEntry_98b8ee879f3fe5118553766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_98b8ee879f3fe5118553766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_98b8ee879f3fe5118553766cc8970d42"

  create_table "SyncEntry_9b3894c9f561e511896b766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_9b3894c9f561e511896b766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_9b3894c9f561e511896b766cc8970d42"

  create_table "SyncEntry_9df98ecc617ce3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_9df98ecc617ce3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_9df98ecc617ce3118eb696147297305b"

  create_table "SyncEntry_9e5c6e4623ebe211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_9e5c6e4623ebe211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_9e5c6e4623ebe211884d96147297305b"

  create_table "SyncEntry_9f59e8a93beae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_9f59e8a93beae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_9f59e8a93beae211884d96147297305b"

  create_table "SyncEntry_a04b7e332cade611b21b766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_a04b7e332cade611b21b766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_a04b7e332cade611b21b766cc8970d42"

  create_table "SyncEntry_a18c1ca1e9f2e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_a18c1ca1e9f2e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_a18c1ca1e9f2e211a9b796147297305b"

  create_table "SyncEntry_a7e143f83beae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_a7e143f83beae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_a7e143f83beae211884d96147297305b"

  create_table "SyncEntry_a898afa5d82ce611a434766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_a898afa5d82ce611a434766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_a898afa5d82ce611a434766cc8970d42"

  create_table "SyncEntry_a91104ddf0efe211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_a91104ddf0efe211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_a91104ddf0efe211a9b796147297305b"

  create_table "SyncEntry_aa03c3afac59e211a63096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_aa03c3afac59e211a63096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_aa03c3afac59e211a63096147297305b"

  create_table "SyncEntry_aa70caafe851e31181ea96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_aa70caafe851e31181ea96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_aa70caafe851e31181ea96147297305b"

  create_table "SyncEntry_abe754b1f4f7e411bc1f96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_abe754b1f4f7e411bc1f96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_abe754b1f4f7e411bc1f96147297305b"

  create_table "SyncEntry_ad2e914120aae3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_ad2e914120aae3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_ad2e914120aae3118eb696147297305b"

  create_table "SyncEntry_ae0c9a49edf9e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_ae0c9a49edf9e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_ae0c9a49edf9e211a9b796147297305b"

  create_table "SyncEntry_af58464ed9fde211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_af58464ed9fde211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_af58464ed9fde211a9b796147297305b"

  create_table "SyncEntry_af8fc11997ffe211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_af8fc11997ffe211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_af8fc11997ffe211a9b796147297305b"

  create_table "SyncEntry_b000476a5edce4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b000476a5edce4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b000476a5edce4118b3596147297305b"

  create_table "SyncEntry_b018bc0602f3e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b018bc0602f3e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b018bc0602f3e211a9b796147297305b"

  create_table "SyncEntry_b085fa1201ebe211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b085fa1201ebe211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b085fa1201ebe211884d96147297305b"

  create_table "SyncEntry_b1ef55e14b40e511a73c766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b1ef55e14b40e511a73c766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b1ef55e14b40e511a73c766cc8970d42"

  create_table "SyncEntry_b4b97b7258c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b4b97b7258c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b4b97b7258c2e211957a96147297305b"

  create_table "SyncEntry_b53e6e83dc8de3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b53e6e83dc8de3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b53e6e83dc8de3118eb696147297305b"

  create_table "SyncEntry_b5a3362240c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b5a3362240c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b5a3362240c2e211957a96147297305b"

  create_table "SyncEntry_b72d56ef8566e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b72d56ef8566e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b72d56ef8566e3118eb696147297305b"

  create_table "SyncEntry_b883789842eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b883789842eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b883789842eee211a9b796147297305b"

  create_table "SyncEntry_b89eecb7e4e7e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b89eecb7e4e7e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b89eecb7e4e7e211884d96147297305b"

  create_table "SyncEntry_b8a7028142eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b8a7028142eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b8a7028142eee211a9b796147297305b"

  create_table "SyncEntry_b8f71b6bf1a9e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_b8f71b6bf1a9e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_b8f71b6bf1a9e3118eb696147297305b"

  create_table "SyncEntry_bbb88479e0b6e4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_bbb88479e0b6e4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_bbb88479e0b6e4118b3596147297305b"

  create_table "SyncEntry_bc83098097c1e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_bc83098097c1e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_bc83098097c1e211957a96147297305b"

  create_table "SyncEntry_bf3c24e19dc9e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_bf3c24e19dc9e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_bf3c24e19dc9e211957a96147297305b"

  create_table "SyncEntry_c13e866ae9f2e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c13e866ae9f2e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c13e866ae9f2e211a9b796147297305b"

  create_table "SyncEntry_c1df9ec38566e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c1df9ec38566e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c1df9ec38566e3118eb696147297305b"

  create_table "SyncEntry_c402870345c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c402870345c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c402870345c2e211957a96147297305b"

  create_table "SyncEntry_c4e650da800be511bc1f96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c4e650da800be511bc1f96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c4e650da800be511bc1f96147297305b"

  create_table "SyncEntry_c59f34c7973ae3119e1296147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c59f34c7973ae3119e1296147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c59f34c7973ae3119e1296147297305b"

  create_table "SyncEntry_c5fe37165e21e311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c5fe37165e21e311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c5fe37165e21e311a9b796147297305b"

  create_table "SyncEntry_c894a5a48bf4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c894a5a48bf4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c894a5a48bf4e211a9b796147297305b"

  create_table "SyncEntry_c942b0e1cdf4e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c942b0e1cdf4e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c942b0e1cdf4e211a9b796147297305b"

  create_table "SyncEntry_c94508afe3e7e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_c94508afe3e7e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_c94508afe3e7e211884d96147297305b"

  create_table "SyncEntry_ca4f1b6981ede211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_ca4f1b6981ede211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_ca4f1b6981ede211884d96147297305b"

  create_table "SyncEntry_cb6eb026e3cee211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_cb6eb026e3cee211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_cb6eb026e3cee211957a96147297305b"

  create_table "SyncEntry_ce69fc258deae311b1b096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_ce69fc258deae311b1b096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_ce69fc258deae311b1b096147297305b"

  create_table "SyncEntry_cf6b86c93beae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_cf6b86c93beae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_cf6b86c93beae211884d96147297305b"

  create_table "SyncEntry_d020724444eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_d020724444eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_d020724444eee211a9b796147297305b"

  create_table "SyncEntry_d0ecb583b7efe211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_d0ecb583b7efe211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_d0ecb583b7efe211a9b796147297305b"

  create_table "SyncEntry_d15e000404c1e4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_d15e000404c1e4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_d15e000404c1e4118b3596147297305b"

  create_table "SyncEntry_d2c874eb2a5ce31198f996147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_d2c874eb2a5ce31198f996147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_d2c874eb2a5ce31198f996147297305b"

  create_table "SyncEntry_d52386b643c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_d52386b643c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_d52386b643c2e211957a96147297305b"

  create_table "SyncEntry_d7edf27542eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_d7edf27542eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_d7edf27542eee211a9b796147297305b"

  create_table "SyncEntry_da133035ac59e211a63096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_da133035ac59e211a63096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_da133035ac59e211a63096147297305b"

  create_table "SyncEntry_daad09f9ea7be511901f766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_daad09f9ea7be511901f766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_daad09f9ea7be511901f766cc8970d42"

  create_table "SyncEntry_de8e2141a3a3e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_de8e2141a3a3e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_de8e2141a3a3e3118eb696147297305b"

  create_table "SyncEntry_df6dae94d9c3e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_df6dae94d9c3e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_df6dae94d9c3e211957a96147297305b"

  create_table "SyncEntry_dfc9345bd397e211b27896147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_dfc9345bd397e211b27896147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_dfc9345bd397e211b27896147297305b"

  create_table "SyncEntry_dfee765fe8c3e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_dfee765fe8c3e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_dfee765fe8c3e211957a96147297305b"

  create_table "SyncEntry_e0000df1dcbbe211971a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_e0000df1dcbbe211971a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_e0000df1dcbbe211971a96147297305b"

  create_table "SyncEntry_e18b70c9c9f2e211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_e18b70c9c9f2e211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_e18b70c9c9f2e211a9b796147297305b"

  create_table "SyncEntry_e30bc996c571e511901f766cc8970d42", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_e30bc996c571e511901f766cc8970d42", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_e30bc996c571e511901f766cc8970d42"

  create_table "SyncEntry_e46845f939eae211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_e46845f939eae211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_e46845f939eae211884d96147297305b"

  create_table "SyncEntry_e4a83453242ae311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_e4a83453242ae311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_e4a83453242ae311a9b796147297305b"

  create_table "SyncEntry_e59e2adb3fc2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_e59e2adb3fc2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_e59e2adb3fc2e211957a96147297305b"

  create_table "SyncEntry_e9e4f7e208e8e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_e9e4f7e208e8e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_e9e4f7e208e8e211884d96147297305b"

  create_table "SyncEntry_edfb8669ff16e311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_edfb8669ff16e311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_edfb8669ff16e311a9b796147297305b"

  create_table "SyncEntry_ef1a1913c9dae3118fd996147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_ef1a1913c9dae3118fd996147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_ef1a1913c9dae3118fd996147297305b"

  create_table "SyncEntry_efecf4a7409ee3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_efecf4a7409ee3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_efecf4a7409ee3118eb696147297305b"

  create_table "SyncEntry_f25a8174a3a3e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f25a8174a3a3e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f25a8174a3a3e3118eb696147297305b"

  create_table "SyncEntry_f276326c77d1e4118b3596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f276326c77d1e4118b3596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f276326c77d1e4118b3596147297305b"

  create_table "SyncEntry_f2c3f58ac4e8e211884d96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f2c3f58ac4e8e211884d96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f2c3f58ac4e8e211884d96147297305b"

  create_table "SyncEntry_f3f5a8d5f9c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f3f5a8d5f9c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f3f5a8d5f9c2e211957a96147297305b"

  create_table "SyncEntry_f426af2655c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f426af2655c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f426af2655c2e211957a96147297305b"

  create_table "SyncEntry_f4e7837a792be311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f4e7837a792be311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f4e7837a792be311a9b796147297305b"

  create_table "SyncEntry_f73b4d52bb09e311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f73b4d52bb09e311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f73b4d52bb09e311a9b796147297305b"

  create_table "SyncEntry_f7ca38e3594ee411b07e96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f7ca38e3594ee411b07e96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f7ca38e3594ee411b07e96147297305b"

  create_table "SyncEntry_f895807e48eee211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f895807e48eee211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f895807e48eee211a9b796147297305b"

  create_table "SyncEntry_f8f1af1040c2e211957a96147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f8f1af1040c2e211957a96147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f8f1af1040c2e211957a96147297305b"

  create_table "SyncEntry_f95af40d461ae311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_f95af40d461ae311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_f95af40d461ae311a9b796147297305b"

  create_table "SyncEntry_fabf4f49ac59e211a63096147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_fabf4f49ac59e211a63096147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_fabf4f49ac59e211a63096147297305b"

  create_table "SyncEntry_fbe54eb10322e311a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_fbe54eb10322e311a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_fbe54eb10322e311a9b796147297305b"

  create_table "SyncEntry_fd871aa34f93e3118eb696147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_fd871aa34f93e3118eb696147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_fd871aa34f93e3118eb696147297305b"

  create_table "SyncEntry_fed608ab9145e311ade596147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_fed608ab9145e311ade596147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_fed608ab9145e311ade596147297305b"

  create_table "SyncEntry_ff3923c0d9fde211a9b796147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_ff3923c0d9fde211a9b796147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_ff3923c0d9fde211a9b796147297305b"

  create_table "SyncEntry_ff82cdb10a31e3119e1296147297305b", primary_key: "ObjectId", force: true do |t|
    t.integer "ObjectTypeCode", null: false
    t.integer "SyncState",      null: false
    t.binary  "VersionNumber",  null: false
  end

  add_index "SyncEntry_ff82cdb10a31e3119e1296147297305b", ["ObjectTypeCode"], name: "ObjectTypeCode_SyncEntry_ff82cdb10a31e3119e1296147297305b"

  create_table "SystemFormBase", primary_key: "FormId", force: true do |t|
    t.text     "FormXmlManaged"
    t.integer  "Version"
    t.datetime "PublishedOn"
    t.text     "FormXml",                          null: false
    t.boolean  "CanBeDeleted",                     null: false
    t.uuid     "OrganizationId",                   null: false
    t.integer  "ComponentState",                   null: false
    t.boolean  "IsCustomizable",                   null: false
    t.datetime "OverwriteTime",                    null: false
    t.boolean  "IsManaged",                        null: false
    t.text     "Description"
    t.string   "Name",                 limit: 100, null: false
    t.uuid     "AncestorFormId"
    t.integer  "Type"
    t.uuid     "SupportingSolutionId"
    t.uuid     "SolutionId",                       null: false
    t.binary   "VersionNumber"
    t.integer  "ObjectTypeCode"
    t.uuid     "FormIdUnique",                     null: false
    t.boolean  "IsDefault",                        null: false
  end

  add_index "SystemFormBase", ["FormIdUnique"], name: "UQ_SystemFormBase_FormIdUnique", unique: true
  add_index "SystemFormBase", ["Name", "IsManaged", "IsCustomizable"], name: "ndx_SystemManaged_SystemForm"
  add_index "SystemFormBase", ["Type", "ObjectTypeCode", "IsDefault"], name: "ndx_Type_ObjectType_Default"
  add_index "SystemFormBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SystemUserBase", primary_key: "SystemUserId", force: true do |t|
    t.uuid     "TerritoryId"
    t.uuid     "OrganizationId",                                                     null: false
    t.uuid     "BusinessUnitId",                                                     null: false
    t.uuid     "ParentSystemUserId"
    t.string   "FirstName",                   limit: 64
    t.string   "Salutation",                  limit: 20
    t.string   "MiddleName",                  limit: 50
    t.string   "LastName",                    limit: 64
    t.string   "PersonalEMailAddress",        limit: 100
    t.string   "FullName",                    limit: 200
    t.string   "NickName",                    limit: 50
    t.string   "Title",                       limit: 128
    t.string   "InternalEMailAddress",        limit: 100
    t.string   "JobTitle",                    limit: 100
    t.string   "MobileAlertEMail",            limit: 100
    t.integer  "PreferredEmailCode"
    t.string   "HomePhone",                   limit: 50
    t.string   "MobilePhone",                 limit: 64
    t.integer  "PreferredPhoneCode"
    t.integer  "PreferredAddressCode"
    t.string   "PhotoUrl",                    limit: 200
    t.string   "DomainName",                  limit: 1024,                           null: false
    t.integer  "PassportLo"
    t.datetime "CreatedOn"
    t.integer  "PassportHi"
    t.string   "DisabledReason",              limit: 500
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.string   "EmployeeId",                  limit: 100
    t.uuid     "ModifiedBy"
    t.boolean  "IsDisabled"
    t.string   "GovernmentId",                limit: 100
    t.binary   "VersionNumber"
    t.string   "Skills",                      limit: 100
    t.boolean  "DisplayInServiceViews"
    t.uuid     "CalendarId"
    t.uuid     "ActiveDirectoryGuid"
    t.boolean  "SetupUser",                                                          null: false
    t.uuid     "SiteId"
    t.string   "WindowsLiveID",               limit: 1024
    t.integer  "IncomingEmailDeliveryMethod",                                        null: false
    t.integer  "OutgoingEmailDeliveryMethod",                                        null: false
    t.integer  "ImportSequenceNumber"
    t.integer  "AccessMode",                                                         null: false
    t.integer  "InviteStatusCode"
    t.boolean  "IsActiveDirectoryUser",                                              null: false
    t.datetime "OverriddenCreatedOn"
    t.integer  "UTCConversionTimeZoneCode"
    t.integer  "TimeZoneRuleVersionNumber"
    t.string   "YomiFullName",                limit: 200
    t.string   "YomiLastName",                limit: 64
    t.string   "YomiMiddleName",              limit: 50
    t.string   "YomiFirstName",               limit: 64
    t.uuid     "CreatedOnBehalfBy"
    t.decimal  "ExchangeRate",                             precision: 23, scale: 10
    t.boolean  "IsIntegrationUser",                                                  null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "EmailRouterAccessApproval",                                          null: false
    t.boolean  "DefaultFiltersPopulated",                                            null: false
    t.integer  "CALType",                                                            null: false
    t.uuid     "QueueId"
    t.uuid     "TransactionCurrencyId"
    t.boolean  "IsSyncWithDirectory",                                                null: false
    t.boolean  "IsLicensed",                                                         null: false
    t.string   "YammerEmailAddress",          limit: 100
    t.string   "YammerUserId",                limit: 64
  end

  add_index "SystemUserBase", ["ActiveDirectoryGuid"], name: "UQ_SystemUserBaseActiveDirectoryGuid", unique: true
  add_index "SystemUserBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "SystemUserBase", ["CalendarId"], name: "fndx_for_cascaderelationship_calendar_system_users"
  add_index "SystemUserBase", ["FirstName"], name: "ndx_firstname"
  add_index "SystemUserBase", ["FullName", "YomiFullName"], name: "ndx_Cover"
  add_index "SystemUserBase", ["InternalEMailAddress"], name: "ndx_internalemailaddress"
  add_index "SystemUserBase", ["IsDisabled", "AccessMode", "Title", "CreatedOn"], name: "ndx_SystemManaged_SystemUser"
  add_index "SystemUserBase", ["LastName"], name: "ndx_lastname"
  add_index "SystemUserBase", ["ParentSystemUserId"], name: "fndx_for_cascaderelationship_user_parent_user"
  add_index "SystemUserBase", ["SiteId"], name: "fndx_for_cascaderelationship_site_system_users"
  add_index "SystemUserBase", ["TerritoryId"], name: "fndx_for_cascaderelationship_territory_system_users"
  add_index "SystemUserBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SystemUserBusinessUnitEntityMap", primary_key: "SystemUserBusinessUnitEntityMapId", force: true do |t|
    t.integer "ReadPrivilegeDepth"
    t.integer "ObjectTypeCode",     null: false
    t.uuid    "SystemUserId",       null: false
    t.uuid    "BusinessUnitId",     null: false
    t.binary  "VersionNumber"
  end

  add_index "SystemUserBusinessUnitEntityMap", ["SystemUserId", "BusinessUnitId", "ObjectTypeCode"], name: "ndx_Security", unique: true
  add_index "SystemUserBusinessUnitEntityMap", ["SystemUserId", "ObjectTypeCode"], name: "cndx_Cover"
  add_index "SystemUserBusinessUnitEntityMap", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SystemUserExtensionBase", primary_key: "SystemUserId", force: true do |t|
    t.string  "new_Skills",            limit: 1000
    t.integer "gap_CurrentGamePoints"
    t.uuid    "gap_CurrentGameId"
    t.uuid    "gap_CurrentRankId"
    t.decimal "new_BillableRate",                   precision: 23, scale: 10
    t.integer "new_Department"
  end

  create_table "SystemUserLicenses", primary_key: "SystemUserLicenseId", force: true do |t|
    t.uuid   "SystemUserId",  null: false
    t.uuid   "LicenseId",     null: false
    t.binary "VersionNumber"
  end

  add_index "SystemUserLicenses", ["LicenseId"], name: "ndx_for_cascaderelationship_license_system_users"
  add_index "SystemUserLicenses", ["SystemUserId", "LicenseId"], name: "UQ_SystemUserLicenses", unique: true

  create_table "SystemUserPrincipals", primary_key: "SystemUserPrincipalId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "PrincipalId",   null: false
    t.uuid   "SystemUserId",  null: false
  end

  add_index "SystemUserPrincipals", ["SystemUserId", "PrincipalId"], name: "cndx_SystemUserPrincipals", unique: true
  add_index "SystemUserPrincipals", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SystemUserProfiles", primary_key: "SystemUserProfileId", force: true do |t|
    t.uuid   "SystemUserId",           null: false
    t.uuid   "FieldSecurityProfileId", null: false
    t.binary "VersionNumber"
  end

  add_index "SystemUserProfiles", ["FieldSecurityProfileId"], name: "ndx_for_cascaderelationship_profile_system_users"
  add_index "SystemUserProfiles", ["SystemUserId", "FieldSecurityProfileId"], name: "UQ_SystemUserProfiles", unique: true
  add_index "SystemUserProfiles", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "SystemUserRoles", primary_key: "SystemUserRoleId", force: true do |t|
    t.uuid   "SystemUserId",  null: false
    t.uuid   "RoleId",        null: false
    t.binary "VersionNumber"
  end

  add_index "SystemUserRoles", ["RoleId"], name: "ndx_for_cascaderelationship_role_system_users"
  add_index "SystemUserRoles", ["SystemUserId", "RoleId"], name: "UQ_SystemUserRoles", unique: true
  add_index "SystemUserRoles", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TaskBase", primary_key: "ActivityId", force: true do |t|
  end

  create_table "TeamBase", primary_key: "TeamId", force: true do |t|
    t.uuid     "OrganizationId",                                              null: false
    t.uuid     "BusinessUnitId",                                              null: false
    t.string   "Name",                  limit: 160,                           null: false
    t.text     "Description"
    t.string   "EMailAddress",          limit: 100
    t.datetime "CreatedOn"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.boolean  "IsDefault",                                                   null: false
    t.uuid     "AdministratorId",                                             null: false
    t.uuid     "QueueId"
    t.decimal  "ExchangeRate",                      precision: 23, scale: 10
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "TransactionCurrencyId"
    t.string   "YomiName",              limit: 160
  end

  add_index "TeamBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "TeamBase", ["Name", "BusinessUnitId"], name: "ndx_TeamName_BusinessUnitId", unique: true
  add_index "TeamBase", ["TeamId", "AdministratorId"], name: "ndx_TeamAdministrator"
  add_index "TeamBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TeamExtensionBase", primary_key: "TeamId", force: true do |t|
  end

  create_table "TeamMembership", primary_key: "TeamMembershipId", force: true do |t|
    t.uuid   "TeamId",        null: false
    t.uuid   "SystemUserId",  null: false
    t.binary "VersionNumber"
  end

  add_index "TeamMembership", ["SystemUserId"], name: "ndx_for_cascaderelationship_system_user_team_membership"
  add_index "TeamMembership", ["TeamId", "SystemUserId"], name: "UQ_TeamMembership", unique: true
  add_index "TeamMembership", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TeamProfiles", primary_key: "TeamProfileId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "FieldSecurityProfileId", null: false
    t.uuid   "TeamId",                 null: false
  end

  add_index "TeamProfiles", ["FieldSecurityProfileId"], name: "ndx_for_cascaderelationship_profile_teamprofiles"
  add_index "TeamProfiles", ["TeamId", "FieldSecurityProfileId"], name: "ndx_Unique_TeamIdFieldSecurityProfileId", unique: true
  add_index "TeamProfiles", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TeamRoles", primary_key: "TeamRoleId", force: true do |t|
    t.uuid   "RoleId",        null: false
    t.binary "VersionNumber"
    t.uuid   "TeamId",        null: false
  end

  add_index "TeamRoles", ["RoleId"], name: "ndx_for_cascaderelationship_role_teamroles"
  add_index "TeamRoles", ["TeamId", "RoleId"], name: "ndx_Unique_TeamIdRoleId", unique: true
  add_index "TeamRoles", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TemplateBase", primary_key: "TemplateId", force: true do |t|
    t.text     "Subject"
    t.uuid     "OwningBusinessUnit"
    t.boolean  "IsPersonal"
    t.string   "MimeType",               limit: 256
    t.integer  "TemplateTypeCode",                   null: false
    t.text     "Body"
    t.string   "Title",                  limit: 200
    t.text     "Description"
    t.uuid     "CreatedBy"
    t.text     "PresentationXml"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.text     "SubjectPresentationXml"
    t.integer  "GenerationTypeCode"
    t.integer  "LanguageCode"
    t.integer  "ImportSequenceNumber"
    t.uuid     "SolutionId",                         null: false
    t.uuid     "SupportingSolutionId"
    t.integer  "ComponentState",                     null: false
    t.uuid     "TemplateIdUnique",                   null: false
    t.boolean  "IsManaged",                          null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IsCustomizable",                     null: false
    t.datetime "OverwriteTime",                      null: false
    t.uuid     "OwnerId",                            null: false
    t.integer  "OwnerIdType",                        null: false
  end

  add_index "TemplateBase", ["LanguageCode", "Title", "TemplateTypeCode", "IsPersonal"], name: "ndx_SystemManaged_Template"
  add_index "TemplateBase", ["OwnerId"], name: "ndx_Security"
  add_index "TemplateBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_templates"
  add_index "TemplateBase", ["TemplateIdUnique"], name: "UQ_TemplateBase_TemplateIdUnique", unique: true
  add_index "TemplateBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TemplateBaseIds", primary_key: "TemplateId", force: true do |t|
  end

  create_table "TerritoryBase", primary_key: "TerritoryId", force: true do |t|
    t.uuid     "OrganizationId",                                              null: false
    t.uuid     "ManagerId"
    t.string   "Name",                  limit: 200,                           null: false
    t.text     "Description"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "TransactionCurrencyId"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
    t.decimal  "ExchangeRate",                      precision: 23, scale: 10
  end

  add_index "TerritoryBase", ["ManagerId"], name: "fndx_for_cascaderelationship_system_user_territories"
  add_index "TerritoryBase", ["Name"], name: "ndx_SystemManaged_Territory"
  add_index "TerritoryBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TerritoryExtensionBase", primary_key: "TerritoryId", force: true do |t|
  end

  create_table "TimeZoneDefinitionBase", primary_key: "TimeZoneDefinitionId", force: true do |t|
    t.datetime "ModifiedOn"
    t.integer  "TimeZoneCode",                   null: false
    t.uuid     "OrganizationId"
    t.binary   "VersionNumber"
    t.datetime "CreatedOn"
    t.integer  "Bias"
    t.string   "DaylightName",       limit: 100
    t.uuid     "CreatedBy"
    t.string   "UserInterfaceName",  limit: 100, null: false
    t.string   "StandardName",       limit: 100, null: false
    t.integer  "RetiredOrder",                   null: false
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "TimeZoneDefinitionBase", ["TimeZoneCode", "RetiredOrder"], name: "ndx_timezonecode_timezonedefinition", unique: true
  add_index "TimeZoneDefinitionBase", ["UserInterfaceName"], name: "ndx_SystemManaged_TimeZoneDefinition"
  add_index "TimeZoneDefinitionBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TimeZoneLocalizedNameBase", primary_key: "TimeZoneLocalizedNameId", force: true do |t|
    t.integer  "CultureId",                        null: false
    t.datetime "ModifiedOn"
    t.datetime "CreatedOn"
    t.uuid     "TimeZoneDefinitionId",             null: false
    t.string   "StandardName",         limit: 100, null: false
    t.binary   "VersionNumber"
    t.uuid     "ModifiedBy"
    t.string   "UserInterfaceName",    limit: 100, null: false
    t.string   "DaylightName",         limit: 100
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "TimeZoneLocalizedNameBase", ["TimeZoneDefinitionId", "CultureId", "StandardName"], name: "ndx_cultureid_timezonelocalizedname", unique: true
  add_index "TimeZoneLocalizedNameBase", ["UserInterfaceName"], name: "ndx_SystemManaged_TimeZoneLocalizedName"
  add_index "TimeZoneLocalizedNameBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TimeZoneRuleBase", primary_key: "TimeZoneRuleId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.integer  "StandardDay",               null: false
    t.datetime "ModifiedOn"
    t.integer  "StandardMinute",            null: false
    t.integer  "StandardBias",              null: false
    t.integer  "StandardYear",              null: false
    t.integer  "DaylightMonth",             null: false
    t.integer  "StandardDayOfWeek",         null: false
    t.integer  "DaylightSecond",            null: false
    t.integer  "Bias",                      null: false
    t.integer  "TimeZoneRuleVersionNumber", null: false
    t.integer  "DaylightBias",              null: false
    t.integer  "StandardMonth",             null: false
    t.datetime "EffectiveDateTime",         null: false
    t.uuid     "CreatedBy"
    t.integer  "DaylightHour",              null: false
    t.integer  "StandardHour",              null: false
    t.datetime "CreatedOn"
    t.integer  "DaylightYear",              null: false
    t.integer  "StandardSecond",            null: false
    t.integer  "DaylightMinute",            null: false
    t.uuid     "TimeZoneDefinitionId",      null: false
    t.integer  "DaylightDayOfWeek",         null: false
    t.integer  "DaylightDay",               null: false
    t.uuid     "OrganizationId"
    t.binary   "VersionNumber"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "TimeZoneRuleBase", ["TimeZoneDefinitionId", "TimeZoneRuleVersionNumber", "EffectiveDateTime"], name: "ndx_timezoneruleversionnumber_timezonerule", unique: true
  add_index "TimeZoneRuleBase", ["TimeZoneDefinitionId"], name: "ndx_for_cascaderelationship_timezonerule_timezonedefinitionid"
  add_index "TimeZoneRuleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TransactionCurrencyBase", primary_key: "TransactionCurrencyId", force: true do |t|
    t.integer  "StatusCode"
    t.datetime "ModifiedOn"
    t.integer  "StateCode",                                                  null: false
    t.binary   "VersionNumber"
    t.uuid     "ModifiedBy"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.datetime "CreatedOn"
    t.decimal  "ExchangeRate",                     precision: 23, scale: 10
    t.string   "CurrencySymbol",       limit: 13,                            null: false
    t.uuid     "UniqueDscId"
    t.string   "CurrencyName",         limit: 100,                           null: false
    t.uuid     "CreatedBy"
    t.string   "ISOCurrencyCode",      limit: 5,                             null: false
    t.uuid     "OrganizationId",                                             null: false
    t.integer  "CurrencyPrecision",                                          null: false
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "TransactionCurrencyBase", ["CurrencyName", "CurrencySymbol", "ExchangeRate", "CurrencyPrecision"], name: "ndx_SystemManaged_TransactionCurrency"
  add_index "TransactionCurrencyBase", ["ISOCurrencyCode", "UniqueDscId"], name: "ndx_Unique_ISOCurrencyCode", unique: true
  add_index "TransactionCurrencyBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "TransactionCurrencyBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "TransformationMappingBase", primary_key: "TransformationMappingId", force: true do |t|
    t.uuid     "ImportMapId"
    t.string   "TransformationTypeName", limit: 256
    t.integer  "ProcessCode",                        null: false
    t.string   "SourceEntityName",       limit: 160
    t.integer  "StatusCode",                         null: false
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.integer  "StateCode",                          null: false
    t.string   "TargetEntityName",       limit: 160
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "TransformationMappingBase", ["StateCode", "StatusCode"], name: "ndx_Core"

  create_table "TransformationParameterMappingBase", primary_key: "TransformationParameterMappingId", force: true do |t|
    t.integer  "ParameterArrayIndex"
    t.integer  "ParameterTypeCode"
    t.uuid     "TransformationMappingId"
    t.datetime "CreatedOn",                           null: false
    t.uuid     "CreatedBy"
    t.integer  "DataTypeCode"
    t.string   "Data",                    limit: 500
    t.datetime "ModifiedOn",                          null: false
    t.uuid     "ModifiedBy"
    t.integer  "ParameterSequence"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  create_table "UnresolvedAddressBase", primary_key: "UnresolvedAddressId", force: true do |t|
    t.string "FullName",      limit: 160
    t.string "Telephone",     limit: 50
    t.string "EMailAddress",  limit: 100
    t.binary "VersionNumber"
  end

  add_index "UnresolvedAddressBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "UoMBase", primary_key: "UoMId", force: true do |t|
    t.uuid     "BaseUoM"
    t.string   "Name",                 limit: 100,                           null: false
    t.uuid     "UoMScheduleId",                                              null: false
    t.decimal  "Quantity",                         precision: 23, scale: 10
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.boolean  "IsScheduleBaseUoM"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "UoMBase", ["UoMScheduleId", "Name"], name: "AK1_UoMBase", unique: true
  add_index "UoMBase", ["UoMScheduleId"], name: "ndx_for_cascaderelationship_unit_of_measure_schedule_conversions"
  add_index "UoMBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "UoMScheduleBase", primary_key: "UoMScheduleId", force: true do |t|
    t.uuid     "OrganizationId",                   null: false
    t.string   "Name",                 limit: 200, null: false
    t.text     "Description"
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.string   "BaseUoMName",          limit: 100
    t.datetime "OverriddenCreatedOn"
    t.integer  "StatusCode"
    t.integer  "StateCode",                        null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "UoMScheduleBase", ["Name"], name: "AK1_UoMScheduleBase", unique: true
  add_index "UoMScheduleBase", ["StateCode"], name: "ndx_SystemManaged_UoMSchedule"
  add_index "UoMScheduleBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "UpgradeActionTracker", primary_key: "ExecutionOrder", force: true do |t|
    t.uuid     "ActionId",                          null: false
    t.string   "UpgradeToVersionNumber", limit: 20
    t.boolean  "WasExecuted",                       null: false
    t.text     "ActionName"
    t.text     "Description"
    t.string   "ExecutionTime",          limit: 64
    t.datetime "CreatedOnUtc"
    t.text     "HashFile"
    t.text     "HashValue"
  end

  add_index "UpgradeActionTracker", ["ActionId"], name: "cndx_UpgradeActionTracker"

  create_table "UserEntityInstanceDataBase", primary_key: "UserEntityInstanceDataId", force: true do |t|
    t.datetime "CommonStart"
    t.datetime "ReminderTime"
    t.string   "ToDoTitle",          limit: 2000
    t.string   "FlagRequest",        limit: 50
    t.uuid     "OwningBusinessUnit"
    t.datetime "ToDoOrdinalDate"
    t.datetime "DueDate"
    t.integer  "FlagStatus"
    t.datetime "FlagDueBy"
    t.boolean  "ReminderSet"
    t.uuid     "ObjectId"
    t.integer  "ToDoItemFlags"
    t.integer  "ObjectTypeCode",                  null: false
    t.text     "PersonalCategories"
    t.string   "ToDoSubOrdinal",     limit: 50
    t.binary   "VersionNumber"
    t.uuid     "OwnerId",                         null: false
    t.datetime "CommonEnd"
    t.datetime "StartTime"
    t.integer  "OwnerIdType",                     null: false
  end

  add_index "UserEntityInstanceDataBase", ["ObjectId", "ObjectTypeCode", "OwnerId", "OwnerIdType"], name: "ndx_ObjectIdTypeCode", unique: true
  add_index "UserEntityInstanceDataBase", ["OwnerId"], name: "fndx_Security"
  add_index "UserEntityInstanceDataBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "UserEntityUISettingsBase", primary_key: "UserEntityUISettingsId", force: true do |t|
    t.text    "RecentlyViewedXml"
    t.text    "LookupMRUXml"
    t.text    "InsertIntoEmailMRUXml"
    t.binary  "VersionNumber"
    t.uuid    "OwningBusinessUnit"
    t.uuid    "OwnerId",               null: false
    t.integer "ObjectTypeCode",        null: false
    t.text    "ReadingPaneXml"
    t.text    "TabOrderXml"
    t.text    "LastViewedFormXml"
    t.text    "MRUXml"
    t.boolean "ShowInAddressBook"
    t.integer "OwnerIdType",           null: false
  end

  add_index "UserEntityUISettingsBase", ["OwnerId", "ObjectTypeCode"], name: "cndx_userentityuisettingsownerid", unique: true
  add_index "UserEntityUISettingsBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "UserFiscalCalendarBase", primary_key: "UserFiscalCalendarId", force: true do |t|
    t.uuid     "SalesPersonId"
    t.integer  "FiscalPeriodType"
    t.datetime "EffectiveOn"
    t.decimal  "Period1"
    t.decimal  "Period2"
    t.decimal  "Period3"
    t.decimal  "Period4"
    t.decimal  "Period5"
    t.decimal  "Period6"
    t.decimal  "Period7"
    t.decimal  "Period8"
    t.decimal  "Period9"
    t.decimal  "Period10"
    t.decimal  "Period11"
    t.decimal  "Period12"
    t.decimal  "Period13"
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "ImportSequenceNumber"
    t.uuid     "TransactionCurrencyId"
    t.integer  "UTCConversionTimeZoneCode"
    t.decimal  "ExchangeRate",              precision: 23, scale: 10
    t.integer  "TimeZoneRuleVersionNumber"
    t.decimal  "Period4_Base"
    t.decimal  "Period11_Base"
    t.decimal  "Period3_Base"
    t.decimal  "Period1_Base"
    t.decimal  "Period6_Base"
    t.decimal  "Period8_Base"
    t.decimal  "Period9_Base"
    t.decimal  "Period7_Base"
    t.decimal  "Period5_Base"
    t.decimal  "Period13_Base"
    t.decimal  "Period10_Base"
    t.decimal  "Period12_Base"
    t.decimal  "Period2_Base"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "UserFiscalCalendarBase", ["SalesPersonId"], name: "fndx_for_cascaderelationship_system_user_quotas"

  create_table "UserFormBase", primary_key: "UserFormId", force: true do |t|
    t.datetime "ModifiedOn"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "OwnerId",                        null: false
    t.string   "Name",               limit: 100
    t.integer  "Type"
    t.text     "FormXml"
    t.uuid     "CreatedBy"
    t.uuid     "ModifiedBy"
    t.datetime "CreatedOn"
    t.binary   "VersionNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.text     "Description"
    t.integer  "ObjectTypeCode"
    t.integer  "OwnerIdType",                    null: false
  end

  add_index "UserFormBase", ["OwnerId"], name: "ndx_for_cascaderelationship_owner_userform"
  add_index "UserFormBase", ["Type", "ObjectTypeCode"], name: "ndx_Type_ObjectType"
  add_index "UserFormBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "UserQueryBase", primary_key: "UserQueryId", force: true do |t|
    t.integer  "QueryType",                         null: false
    t.datetime "ModifiedOn",                        null: false
    t.uuid     "ModifiedBy",                        null: false
    t.integer  "StatusCode"
    t.binary   "VersionNumber"
    t.text     "FetchXml"
    t.text     "Description"
    t.text     "ColumnSetXml"
    t.integer  "StateCode",                         null: false
    t.string   "Name",                  limit: 200, null: false
    t.uuid     "CreatedBy",                         null: false
    t.integer  "ReturnedTypeCode",                  null: false
    t.uuid     "OwningBusinessUnit"
    t.text     "LayoutXml"
    t.datetime "CreatedOn",                         null: false
    t.string   "AdvancedGroupBy",       limit: 160
    t.text     "ConditionalFormatting"
    t.uuid     "OwnerId",                           null: false
    t.uuid     "ParentQueryId"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.integer  "OwnerIdType",                       null: false
  end

  add_index "UserQueryBase", ["OwnerId"], name: "ndx_Security"
  add_index "UserQueryBase", ["QueryType", "Name", "ModifiedOn"], name: "ndx_SystemManaged_UserQuery"
  add_index "UserQueryBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "UserQueryBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "UserQueryVisualizationBase", primary_key: "UserQueryVisualizationId", force: true do |t|
    t.string   "Name",                    limit: 100, null: false
    t.datetime "CreatedOn",                           null: false
    t.binary   "VersionNumber"
    t.text     "DataDescription"
    t.boolean  "IsDefault",                           null: false
    t.uuid     "WebResourceId"
    t.datetime "ModifiedOn",                          null: false
    t.uuid     "OwnerId",                             null: false
    t.integer  "PrimaryEntityTypeCode",               null: false
    t.uuid     "CreatedOnBehalfBy"
    t.text     "Description"
    t.uuid     "ModifiedBy",                          null: false
    t.uuid     "OwningBusinessUnit"
    t.uuid     "ModifiedOnBehalfBy"
    t.text     "PresentationDescription"
    t.uuid     "CreatedBy",                           null: false
    t.integer  "OwnerIdType",                         null: false
  end

  add_index "UserQueryVisualizationBase", ["Name"], name: "ndx_SystemManaged_UserQueryVisualization"
  add_index "UserQueryVisualizationBase", ["OwnerId"], name: "ndx_for_cascaderelationship_owner_userqueryvisualizations"
  add_index "UserQueryVisualizationBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true
  add_index "UserQueryVisualizationBase", ["WebResourceId"], name: "ndx_for_cascaderelationship_webresource_userqueryvisualizations"

  create_table "UserSettingsBase", primary_key: "SystemUserId", force: true do |t|
    t.uuid     "BusinessUnitId",                                          null: false
    t.string   "HomepageArea",                               limit: 200
    t.integer  "PagingLimit"
    t.string   "HomepageSubarea",                            limit: 200
    t.integer  "DefaultCalendarView"
    t.string   "WorkdayStartTime",                           limit: 5
    t.string   "WorkdayStopTime",                            limit: 5
    t.boolean  "IgnoreUnsolicitedEmail",                                  null: false
    t.integer  "TimeZoneBias",                                            null: false
    t.integer  "TimeZoneStandardBias",                                    null: false
    t.integer  "TimeZoneDaylightBias",                                    null: false
    t.integer  "TimeZoneCode",                               limit: 2,    null: false
    t.integer  "TimeZoneStandardYear",                       limit: 2,    null: false
    t.integer  "TimeZoneStandardMonth",                      limit: 2,    null: false
    t.integer  "TimeZoneStandardDay",                        limit: 2,    null: false
    t.integer  "TimeZoneStandardDayOfWeek",                  limit: 2,    null: false
    t.integer  "TimeZoneStandardHour",                       limit: 2,    null: false
    t.integer  "TimeZoneStandardMinute",                     limit: 2,    null: false
    t.integer  "TimeZoneStandardSecond",                     limit: 2,    null: false
    t.integer  "TimeZoneDaylightYear",                       limit: 2,    null: false
    t.integer  "TimeZoneDaylightMonth",                      limit: 2,    null: false
    t.integer  "TimeZoneDaylightDay",                        limit: 2,    null: false
    t.integer  "TimeZoneDaylightDayOfWeek",                  limit: 2,    null: false
    t.integer  "TimeZoneDaylightHour",                       limit: 2,    null: false
    t.integer  "TimeZoneDaylightMinute",                     limit: 2,    null: false
    t.integer  "TimeZoneDaylightSecond",                     limit: 2,    null: false
    t.uuid     "ModifiedBy"
    t.integer  "AdvancedFindStartupMode",                    limit: 2,    null: false
    t.datetime "CreatedOn"
    t.integer  "TrackingTokenId"
    t.integer  "NextTrackingNumber"
    t.datetime "ModifiedOn"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.string   "UserProfile",                                limit: 1024
    t.string   "NumberSeparator",                            limit: 5,    null: false
    t.integer  "OutlookSyncInterval",                                     null: false
    t.boolean  "UseCrmFormForTask",                                       null: false
    t.integer  "PricingDecimalPrecision"
    t.boolean  "SyncContactCompany",                                      null: false
    t.string   "DateSeparator",                              limit: 5,    null: false
    t.integer  "LongDateFormatCode",                                      null: false
    t.boolean  "AllowEmailCredentials",                                   null: false
    t.integer  "FullNameConventionCode",                                  null: false
    t.string   "TimeSeparator",                              limit: 5
    t.integer  "TimeFormatCode",                                          null: false
    t.integer  "NegativeFormatCode",                                      null: false
    t.integer  "OfflineSyncInterval",                                     null: false
    t.integer  "CalendarType",                                            null: false
    t.string   "CurrencySymbol",                             limit: 13,   null: false
    t.uuid     "TransactionCurrencyId"
    t.integer  "UILanguageId",                                            null: false
    t.boolean  "UseCrmFormForContact",                                    null: false
    t.integer  "CurrencyFormatCode",                                      null: false
    t.integer  "AddressBookSyncInterval",                                 null: false
    t.string   "DecimalSymbol",                              limit: 5,    null: false
    t.boolean  "UseCrmFormForEmail",                                      null: false
    t.boolean  "ShowWeekNumber",                                          null: false
    t.integer  "NegativeCurrencyFormatCode",                              null: false
    t.string   "TimeFormatString"
    t.string   "EmailUsername",                              limit: 200
    t.string   "DateFormatString"
    t.integer  "ReportScriptErrors",                                      null: false
    t.boolean  "UseImageStrips",                                          null: false
    t.string   "EmailPassword",                              limit: 200
    t.integer  "DateFormatCode",                                          null: false
    t.boolean  "UseCrmFormForAppointment",                                null: false
    t.boolean  "IsDuplicateDetectionEnabledWhenGoingOnline",              null: false
    t.integer  "LocaleId"
    t.integer  "IncomingEmailFilteringMethod",                            null: false
    t.integer  "CurrencyDecimalPrecision"
    t.string   "AMDesignator",                               limit: 25,   null: false
    t.string   "NumberGroupFormat",                          limit: 25
    t.integer  "HelpLanguageId"
    t.string   "PMDesignator",                               limit: 25,   null: false
    t.uuid     "CreatedOnBehalfBy"
    t.boolean  "GetStartedPaneContentEnabled",                            null: false
    t.integer  "AutoCreateContactOnPromote",                 limit: 2,    null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.text     "PersonalizationSettings"
    t.integer  "VisualizationPaneLayout",                                 null: false
    t.integer  "DataValidationModeForExportToExcel",                      null: false
    t.string   "HomepageLayout",                             limit: 1000
    t.boolean  "IsSendAsAllowed",                                         null: false
    t.uuid     "DefaultDashboardId"
    t.integer  "EntityFormMode",                                          null: false
    t.string   "DefaultCountryCode",                         limit: 15
    t.boolean  "IsDefaultCountryCodeCheckEnabled",                        null: false
  end

  add_index "UserSettingsBase", ["BusinessUnitId"], name: "ndx_Security"
  add_index "UserSettingsBase", ["TrackingTokenId"], name: "AK1_UserSettingsBase_TrackingTokenId", unique: true
  add_index "UserSettingsBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "ViewAttribute", id: false, force: true do |t|
  end

  create_table "WebResourceBase", primary_key: "ComponentState", force: true do |t|
    t.string   "Name",                 limit: 256, null: false
    t.boolean  "IsManaged",                        null: false
    t.integer  "WebResourceType",                  null: false
    t.binary   "VersionNumber"
    t.string   "SilverlightVersion",   limit: 20
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "SupportingSolutionId"
    t.uuid     "CreatedOnBehalfBy"
    t.datetime "ModifiedOn"
    t.uuid     "OrganizationId",                   null: false
    t.uuid     "WebResourceIdUnique",              null: false
    t.string   "DisplayName",          limit: 200
    t.uuid     "ModifiedBy"
    t.boolean  "IsHidden",                         null: false
    t.uuid     "WebResourceId",                    null: false
    t.datetime "OverwriteTime",                    null: false
    t.datetime "CreatedOn"
    t.boolean  "CanBeDeleted",                     null: false
    t.uuid     "SolutionId",                       null: false
    t.boolean  "IsCustomizable",                   null: false
    t.text     "Content"
    t.uuid     "CreatedBy"
    t.text     "Description"
    t.integer  "LanguageCode"
  end

  add_index "WebResourceBase", ["ModifiedOn"], name: "ndx_Webresource_ModifiedOn"
  add_index "WebResourceBase", ["Name"], name: "ndx_WebResourceNames"
  add_index "WebResourceBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true
  add_index "WebResourceBase", ["WebResourceIdUnique"], name: "UQ_WebResourceBase_WebResourceIdUnique", unique: true

  create_table "WebResourceBaseIds", primary_key: "WebResourceId", force: true do |t|
  end

  create_table "WebWizardBase", primary_key: "WebWizardId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.uuid     "OrganizationId",                       null: false
    t.string   "Name",                    limit: 100,  null: false
    t.integer  "WizardPageHeight"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "WizardPageWidth"
    t.integer  "StartPageSequenceNumber"
    t.string   "AccessPrivileges",        limit: 1024
    t.string   "TitleResourceString",     limit: 100,  null: false
    t.boolean  "IsStaticPageSequence",                 null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "WebWizardBase", ["Name"], name: "ndx_SystemManaged_WebWizard"
  add_index "WebWizardBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true

  create_table "WizardAccessPrivilegeBase", primary_key: "WizardAccessPrivilegeId", force: true do |t|
    t.uuid     "ModifiedBy"
    t.string   "PrivilegeName",      limit: 100, null: false
    t.uuid     "OrganizationId",                 null: false
    t.uuid     "WebWizardId",                    null: false
    t.datetime "ModifiedOn"
    t.string   "EntityName",         limit: 100, null: false
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.binary   "VersionNumber"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  add_index "WizardAccessPrivilegeBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true
  add_index "WizardAccessPrivilegeBase", ["WebWizardId", "EntityName", "PrivilegeName"], name: "ndx_entityname_privilegename_wizardaccessarivilege", unique: true
  add_index "WizardAccessPrivilegeBase", ["WebWizardId"], name: "ndx_for_cascaderelationship_wizardaccessprivilege_webwizardid"

  create_table "WizardPageBase", primary_key: "WizardPageId", force: true do |t|
    t.integer  "PageSequenceNumber",              null: false
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.binary   "VersionNumber"
    t.uuid     "CreatedBy"
    t.uuid     "OrganizationId",                  null: false
    t.string   "PageUrl",            limit: 512,  null: false
    t.uuid     "WebWizardId",                     null: false
    t.string   "PageDataToPost",     limit: 1024
    t.datetime "CreatedOn"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "CreatedOnBehalfBy"
  end

  add_index "WizardPageBase", ["VersionNumber"], name: "fndx_Sync_VersionNumber", unique: true
  add_index "WizardPageBase", ["WebWizardId", "PageSequenceNumber"], name: "ndx_PageSequenceNumber_WizardPage", unique: true
  add_index "WizardPageBase", ["WebWizardId"], name: "ndx_for_cascaderelationship_wizardpage_webwizardid"

  create_table "WorkflowBase", primary_key: "WorkflowId", force: true do |t|
    t.boolean  "OnDemand"
    t.text     "Activities"
    t.uuid     "PluginTypeId"
    t.datetime "CreatedOn"
    t.integer  "Type",                                     null: false
    t.uuid     "ActiveWorkflowId"
    t.uuid     "ParentWorkflowId"
    t.text     "UIData"
    t.integer  "PrimaryEntity",                            null: false
    t.datetime "ModifiedOn"
    t.boolean  "IsCrmUIWorkflow"
    t.boolean  "Subprocess"
    t.integer  "Scope",                                    null: false
    t.integer  "StatusCode"
    t.uuid     "ModifiedBy"
    t.text     "Rules"
    t.text     "Description"
    t.uuid     "CreatedBy"
    t.string   "Name",                         limit: 100, null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "StateCode",                                null: false
    t.datetime "OverwriteTime",                            null: false
    t.boolean  "TriggerOnCreate"
    t.boolean  "AsyncAutoDelete",                          null: false
    t.uuid     "SupportingSolutionId"
    t.uuid     "CreatedOnBehalfBy"
    t.text     "InputParameters"
    t.text     "Xaml"
    t.integer  "Category",                                 null: false
    t.integer  "LanguageCode"
    t.boolean  "TriggerOnDelete"
    t.uuid     "SolutionId",                               null: false
    t.uuid     "ModifiedOnBehalfBy"
    t.boolean  "IsCustomizable",                           null: false
    t.text     "TriggerOnUpdateAttributeList"
    t.uuid     "WorkflowIdUnique",                         null: false
    t.integer  "ComponentState",                           null: false
    t.uuid     "OwnerId",                                  null: false
    t.boolean  "IsManaged",                                null: false
    t.integer  "OwnerIdType",                              null: false
  end

  add_index "WorkflowBase", ["ActiveWorkflowId"], name: "fndx_for_cascaderelationship_workflow_active_workflow"
  add_index "WorkflowBase", ["OwnerId"], name: "ndx_Security"
  add_index "WorkflowBase", ["OwningBusinessUnit"], name: "fndx_for_cascaderelationship_business_unit_workflow"
  add_index "WorkflowBase", ["ParentWorkflowId"], name: "fndx_for_cascaderelationship_workflow_parent_workflow"
  add_index "WorkflowBase", ["StateCode", "StatusCode"], name: "ndx_Core"
  add_index "WorkflowBase", ["Type", "Category", "LanguageCode", "Name", "PrimaryEntity", "CreatedOn", "ModifiedOn"], name: "ndx_SystemManaged_Workflow"
  add_index "WorkflowBase", ["WorkflowIdUnique"], name: "UQ_WorkflowBase_WorkflowIdUnique", unique: true

  create_table "WorkflowBaseIds", primary_key: "WorkflowId", force: true do |t|
  end

  create_table "WorkflowDependencyBase", primary_key: "WorkflowDependencyId", force: true do |t|
    t.string   "ParameterName",          limit: 256
    t.string   "RelatedEntityName",      limit: 50
    t.string   "RelatedAttributeName",   limit: 256
    t.uuid     "WorkflowId",                         null: false
    t.uuid     "SdkMessageId"
    t.uuid     "ModifiedBy"
    t.datetime "ModifiedOn"
    t.integer  "Type",                               null: false
    t.text     "EntityAttributes"
    t.string   "CustomEntityName",       limit: 50
    t.string   "DependentEntityName",    limit: 50
    t.string   "DependentAttributeName", limit: 100
    t.uuid     "CreatedBy"
    t.datetime "CreatedOn"
    t.string   "ParameterType",          limit: 256
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
  end

  create_table "WorkflowLogBase", primary_key: "WorkflowLogId", force: true do |t|
    t.uuid     "AsyncOperationId",                                 null: false
    t.uuid     "ModifiedBy",                                       null: false
    t.datetime "CompletedOn"
    t.text     "Description"
    t.text     "Message"
    t.uuid     "CreatedBy"
    t.string   "StageName",                           limit: 256
    t.datetime "CreatedOn"
    t.string   "StepName",                            limit: 160
    t.datetime "ModifiedOn"
    t.uuid     "RegardingObjectId"
    t.integer  "Status",                                           null: false
    t.integer  "ErrorCode"
    t.string   "ActivityName",                        limit: 160
    t.string   "RegardingObjectIdName",               limit: 256
    t.integer  "RegardingObjectTypeCode"
    t.string   "RegardingObjectIdYomiName",           limit: 160
    t.text     "InteractionActivityResult"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "OwningBusinessUnit"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                                          null: false
    t.uuid     "ChildWorkflowInstanceId"
    t.integer  "ChildWorkflowInstanceObjectTypeCode"
    t.string   "AsyncOperationIdName",                limit: 4000
    t.integer  "OwnerIdType",                                      null: false
    t.string   "ChildWorkflowInstanceIdName",         limit: 4000
    t.integer  "ObjectTypeCode",                                   null: false
  end

  add_index "WorkflowLogBase", ["AsyncOperationId", "ObjectTypeCode"], name: "ndx_for_cascaderelationship_lk_workflowlog_asyncoperations"
  add_index "WorkflowLogBase", ["OwnerId"], name: "ndx_Security"

  create_table "WorkflowWaitSubscriptionBase", primary_key: "WorkflowWaitSubscriptionId", force: true do |t|
    t.uuid     "EntityId",                    null: false
    t.uuid     "AsyncOperationId",            null: false
    t.text     "Data"
    t.datetime "ModifiedOn"
    t.string   "EntityName",       limit: 64, null: false
    t.boolean  "IsModified",                  null: false
    t.boolean  "IsDeleted"
  end

  add_index "WorkflowWaitSubscriptionBase", ["AsyncOperationId"], name: "ndx_CascadeRelationship_AsyncOperation_WorkflowWaitSubscription"
  add_index "WorkflowWaitSubscriptionBase", ["EntityId", "EntityName"], name: "ndx_Modified"

  create_table "dd_chartmapentityBase", primary_key: "dd_chartmapentityId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "dd_chartmapentityBase", ["CreatedOn"], name: "ndx_SystemManaged_dd_chartmapentity"
  add_index "dd_chartmapentityBase", ["OrganizationId"], name: "ndx_Security"
  add_index "dd_chartmapentityBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "dd_chartmapentityBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "dd_chartmapentityExtensionBase", primary_key: "dd_chartmapentityId", force: true do |t|
    t.string  "dd_chartname",                    limit: 100
    t.string  "dd_AddressField",                 limit: 100
    t.string  "dd_AddressFieldLinkEntity",       limit: 100
    t.text    "dd_ChartDescription"
    t.string  "dd_chartid",                      limit: 100
    t.string  "dd_CityField",                    limit: 100
    t.string  "dd_CityFieldLinkEntity",          limit: 100
    t.string  "dd_ClusterName",                  limit: 100
    t.integer "dd_ClusterRadius"
    t.integer "dd_ColourStop1"
    t.integer "dd_ColourStop2"
    t.integer "dd_ColourStop3"
    t.integer "dd_ColourStop4"
    t.integer "dd_ColourStop5"
    t.string  "dd_CountryField",                 limit: 100
    t.string  "dd_CountryFieldLinkEntity",       limit: 100
    t.decimal "dd_Deviations",                               precision: 23, scale: 10
    t.boolean "dd_EnableClustering"
    t.string  "dd_Entity",                       limit: 100
    t.text    "dd_FetchAttributes"
    t.integer "dd_HeatMapBasedOn"
    t.decimal "dd_Intensity",                                precision: 23, scale: 10
    t.integer "dd_IntensityCalculation"
    t.integer "dd_IntensityRange"
    t.integer "dd_MapType"
    t.decimal "dd_MaximumValue",                             precision: 23, scale: 10
    t.decimal "dd_MinimumValue",                             precision: 23, scale: 10
    t.string  "dd_NameField",                    limit: 100
    t.string  "dd_NameFieldLinkEntity",          limit: 100
    t.string  "dd_NumericField",                 limit: 100
    t.string  "dd_NumericFieldLinkEntity",       limit: 100
    t.integer "dd_PinSize"
    t.string  "dd_PostalCodeField",              limit: 100
    t.string  "dd_PostalCodeFieldLinkEntity",    limit: 100
    t.integer "dd_Radius"
    t.boolean "dd_RadiusUnits"
    t.string  "dd_StateProvinceField",           limit: 100
    t.string  "dd_StateProvinceFieldLinkEntity", limit: 100
    t.integer "dd_Weight"
  end

  add_index "dd_chartmapentityExtensionBase", ["dd_chartname"], name: "ndx_dd_chartname"

  create_table "gap_achievementBase", primary_key: "gap_achievementId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "gap_achievementBase", ["OwnerId"], name: "ndx_Security"
  add_index "gap_achievementBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "gap_achievementBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "gap_achievementExtensionBase", primary_key: "gap_achievementId", force: true do |t|
    t.string   "gap_name",            limit: 100
    t.datetime "gap_AchievementDate"
    t.integer  "gap_BonusPoints"
    t.string   "gap_logowebresource", limit: 1000
    t.uuid     "gap_AchievementType"
    t.uuid     "gap_Game"
    t.uuid     "gap_Awardee"
  end

  add_index "gap_achievementExtensionBase", ["gap_name"], name: "ndx_gap_name"

  create_table "gap_achievementtypeBase", primary_key: "gap_achievementtypeId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "gap_achievementtypeBase", ["OwnerId"], name: "ndx_Security"
  add_index "gap_achievementtypeBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "gap_achievementtypeBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "gap_achievementtypeExtensionBase", primary_key: "gap_achievementtypeId", force: true do |t|
    t.string  "gap_name",                  limit: 100
    t.integer "gap_AchievementsAvailable"
    t.integer "gap_AchievementsAwarded"
    t.integer "gap_BonusPoints"
    t.text    "gap_Description"
    t.string  "gap_logowebresource",       limit: 1000
  end

  add_index "gap_achievementtypeExtensionBase", ["gap_name"], name: "ndx_gap_name"

  create_table "gap_gameBase", primary_key: "gap_gameId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "gap_gameBase", ["OwnerId"], name: "ndx_Security"
  add_index "gap_gameBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "gap_gameBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "gap_gameExtensionBase", primary_key: "gap_gameId", force: true do |t|
    t.string   "gap_name",      limit: 100
    t.datetime "gap_Ended"
    t.integer  "gap_Level10To"
    t.integer  "gap_Level1To"
    t.integer  "gap_Level2To"
    t.integer  "gap_Level3To"
    t.integer  "gap_Level4To"
    t.integer  "gap_Level5To"
    t.integer  "gap_Level6To"
    t.integer  "gap_Level7To"
    t.integer  "gap_Level8To"
    t.integer  "gap_Level9To"
    t.datetime "gap_Started"
    t.uuid     "gap_Level1"
    t.uuid     "gap_Level10"
    t.uuid     "gap_Level2"
    t.uuid     "gap_Level3"
    t.uuid     "gap_Level4"
    t.uuid     "gap_Level5"
    t.uuid     "gap_Level6"
    t.uuid     "gap_Level7"
    t.uuid     "gap_Level8"
    t.uuid     "gap_Level9"
  end

  add_index "gap_gameExtensionBase", ["gap_Ended", "gap_Started"], name: "ndx_SystemManaged_gap_game"
  add_index "gap_gameExtensionBase", ["gap_name"], name: "ndx_gap_name"

  create_table "gap_gamepointsBase", primary_key: "gap_gamepointsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "gap_gamepointsBase", ["CreatedOn"], name: "ndx_SystemManaged_gap_gamepoints"
  add_index "gap_gamepointsBase", ["OwnerId"], name: "ndx_Security"
  add_index "gap_gamepointsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "gap_gamepointsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "gap_gamepointsExtensionBase", primary_key: "gap_gamepointsId", force: true do |t|
    t.string  "gap_name",             limit: 100
    t.integer "gap_GamePointsAction"
    t.integer "gap_Points"
    t.uuid    "gap_Game"
    t.uuid    "gap_User"
  end

  add_index "gap_gamepointsExtensionBase", ["gap_User", "gap_Points", "gap_GamePointsAction"], name: "ndx_SystemManaged_gap_gamepoints"
  add_index "gap_gamepointsExtensionBase", ["gap_name"], name: "ndx_gap_name"

  create_table "gap_rankBase", primary_key: "gap_rankId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "gap_rankBase", ["OwnerId"], name: "ndx_Security"
  add_index "gap_rankBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "gap_rankBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "gap_rankExtensionBase", primary_key: "gap_rankId", force: true do |t|
    t.string "gap_rankname",        limit: 100
    t.string "gap_LogoWebResource", limit: 1000
  end

  add_index "gap_rankExtensionBase", ["gap_rankname"], name: "ndx_gap_rankname"

  create_table "msdyn_PostAlbumBase", primary_key: "msdyn_PostAlbumId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "msdyn_PostAlbumBase", ["CreatedOn"], name: "ndx_SystemManaged_msdyn_PostAlbum"
  add_index "msdyn_PostAlbumBase", ["OwnerId"], name: "ndx_Security"
  add_index "msdyn_PostAlbumBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "msdyn_PostAlbumBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "msdyn_PostAlbumExtensionBase", primary_key: "msdyn_PostAlbumId", force: true do |t|
    t.string "msdyn_name", limit: 100
  end

  add_index "msdyn_PostAlbumExtensionBase", ["msdyn_name"], name: "ndx_SystemManaged_msdyn_PostAlbum"

  create_table "msdyn_PostConfigBase", primary_key: "msdyn_PostConfigId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "msdyn_PostConfigBase", ["OrganizationId"], name: "ndx_Security"
  add_index "msdyn_PostConfigBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "msdyn_PostConfigBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "msdyn_PostConfigExtensionBase", primary_key: "msdyn_PostConfigId", force: true do |t|
    t.string  "msdyn_EntityDisplayName", limit: 100
    t.boolean "msdyn_ConfigureWall"
    t.string  "msdyn_EntityName",        limit: 100
    t.string  "msdyn_FollowingViewId",   limit: 100
    t.string  "msdyn_FollowingViewId2",  limit: 100
    t.integer "msdyn_Otc"
    t.text    "msdyn_Status"
  end

  add_index "msdyn_PostConfigExtensionBase", ["msdyn_EntityDisplayName", "msdyn_EntityName", "msdyn_ConfigureWall"], name: "ndx_SystemManaged_msdyn_PostConfig"

  create_table "msdyn_PostRuleConfigBase", primary_key: "msdyn_PostRuleConfigId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "msdyn_PostRuleConfigBase", ["OrganizationId"], name: "ndx_Security"
  add_index "msdyn_PostRuleConfigBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "msdyn_PostRuleConfigBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "msdyn_PostRuleConfigExtensionBase", primary_key: "msdyn_PostRuleConfigId", force: true do |t|
    t.string "msdyn_name",         limit: 256
    t.string "msdyn_FormatId",     limit: 256
    t.string "msdyn_RuleId",       limit: 256
    t.string "msdyn_RuleSource",   limit: 256
    t.string "msdyn_StepId",       limit: 100
    t.uuid   "msdyn_PostConfigId"
  end

  add_index "msdyn_PostRuleConfigExtensionBase", ["msdyn_PostConfigId"], name: "ndx_for_cascaderelationship_msdyn_postconfig_msdyn_postruleconfig"
  add_index "msdyn_PostRuleConfigExtensionBase", ["msdyn_name"], name: "ndx_SystemManaged_msdyn_PostRuleConfig"

  create_table "msdyn_wallsavedqueryBase", primary_key: "msdyn_wallsavedqueryId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "msdyn_wallsavedqueryBase", ["OrganizationId"], name: "ndx_Security"
  add_index "msdyn_wallsavedqueryBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "msdyn_wallsavedqueryBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "msdyn_wallsavedqueryExtensionBase", primary_key: "msdyn_wallsavedqueryId", force: true do |t|
    t.string  "msdyn_entityname",          limit: 100
    t.string  "msdyn_entitydisplayname",   limit: 100
    t.boolean "msdyn_IsVirtual"
    t.boolean "msdyn_IsVisible"
    t.integer "msdyn_isvisiblebit"
    t.integer "msdyn_otc"
    t.string  "msdyn_SavedQueryId",        limit: 50
    t.string  "msdyn_savedqueryname",      limit: 100
    t.uuid    "msdyn_postconfigurationid"
  end

  add_index "msdyn_wallsavedqueryExtensionBase", ["msdyn_IsVirtual", "msdyn_savedqueryname", "msdyn_IsVisible"], name: "ndx_SystemManaged_msdyn_wallsavedquery"
  add_index "msdyn_wallsavedqueryExtensionBase", ["msdyn_entityname"], name: "ndx_msdyn_entityname"
  add_index "msdyn_wallsavedqueryExtensionBase", ["msdyn_postconfigurationid"], name: "ndx_for_cascaderelationship_msdyn_postconfig_wallsavedquery"

  create_table "msdyn_wallsavedqueryusersettingsBase", primary_key: "msdyn_wallsavedqueryusersettingsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "msdyn_wallsavedqueryusersettingsBase", ["CreatedOn"], name: "ndx_SystemManaged_msdyn_wallsavedqueryusersettings"
  add_index "msdyn_wallsavedqueryusersettingsBase", ["OwnerId"], name: "ndx_Security"
  add_index "msdyn_wallsavedqueryusersettingsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "msdyn_wallsavedqueryusersettingsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "msdyn_wallsavedqueryusersettingsExtensionBase", primary_key: "msdyn_wallsavedqueryusersettingsId", force: true do |t|
    t.string  "msdyn_entityname",            limit: 100
    t.text    "msdyn_data"
    t.integer "msdyn_default"
    t.string  "msdyn_entitydisplayname",     limit: 100
    t.boolean "msdyn_includewallinresponse"
    t.boolean "msdyn_isfollowing"
    t.boolean "msdyn_IsVirtual"
    t.boolean "msdyn_isvisible"
    t.integer "msdyn_isvisiblebit"
    t.integer "msdyn_otc"
    t.string  "msdyn_savedqueryname",        limit: 100
    t.integer "msdyn_sortorder"
    t.integer "msdyn_type"
    t.uuid    "msdyn_userid"
    t.uuid    "msdyn_wallsavedqueryid"
  end

  add_index "msdyn_wallsavedqueryusersettingsExtensionBase", ["msdyn_entityname"], name: "ndx_msdyn_entityname"
  add_index "msdyn_wallsavedqueryusersettingsExtensionBase", ["msdyn_savedqueryname", "msdyn_isvisible"], name: "ndx_SystemManaged_msdyn_wallsavedqueryusersettings"
  add_index "msdyn_wallsavedqueryusersettingsExtensionBase", ["msdyn_wallsavedqueryid"], name: "ndx_for_cascaderelationship_msdyn_wallsavedquery_wallsavedqueryusersettings"

  create_table "new_autonumberBase", primary_key: "new_autonumberId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_autonumberBase", ["CreatedOn"], name: "ndx_SystemManaged_new_autonumber"
  add_index "new_autonumberBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_autonumberBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_autonumberBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_autonumberExtensionBase", primary_key: "new_autonumberId", force: true do |t|
    t.string  "new_name",                  limit: 100
    t.string  "new_Prefix",                limit: 100
    t.string  "new_Sufix",                 limit: 100
    t.integer "new_IncrementUnit"
    t.string  "new_Numberformatter",       limit: 100
    t.string  "new_prefixseparator",       limit: 100
    t.string  "new_sufixseparator",        limit: 100
    t.integer "new_Counter"
    t.string  "new_EntityAutonumberField", limit: 100
    t.string  "new_Countertext",           limit: 100
  end

  add_index "new_autonumberExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_budgetmanagementBase", primary_key: "new_budgetmanagementId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_budgetmanagementBase", ["CreatedOn"], name: "ndx_SystemManaged_new_budgetmanagement"
  add_index "new_budgetmanagementBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_budgetmanagementBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_budgetmanagementBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_budgetmanagementExtensionBase", primary_key: "new_budgetmanagementId", force: true do |t|
    t.string  "new_name",              limit: 100
    t.uuid    "new_Region"
    t.uuid    "new_Grant"
    t.uuid    "new_FromProject"
    t.uuid    "new_ToProject"
    t.decimal "new_TransferredAmount",             precision: 23, scale: 10
    t.uuid    "new_FromSubproject"
    t.uuid    "new_ToSubproject"
    t.uuid    "new_ReferenceProject"
  end

  add_index "new_budgetmanagementExtensionBase", ["new_Grant", "new_TransferredAmount"], name: "ndx_SystemManaged_new_budgetmanagement"
  add_index "new_budgetmanagementExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_buyerBase", primary_key: "new_buyerId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_buyerBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_buyerBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_buyerBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_buyerExtensionBase", primary_key: "new_buyerId", force: true do |t|
    t.string  "new_name",           limit: 100
    t.uuid    "new_Municipality"
    t.string  "new_AddressLine1",   limit: 100
    t.string  "new_AddressLine2",   limit: 100
    t.string  "new_City",           limit: 100
    t.string  "new_State",          limit: 100
    t.string  "new_ZipCode",        limit: 100
    t.integer "new_Type"
    t.integer "new_DepartmentType"
    t.integer "new_UseCategory"
  end

  add_index "new_buyerExtensionBase", ["new_Municipality", "new_UseCategory", "new_Type", "new_DepartmentType", "new_AddressLine1"], name: "ndx_SystemManaged_new_buyer"
  add_index "new_buyerExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_checksBase", primary_key: "new_checksId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_checksBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_checksBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_checksBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_checksExtensionBase", primary_key: "new_checksId", force: true do |t|
    t.string   "new_name",            limit: 100
    t.datetime "new_CheckDate"
    t.decimal  "new_CheckAmount",                 precision: 23, scale: 10
    t.decimal  "new_AmountPaidCheck",             precision: 23, scale: 10
    t.decimal  "new_AmountAvailable",             precision: 23, scale: 10
    t.uuid     "new_VendorId"
  end

  add_index "new_checksExtensionBase", ["new_CheckDate", "new_VendorId", "new_CheckAmount", "new_AmountPaidCheck", "new_AmountAvailable"], name: "ndx_SystemManaged_new_checks"
  add_index "new_checksExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_employeeBase", primary_key: "new_employeeId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                               null: false
    t.integer  "OwnerIdType",                           null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "EmailAddress",              limit: 256
  end

  add_index "new_employeeBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_employeeBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_employeeBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_employeeExtensionBase", primary_key: "new_employeeId", force: true do |t|
    t.string   "new_name",                limit: 100
    t.string   "new_FirstName",           limit: 50
    t.string   "new_PositionTitle",       limit: 100
    t.integer  "new_Department"
    t.string   "new_EmployeeNumber",      limit: 5
    t.datetime "new_DateofBirth"
    t.boolean  "new_Sex"
    t.integer  "new_EmploymentType"
    t.integer  "new_MaritalStatus"
    t.string   "new_PersonalEmail",       limit: 100
    t.string   "new_PhoneNumber",         limit: 20
    t.string   "new_StreetAddress",       limit: 100
    t.string   "new_City",                limit: 100
    t.string   "new_State",               limit: 13
    t.string   "new_Zip",                 limit: 11
    t.decimal  "new_Hoursperweek",                    precision: 23, scale: 10
    t.decimal  "new_unloadedrate",                    precision: 23, scale: 10
    t.decimal  "new_YearlySalary",                    precision: 23, scale: 10
    t.uuid     "new_Supervisor"
    t.string   "new_MiddleInitial",       limit: 6
    t.string   "new_FullName",            limit: 100
    t.datetime "new_DateofHire"
    t.datetime "new_DateofTermination"
    t.boolean  "new_EmploymentStatus"
    t.integer  "new_ReasonofTermination"
    t.boolean  "new_Organization"
    t.string   "new_SSN",                 limit: 100
    t.string   "new_orgname",             limit: 100
    t.string   "new_EmployerID",          limit: 100
    t.string   "new_orgaddress",          limit: 100
    t.boolean  "new_EmploymentDuration"
    t.datetime "new_ScheduledEnddate"
    t.boolean  "new_FLSA"
    t.integer  "new_PositionClass"
    t.integer  "new_MBTAPass"
    t.string   "new_MBTACommuterZone",    limit: 2
    t.string   "new_OtherTransit",        limit: 100
    t.string   "new_MAPCPhoneNumber",     limit: 20
    t.string   "new_MaidenName",          limit: 100
    t.integer  "new_Ethnicity"
  end

  add_index "new_employeeExtensionBase", ["new_EmployeeNumber", "new_Organization", "new_FirstName"], name: "ndx_SystemManaged_new_employee"
  add_index "new_employeeExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_energyindicatorsBase", primary_key: "new_energyindicatorsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_energyindicatorsBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_energyindicatorsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_energyindicatorsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_energyindicatorsExtensionBase", primary_key: "new_energyindicatorsId", force: true do |t|
    t.string  "new_id",                       limit: 100
    t.uuid    "new_ProjectId"
    t.uuid    "new_MunicipalityId"
    t.integer "new_Status"
    t.decimal "new_ElectricitySaved",                     precision: 23, scale: 10
    t.decimal "new_ThermalEnergySavedtherms",             precision: 23, scale: 10
    t.decimal "new_TotalEnergySaved",                     precision: 23, scale: 10
    t.decimal "new_ValueofEnergySaved",                   precision: 23, scale: 10
    t.decimal "new_EmissionsReductions",                  precision: 23, scale: 10
    t.decimal "new_InstalledCapacity",                    precision: 23, scale: 10
    t.decimal "new_LifetimeGeneration",                   precision: 23, scale: 10
    t.text    "new_Comments"
    t.decimal "new_AnnualGeneration",                     precision: 23, scale: 10
  end

  add_index "new_energyindicatorsExtensionBase", ["new_ValueofEnergySaved", "new_TotalEnergySaved", "new_ThermalEnergySavedtherms", "new_Status", "new_ProjectId", "new_MunicipalityId", "new_LifetimeGeneration", "new_InstalledCapacity", "new_EmissionsReductions", "new_ElectricitySaved"], name: "ndx_SystemManaged_new_energyindicators"
  add_index "new_energyindicatorsExtensionBase", ["new_id"], name: "ndx_new_id"

  create_table "new_fcam_autonumberBase", primary_key: "new_fcam_autonumberId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_fcam_autonumberBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_fcam_autonumberBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_fcam_autonumberBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_fcam_autonumberExtensionBase", primary_key: "new_fcam_autonumberId", force: true do |t|
    t.string  "new_name",                 limit: 100
    t.string  "new_Prefix",               limit: 100
    t.string  "new_Sufix",                limit: 100
    t.string  "new_NextNumber",           limit: 100
    t.integer "new_NextCalculatedNumber"
  end

  add_index "new_fcam_autonumberExtensionBase", ["new_NextNumber", "new_NextCalculatedNumber"], name: "ndx_SystemManaged_new_fcam_autonumber"
  add_index "new_fcam_autonumberExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_fcam_buyerBase", primary_key: "new_fcam_buyerId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "EmailAddress",              limit: 256
  end

  add_index "new_fcam_buyerBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_fcam_buyerBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_fcam_buyerBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_fcam_buyerExtensionBase", primary_key: "new_fcam_buyerId", force: true do |t|
    t.string "new_name",           limit: 100
    t.uuid   "new_municipalityId"
    t.uuid   "new_Contact"
    t.string "new_Phone",          limit: 100
    t.string "new_FirstName",      limit: 100
    t.string "new_LastName",       limit: 100
    t.string "new_Title",          limit: 100
    t.string "new_Midname",        limit: 100
    t.string "new_Suffix",         limit: 100
    t.string "new_AddressLine1",   limit: 100
    t.string "new_State",          limit: 100
    t.string "new_ZIPCode",        limit: 100
    t.string "new_City",           limit: 100
  end

  add_index "new_fcam_buyerExtensionBase", ["new_Phone", "new_Contact"], name: "ndx_SystemManaged_new_fcam_buyer"
  add_index "new_fcam_buyerExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_fcam_checksfrombuyersBase", primary_key: "new_fcam_checksfrombuyersId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_fcam_checksfrombuyersBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_fcam_checksfrombuyersBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_fcam_checksfrombuyersBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_fcam_checksfrombuyersExtensionBase", primary_key: "new_fcam_checksfrombuyersId", force: true do |t|
    t.string   "new_name",                    limit: 100
    t.uuid     "new_VendorId"
    t.datetime "new_CheckDate"
    t.decimal  "new_CheckAmount",                         precision: 23, scale: 10
    t.decimal  "new_AmountPaidfromthisCheck",             precision: 23, scale: 10
    t.decimal  "new_AmountAvailable",                     precision: 23, scale: 10
  end

  add_index "new_fcam_checksfrombuyersExtensionBase", ["new_VendorId", "new_CheckDate", "new_CheckAmount", "new_AmountPaidfromthisCheck", "new_AmountAvailable"], name: "ndx_SystemManaged_new_fcam_checksfrombuyers"
  add_index "new_fcam_checksfrombuyersExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_fcam_contractBase", primary_key: "new_fcam_contractId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_fcam_contractBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_fcam_contractBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_fcam_contractBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_fcam_contractExtensionBase", primary_key: "new_fcam_contractId", force: true do |t|
    t.string  "new_name",                limit: 100
    t.decimal "new_TransactionFee",                  precision: 23, scale: 10
    t.string  "new_ContractDescription", limit: 100
    t.uuid    "new_VendorId"
  end

  add_index "new_fcam_contractExtensionBase", ["new_VendorId", "new_TransactionFee", "new_ContractDescription"], name: "ndx_SystemManaged_new_fcam_contract"
  add_index "new_fcam_contractExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_fcam_orderBase", primary_key: "new_fcam_orderId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_fcam_orderBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_fcam_orderBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_fcam_orderBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_fcam_orderExtensionBase", primary_key: "new_fcam_orderId", force: true do |t|
    t.string   "new_name",                     limit: 100
    t.datetime "new_OrderDate"
    t.string   "new_fiscalyear",               limit: 100
    t.string   "new_conractdescription",       limit: 100
    t.text     "new_Notes"
    t.integer  "new_UnitsBought"
    t.decimal  "new_BaseVehiclePrice",                     precision: 23, scale: 10
    t.boolean  "new_TransactionFeeStatus"
    t.decimal  "new_AmountDue",                            precision: 23, scale: 10
    t.datetime "new_DateTransactionFee"
    t.decimal  "new_DeliveredPrice",                       precision: 23, scale: 10
    t.decimal  "new_FCAMRoyalty",                          precision: 23, scale: 10
    t.decimal  "new_TransactionFee",                       precision: 23, scale: 10
    t.decimal  "new_VendorInvoicedAmount",                 precision: 23, scale: 10
    t.decimal  "new_TransactionFeeAmount",                 precision: 23, scale: 10
    t.decimal  "new_TransactionFeeRetained",               precision: 23, scale: 10
    t.decimal  "new_CheckAmount",                          precision: 23, scale: 10
    t.string   "new_FiscalYearTransactionFee", limit: 100
    t.string   "new_ContractDescription",      limit: 100
    t.uuid     "new_VendorId"
    t.uuid     "new_ContractId"
    t.uuid     "new_VehicleId"
    t.uuid     "new_BuyerId"
    t.uuid     "new_AutonumberId"
    t.integer  "new_Counter"
    t.integer  "new_RevisionNumber"
    t.string   "new_MAPCCheckFCAM",            limit: 100
    t.datetime "new_DateofMAPCPO"
    t.string   "new_MAPCPO_FCAM",              limit: 100
    t.decimal  "new_MAPCPOAmount_FCAM",                    precision: 23, scale: 10
    t.datetime "new_DateofMAPCCheck"
    t.string   "new_MAPCPO_Buyer",             limit: 100
    t.datetime "new_DateofMAPCPO_buyer"
    t.string   "new_MAPCChecktoBuyer",         limit: 100
    t.datetime "new_DateofMAPCChecktoBuyer"
    t.decimal  "new_Amount",                               precision: 23, scale: 10
    t.integer  "new_ApparatusType"
    t.string   "new_VendorAdress",             limit: 100
    t.string   "new_vendorscitystatezip",      limit: 100
    t.string   "new_VendorAutoNumber",         limit: 100
    t.uuid     "new_CheckId"
    t.uuid     "new_Municipality"
    t.string   "new_TextDate",                 limit: 100
    t.integer  "new_FCAMPymentStatus"
    t.integer  "new_RebatePaymentStatus"
    t.integer  "new_Rebate"
  end

  add_index "new_fcam_orderExtensionBase", ["new_Counter", "new_OrderDate", "new_BuyerId", "new_UnitsBought", "new_VendorInvoicedAmount", "new_VendorId", "new_VehicleId", "new_TransactionFeeAmount", "new_TransactionFeeStatus", "new_VendorAutoNumber", "new_RebatePaymentStatus", "new_FCAMPymentStatus", "new_DateTransactionFee"], name: "ndx_SystemManaged_new_fcam_order"
  add_index "new_fcam_orderExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_fcam_vehiclesBase", primary_key: "new_fcam_vehiclesId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_fcam_vehiclesBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_fcam_vehiclesBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_fcam_vehiclesBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_fcam_vehiclesExtensionBase", primary_key: "new_fcam_vehiclesId", force: true do |t|
    t.string  "new_name",          limit: 100
    t.integer "new_ApparatusType"
    t.decimal "new_BasePrice",                 precision: 23, scale: 10
  end

  add_index "new_fcam_vehiclesExtensionBase", ["new_BasePrice", "new_ApparatusType"], name: "ndx_SystemManaged_new_fcam_vehicles"
  add_index "new_fcam_vehiclesExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_fcam_vendorsBase", primary_key: "new_fcam_vendorsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.string   "EmailAddress",              limit: 256
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_fcam_vendorsBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_fcam_vendorsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_fcam_vendorsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_fcam_vendorsExtensionBase", primary_key: "new_fcam_vendorsId", force: true do |t|
    t.string "new_name",         limit: 100
    t.string "new_OfficialName", limit: 100
    t.string "new_AddresLine1",  limit: 100
    t.string "new_AddressLine2", limit: 100
    t.string "new_City",         limit: 100
    t.string "new_State",        limit: 100
    t.string "new_ZipCode",      limit: 100
    t.uuid   "new_MainContact"
    t.string "new_LastName",     limit: 100
    t.string "new_FirstName",    limit: 100
    t.string "new_Phone",        limit: 100
    t.string "new_Fax",          limit: 100
  end

  add_index "new_fcam_vendorsExtensionBase", ["new_OfficialName"], name: "ndx_SystemManaged_new_fcam_vendors"
  add_index "new_fcam_vendorsExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_gbpcfysBase", primary_key: "new_gbpcfysId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_gbpcfysBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_gbpcfysBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_gbpcfysBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_gbpcfysExtensionBase", primary_key: "new_gbpcfysId", force: true do |t|
    t.string   "new_name",                   limit: 100
    t.decimal  "new_TotalSales",                         precision: 23, scale: 10
    t.decimal  "new_TotalTransactionFees",               precision: 23, scale: 10
    t.decimal  "new_VehicleTransactionFees",             precision: 23, scale: 10
    t.decimal  "new_EqFees",                             precision: 23, scale: 10
    t.decimal  "new_TransactionFees20",                  precision: 23, scale: 10
    t.decimal  "new_TransactionFees25",                  precision: 23, scale: 10
    t.boolean  "new_ApplicableRate"
    t.decimal  "new_Quarter1",                           precision: 23, scale: 10
    t.decimal  "new_Quarter2",                           precision: 23, scale: 10
    t.decimal  "new_Quarter3",                           precision: 23, scale: 10
    t.decimal  "new_Quarter4",                           precision: 23, scale: 10
    t.decimal  "new_RemainingAmount",                    precision: 23, scale: 10
    t.integer  "new_FiscalYear"
    t.datetime "new_StartDate"
    t.datetime "new_EndDate"
    t.string   "new_Q1Chek",                 limit: 20
    t.string   "new_Q2Chek",                 limit: 20
    t.string   "new_Q3Chek",                 limit: 20
    t.string   "new_Q4Chek",                 limit: 20
    t.datetime "new_Q1CheckDate"
    t.datetime "new_Q2CheckDate"
    t.datetime "new_Q3CheckDate"
    t.datetime "new_Q4CheckDate"
  end

  add_index "new_gbpcfysExtensionBase", ["new_TotalTransactionFees", "new_TotalSales", "new_RemainingAmount", "new_ApplicableRate"], name: "ndx_SystemManaged_new_gbpcfys"
  add_index "new_gbpcfysExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_holidayworkrequestBase", primary_key: "new_holidayworkrequestId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_holidayworkrequestBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_holidayworkrequestBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_holidayworkrequestBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_holidayworkrequestExtensionBase", primary_key: "new_holidayworkrequestId", force: true do |t|
    t.string   "new_number",            limit: 100
    t.datetime "new_hDate"
    t.datetime "new_eday"
    t.integer  "new_Status"
    t.uuid     "new_ApprovingManager"
    t.boolean  "new_ApprovedbyManager"
    t.boolean  "new_ApprovedbyHR"
  end

  add_index "new_holidayworkrequestExtensionBase", ["new_ApprovingManager", "new_hDate", "new_eday", "new_Status"], name: "ndx_SystemManaged_new_holidayworkrequest"
  add_index "new_holidayworkrequestExtensionBase", ["new_number"], name: "ndx_new_number"

  create_table "new_hs_grantBase", primary_key: "new_hs_grantId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_hs_grantBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_hs_grantBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hs_grantBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hs_grantExtensionBase", primary_key: "new_hs_grantId", force: true do |t|
    t.string   "new_name",                   limit: 100
    t.string   "new_FiscalYear",             limit: 5
    t.string   "new_GrantID",                limit: 100
    t.decimal  "new_Budget",                             precision: 23, scale: 10
    t.datetime "new_enddate"
    t.decimal  "new_Allocated",                          precision: 23, scale: 10
    t.decimal  "new_NotAllocated",                       precision: 23, scale: 10
    t.decimal  "new_TotalAmountPaidbyEOPSS",             precision: 23, scale: 10
    t.decimal  "new_AmountRemaining",                    precision: 23, scale: 10
    t.string   "new_MAPCProjectCode",        limit: 100
    t.uuid     "new_RegionId"
    t.decimal  "new_Invoiced",                           precision: 23, scale: 10
    t.decimal  "new_Encumbered",                         precision: 23, scale: 10
    t.decimal  "new_OverUnder",                          precision: 23, scale: 10
    t.string   "new_picture",                limit: 100
    t.string   "new_pictureurl",             limit: 100
    t.integer  "new_POCouter"
    t.string   "new_NextPOAutonumber",       limit: 100
    t.string   "new_AutonumberSufix",        limit: 100
  end

  add_index "new_hs_grantExtensionBase", ["new_Budget", "new_TotalAmountPaidbyEOPSS", "new_OverUnder", "new_NotAllocated", "new_Invoiced", "new_Encumbered", "new_AmountRemaining", "new_Allocated"], name: "ndx_SystemManaged_new_hs_grant"
  add_index "new_hs_grantExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hs_invoiceBase", primary_key: "new_hs_invoiceId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_hs_invoiceBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_hs_invoiceBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hs_invoiceBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hs_invoiceExtensionBase", primary_key: "new_hs_invoiceId", force: true do |t|
    t.string  "new_name",        limit: 100
    t.decimal "new_TotalAmount",             precision: 23, scale: 10
    t.uuid    "new_Vendor"
    t.uuid    "new_RelatedPO"
    t.uuid    "new_SubProject"
    t.uuid    "new_Region"
    t.uuid    "new_Grant"
    t.uuid    "new_HSProject"
    t.uuid    "new_HSRegion"
  end

  add_index "new_hs_invoiceExtensionBase", ["new_Grant", "new_Vendor", "new_TotalAmount", "new_SubProject", "new_RelatedPO", "new_HSProject"], name: "ndx_SystemManaged_new_hs_invoice"
  add_index "new_hs_invoiceExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hs_paymentvoucherBase", primary_key: "new_hs_paymentvoucherId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_hs_paymentvoucherBase", ["CreatedOn"], name: "ndx_SystemManaged_new_hs_paymentvoucher"
  add_index "new_hs_paymentvoucherBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_hs_paymentvoucherBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hs_paymentvoucherBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hs_paymentvoucherExtensionBase", primary_key: "new_hs_paymentvoucherId", force: true do |t|
    t.string   "new_name",              limit: 100
    t.datetime "new_DateInvoiceSent"
    t.string   "new_BillingYear",       limit: 4
    t.string   "new_BillingMonth",      limit: 20
    t.datetime "new_PaymentDate"
    t.decimal  "new_TotalAmount",                   precision: 23, scale: 10
    t.decimal  "new_Balancedue",                    precision: 23, scale: 10
    t.decimal  "new_AmountPaidbyEOPSS",             precision: 23, scale: 10
    t.uuid     "new_Region"
    t.uuid     "new_Project"
    t.uuid     "new_Grant"
  end

  add_index "new_hs_paymentvoucherExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hs_projectBase", primary_key: "new_hs_projectId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_hs_projectBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_hs_projectBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hs_projectBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hs_projectExtensionBase", primary_key: "new_hs_projectId", force: true do |t|
    t.string  "new_name",                 limit: 100
    t.decimal "new_Budget",                           precision: 23, scale: 10
    t.string  "new_ProjectCode",          limit: 100
    t.string  "new_MAPCCode",             limit: 100
    t.string  "new_Investment",           limit: 100
    t.string  "new_HSRegion",             limit: 100
    t.uuid    "new_GrantId"
    t.decimal "new_InitialBudget",                    precision: 23, scale: 10
    t.decimal "new_Allocated",                        precision: 23, scale: 10
    t.decimal "new_NotAllocated",                     precision: 23, scale: 10
    t.decimal "new_Encumbered",                       precision: 23, scale: 10
    t.decimal "new_Invoiced",                         precision: 23, scale: 10
    t.decimal "new_OverUnder",                        precision: 23, scale: 10
    t.uuid    "new_Region"
    t.decimal "new_CurrentBudget",                    precision: 23, scale: 10
    t.integer "new_SubprojectAutoNumber"
    t.string  "new_SPAutonumbertext",     limit: 3
    t.string  "new_pictureurl",           limit: 100
  end

  add_index "new_hs_projectExtensionBase", ["new_ProjectCode", "new_OverUnder", "new_NotAllocated", "new_MAPCCode", "new_Invoiced", "new_Investment", "new_InitialBudget", "new_Encumbered", "new_CurrentBudget", "new_Allocated", "new_GrantId"], name: "ndx_SystemManaged_new_hs_project"
  add_index "new_hs_projectExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hs_regionsBase", primary_key: "new_hs_regionsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "EmailAddress",              limit: 256
  end

  add_index "new_hs_regionsBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_hs_regionsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hs_regionsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hs_regionsExtensionBase", primary_key: "new_hs_regionsId", force: true do |t|
    t.string  "new_name",        limit: 100
    t.string  "new_Acronym",     limit: 20
    t.integer "new_Population"
    t.integer "new_RegionID"
    t.decimal "new_Area",                    precision: 23, scale: 10
    t.string  "new_CFullName",   limit: 100
    t.string  "new_Address",     limit: 100
    t.string  "new_City",        limit: 100
    t.string  "new_State",       limit: 100
    t.string  "new_ZIPCode",     limit: 10
    t.string  "new_Web",         limit: 100
    t.uuid    "new_Chair"
    t.uuid    "new_ViceChair"
    t.uuid    "new_Coordinator"
    t.string  "new_extempt",     limit: 100
    t.string  "new_Phone",       limit: 100
    t.string  "new_PictureURL",  limit: 100
  end

  add_index "new_hs_regionsExtensionBase", ["new_Acronym", "new_Coordinator"], name: "ndx_SystemManaged_new_hs_regions"
  add_index "new_hs_regionsExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hs_subprojectBase", primary_key: "new_hs_subprojectId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_hs_subprojectBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_hs_subprojectBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hs_subprojectBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hs_subprojectExtensionBase", primary_key: "new_hs_subprojectId", force: true do |t|
    t.string  "new_name",             limit: 100
    t.string  "new_ID",               limit: 100
    t.string  "new_AccountCode",      limit: 100
    t.uuid    "new_HS_ProjectId"
    t.string  "new_ProjectCode",      limit: 100
    t.decimal "new_Budget",                       precision: 23, scale: 10
    t.string  "new_Expenditure",      limit: 100
    t.decimal "new_CurrentBudget",                precision: 23, scale: 10
    t.decimal "new_Allocated",                    precision: 23, scale: 10
    t.decimal "new_NotAllocated",                 precision: 23, scale: 10
    t.decimal "new_Encumbered",                   precision: 23, scale: 10
    t.decimal "new_Invoiced",                     precision: 23, scale: 10
    t.decimal "new_OverUnder",                    precision: 23, scale: 10
    t.uuid    "new_Grant"
    t.uuid    "new_Region"
    t.integer "new_Account"
    t.integer "new_ExpentitureCateg"
    t.integer "new_counter"
    t.string  "new_pictureurl",       limit: 100
  end

  add_index "new_hs_subprojectExtensionBase", ["new_ID", "new_OverUnder", "new_Invoiced", "new_Grant", "new_Encumbered", "new_Allocated", "new_ExpentitureCateg", "new_Account"], name: "ndx_SystemManaged_new_hs_subproject"
  add_index "new_hs_subprojectExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hsprocurementBase", primary_key: "new_hsprocurementId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_hsprocurementBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_hsprocurementBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hsprocurementBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hsprocurementExtensionBase", primary_key: "new_hsprocurementId", force: true do |t|
    t.string   "new_name",                   limit: 100
    t.datetime "new_DateofRequest"
    t.integer  "new_TypeofProcurement"
    t.string   "new_Description",            limit: 100
    t.integer  "new_AverageTimeframe"
    t.integer  "new_MaximumTimeframe"
    t.uuid     "new_RequestingOrganization"
    t.text     "new_Notes"
    t.datetime "new_DatePOissued"
    t.integer  "new_PerformanceStatus"
    t.datetime "new_expecteddate"
    t.datetime "new_MaximumDate"
    t.string   "new_PONumber",               limit: 100
    t.uuid     "new_RegionId"
    t.uuid     "new_GrantId"
    t.uuid     "new_ProjectId"
    t.uuid     "new_SubProjectId"
    t.string   "new_PONumbertext",           limit: 100
    t.integer  "new_Reason"
    t.datetime "new_DateCancelled"
    t.boolean  "new_CancelthisProcurement"
    t.integer  "new_overmaximum"
  end

  add_index "new_hsprocurementExtensionBase", ["new_TypeofProcurement", "new_PerformanceStatus", "new_MaximumDate", "new_expecteddate", "new_DatePOissued", "new_DateofRequest", "new_overmaximum"], name: "ndx_SystemManaged_new_hsprocurement"
  add_index "new_hsprocurementExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hspurchaseorderBase", primary_key: "new_hspurchaseorderId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_hspurchaseorderBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_hspurchaseorderBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hspurchaseorderBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_hspurchaseorderExtensionBase", primary_key: "new_hspurchaseorderId", force: true do |t|
    t.string   "new_name",                   limit: 100
    t.uuid     "new_PaymentVoucherId"
    t.datetime "new_DateVoucherSenttoEOPSS"
    t.datetime "new_DateInvoiceReceived"
    t.datetime "new_Expecteddate"
    t.datetime "new_MaximumSendingDate"
    t.integer  "new_ProcessingStatus"
    t.text     "new_Notes"
    t.decimal  "new_amount",                             precision: 23, scale: 10
    t.decimal  "new_Subtotal",                           precision: 23, scale: 10
    t.decimal  "new_Shipping",                           precision: 23, scale: 10
    t.uuid     "new_SubProjectId"
    t.uuid     "new_GrantId"
    t.uuid     "new_ProjectId"
    t.uuid     "new_RegionId"
    t.string   "new_ProjectCode",            limit: 100
    t.string   "new_Investment",             limit: 100
    t.string   "new_Expense",                limit: 100
    t.uuid     "new_Municipality"
    t.string   "new_ProcurementType",        limit: 100
    t.uuid     "new_Procurement"
    t.string   "new_MAPCProjectCode",        limit: 100
    t.string   "new_AccountCode",            limit: 100
    t.string   "new_Vendor",                 limit: 100
    t.string   "new_VendorAddress",          limit: 100
    t.string   "new_VendorAddress2",         limit: 100
    t.uuid     "new_VendorContact"
    t.string   "new_FullName",               limit: 100
    t.string   "new_Phone",                  limit: 100
    t.string   "new_Email",                  limit: 100
    t.string   "new_Item1Description",       limit: 100
    t.string   "new_Item2Description",       limit: 100
    t.string   "new_Item3Description",       limit: 100
    t.string   "new_Item4Description",       limit: 100
    t.string   "new_Item5Description",       limit: 100
    t.string   "new_Item6Description",       limit: 100
    t.string   "new_Item7Description",       limit: 100
    t.string   "new_Item8Description",       limit: 100
    t.string   "new_Item9Description",       limit: 100
    t.string   "new_Item10Description",      limit: 100
    t.integer  "new_Item1Quantity"
    t.integer  "new_Item2Quantity"
    t.integer  "new_Item3Quantity"
    t.integer  "new_Item4Quantity"
    t.integer  "new_Item5Quantity"
    t.integer  "new_Item6Quantity"
    t.integer  "new_Item7Quantity"
    t.integer  "new_Item8Quantity"
    t.integer  "new_Item9Quantity"
    t.integer  "new_Item10Quantity"
    t.decimal  "new_Item1Price",                         precision: 23, scale: 10
    t.decimal  "new_Item3Price",                         precision: 23, scale: 10
    t.decimal  "new_Item2Price",                         precision: 23, scale: 10
    t.decimal  "new_Item4Price",                         precision: 23, scale: 10
    t.decimal  "new_Item5Price",                         precision: 23, scale: 10
    t.decimal  "new_Item6Price",                         precision: 23, scale: 10
    t.decimal  "new_Item7Price",                         precision: 23, scale: 10
    t.decimal  "new_Item8Price",                         precision: 23, scale: 10
    t.decimal  "new_Item9Price",                         precision: 23, scale: 10
    t.decimal  "new_Item10Price",                        precision: 23, scale: 10
    t.decimal  "new_Item1Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item2Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item3Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item4Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item5Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item6Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item7Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item8Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item9Subtotal",                      precision: 23, scale: 10
    t.decimal  "new_Item10Subtotal",                     precision: 23, scale: 10
    t.uuid     "new_ShiptoOrganization"
    t.string   "new_Address",                limit: 100
    t.string   "new_CityStateZipCode",       limit: 100
    t.uuid     "new_Contact"
    t.string   "new_Phonev",                 limit: 100
    t.string   "new_Emailv",                 limit: 100
    t.string   "new_AEL",                    limit: 100
    t.datetime "new_DatePOCreated"
    t.string   "new_ProjectJustification",   limit: 100
    t.string   "new_AEL2",                   limit: 100
    t.string   "new_AEL3",                   limit: 100
    t.string   "new_AEL4",                   limit: 100
    t.string   "new_AEL5",                   limit: 100
    t.string   "new_AEL6",                   limit: 100
    t.string   "new_AEL7",                   limit: 100
    t.string   "new_AEL8",                   limit: 100
    t.string   "new_AEL9",                   limit: 100
    t.string   "new_AEL10",                  limit: 100
    t.string   "new_MAPCPhone",              limit: 100
    t.decimal  "new_Subprojectbudjet",                   precision: 23, scale: 10
    t.string   "new_MASalesExtempt",         limit: 100
    t.uuid     "new_VendorID"
    t.decimal  "new_Invoiced",                           precision: 23, scale: 10
    t.string   "new_pictureurl",             limit: 100
    t.string   "new_SubprojectCode",         limit: 100
    t.datetime "new_DateReceivingCopy"
    t.string   "new_Vouchertext",            limit: 100
    t.datetime "new_ReceivingCopyexpected"
    t.integer  "new_OverExpected"
    t.integer  "new_ReceivinCopyStatus"
    t.integer  "new_DaysOverRCTimeframe"
  end

  add_index "new_hspurchaseorderExtensionBase", ["new_ProcessingStatus", "new_MaximumSendingDate", "new_Expecteddate", "new_DateVoucherSenttoEOPSS", "new_DateInvoiceReceived", "new_Vouchertext", "new_ReceivinCopyStatus", "new_DaysOverRCTimeframe", "new_OverExpected"], name: "ndx_SystemManaged_new_hspurchaseorder"
  add_index "new_hspurchaseorderExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_hspurchaseorder_accountBase", primary_key: "new_hspurchaseorder_accountId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_hspurchaseorderid", null: false
    t.uuid   "accountid",             null: false
  end

  add_index "new_hspurchaseorder_accountBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_hspurchaseorder_accountBase", ["accountid"], name: "ndx_accountid"
  add_index "new_hspurchaseorder_accountBase", ["new_hspurchaseorderid", "accountid"], name: "ndx_new_hspurchaseorder_account", unique: true

  create_table "new_hspurchaseorder_accountExtensionBase", primary_key: "new_hspurchaseorder_accountId", force: true do |t|
  end

  create_table "new_leaverequestBase", primary_key: "new_leaverequestId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_leaverequestBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_leaverequestBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_leaverequestBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_leaverequestExtensionBase", primary_key: "new_leaverequestId", force: true do |t|
    t.string   "new_number",            limit: 100
    t.integer  "new_LeaveType"
    t.datetime "new_sd1"
    t.datetime "new_ed1"
    t.datetime "new_sd2"
    t.datetime "new_ed2"
    t.datetime "new_sd3"
    t.datetime "new_ed3"
    t.text     "new_Explanation"
    t.integer  "new_Status"
    t.boolean  "new_HRapproval"
    t.decimal  "new_TotalWorkinghours",             precision: 23, scale: 10
    t.decimal  "new_hoursperiod1",                  precision: 23, scale: 10
    t.decimal  "new_hoursperiod2",                  precision: 23, scale: 10
    t.decimal  "new_hoursperiod3",                  precision: 23, scale: 10
  end

  add_index "new_leaverequestExtensionBase", ["new_TotalWorkinghours", "new_Status", "new_sd1"], name: "ndx_SystemManaged_new_leaverequest"
  add_index "new_leaverequestExtensionBase", ["new_number"], name: "ndx_new_number"

  create_table "new_mapc_ordersBase", primary_key: "new_mapc_ordersId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mapc_ordersBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_mapc_ordersBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mapc_ordersBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mapc_ordersExtensionBase", primary_key: "new_mapc_ordersId", force: true do |t|
    t.string   "new_name",                       limit: 100
    t.datetime "new_OrderDate"
    t.integer  "new_Unitsbought"
    t.integer  "new_ModelYear"
    t.integer  "new_VehicleFuelType"
    t.boolean  "new_TransactionFeeStatus"
    t.string   "new_TransactionFeeCheckNumber",  limit: 100
    t.datetime "new_TransactionFeeDateReceived"
    t.string   "new_TransactionFeeFiscalYear",   limit: 100
    t.decimal  "new_VendorInvoicedAmount",                   precision: 23, scale: 10
    t.decimal  "new_TransactionFeeAmount",                   precision: 23, scale: 10
    t.decimal  "new_TransactionFeeRetained",                 precision: 23, scale: 10
    t.decimal  "new_TransactionFeeCBPC",                     precision: 23, scale: 10
    t.string   "new_VehicleType",                limit: 100
    t.string   "new_VehicleUse",                 limit: 100
    t.decimal  "new_HDTrucksBVP",                            precision: 23, scale: 10
    t.string   "new_ContractType",               limit: 100
    t.string   "new_VehicleMake",                limit: 100
    t.decimal  "new_Transactionfee",                         precision: 23, scale: 10
    t.string   "new_VendorAddress",              limit: 100
    t.string   "new_BuyersCity",                 limit: 100
    t.string   "new_BuyersState",                limit: 20
    t.string   "new_BuyersDepartmentType",       limit: 100
    t.string   "new_BuyersType",                 limit: 100
    t.uuid     "new_VendorId"
    t.uuid     "new_BuyerId"
    t.uuid     "new_ContractId"
    t.uuid     "new_VechicleId"
    t.string   "new_FiscalYear",                 limit: 100
    t.uuid     "new_SelectAutonumbers"
    t.boolean  "new_Revised"
    t.text     "new_Notes"
    t.string   "new_VendorCity",                 limit: 100
    t.string   "new_VendorState",                limit: 100
    t.string   "new_VendorZIPcode",              limit: 100
    t.integer  "new_RevisionNumber"
    t.integer  "new_CounterNumber"
    t.uuid     "new_Municipality"
    t.decimal  "new_Checkamount",                            precision: 23, scale: 10
    t.decimal  "new_Amountdue",                              precision: 23, scale: 10
    t.string   "new_SecondCheckNumber",          limit: 100
    t.decimal  "new_Secondcheckamount",                      precision: 23, scale: 10
    t.uuid     "new_GBPCOrderId"
    t.string   "new_VehicleIDNumber",            limit: 100
    t.uuid     "new_EqContract"
    t.uuid     "new_Equipment"
    t.integer  "new_Equnitsbought"
    t.string   "new_EqContractType",             limit: 100
    t.string   "new_EqType",                     limit: 100
    t.decimal  "new_VInvoicedAmount",                        precision: 23, scale: 10
    t.decimal  "new_EqTransactionFee",                       precision: 23, scale: 10
    t.decimal  "new_EquipmentInvoicedAmount",                precision: 23, scale: 10
    t.decimal  "new_VehicleTransactionFee",                  precision: 23, scale: 10
    t.decimal  "new_EqTransactionFeeAmount",                 precision: 23, scale: 10
    t.decimal  "new_VehicleFeeRetained",                     precision: 23, scale: 10
    t.decimal  "new_EqFeeRetained",                          precision: 23, scale: 10
    t.decimal  "new_VehicleFeeGBPC",                         precision: 23, scale: 10
    t.decimal  "new_EqFeetoGBPC",                            precision: 23, scale: 10
    t.decimal  "new_FeeRetained75",                          precision: 23, scale: 10
    t.decimal  "new_EqFeeRetained75",                        precision: 23, scale: 10
    t.decimal  "new_TotalFeeRetained75",                     precision: 23, scale: 10
    t.decimal  "new_VehicleFeeGBPC25",                       precision: 23, scale: 10
    t.decimal  "new_EqFeeGBPC25",                            precision: 23, scale: 10
    t.decimal  "new_TransactionFeeGBPC25",                   precision: 23, scale: 10
  end

  add_index "new_mapc_ordersExtensionBase", ["new_VendorInvoicedAmount", "new_VendorId", "new_OrderDate", "new_BuyerId", "new_VechicleId", "new_Unitsbought", "new_CounterNumber", "new_TransactionFeeAmount", "new_VehicleIDNumber", "new_TransactionFeeStatus", "new_TransactionFeeDateReceived"], name: "ndx_SystemManaged_new_mapc_orders"
  add_index "new_mapc_ordersExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mapc_projectassessmentBase", primary_key: "new_mapc_projectassessmentId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                                             null: false
    t.integer  "OwnerIdType",                                         null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                                           null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",              precision: 23, scale: 10
  end

  add_index "new_mapc_projectassessmentBase", ["CreatedOn"], name: "ndx_SystemManaged_new_mapc_projectassessment"
  add_index "new_mapc_projectassessmentBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_mapc_projectassessmentBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mapc_projectassessmentBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mapc_projectassessmentExtensionBase", primary_key: "new_mapc_projectassessmentId", force: true do |t|
    t.string   "new_name",                       limit: 100
    t.datetime "new_StartDate"
    t.datetime "new_AnticipatedEndDate"
    t.datetime "new_ActualCompletionDate"
    t.uuid     "new_SelectProject"
    t.integer  "new_LeadDepartment"
    t.string   "new_ProjectGeography",           limit: 100
    t.string   "new_KDriveLocation",             limit: 200
    t.integer  "new_Schedule"
    t.text     "new_ScheduleExperience"
    t.decimal  "new_InitialBudget"
    t.decimal  "new_initialbudget_Base"
    t.decimal  "new_FinalBudget"
    t.decimal  "new_finalbudget_Base"
    t.text     "new_BudgetExplain"
    t.integer  "new_FollowScope"
    t.text     "new_ScopeExperience"
    t.text     "new_Plus"
    t.text     "new_Delta"
    t.integer  "new_TeamPerformance"
    t.text     "new_TeamCollabComment"
    t.integer  "new_Partnerscollab"
    t.text     "new_Partnerscomment"
    t.text     "new_Innovativepublicengagement"
    t.integer  "new_PublicEngagementCategories"
    t.string   "new_engagementcategoriestext",   limit: 1000
    t.text     "new_PublicEngagementComment"
    t.string   "new_EquitySelection",            limit: 500
    t.text     "new_EqutyAdvanced"
    t.integer  "new_Equitycategories"
    t.string   "new_equitytext",                 limit: 2000
    t.text     "new_KeyDeliverables"
    t.integer  "new_Deliverablessatisfaction"
    t.text     "new_DeliverablesComments"
    t.text     "new_ImplementationChallenges"
    t.text     "new_MAPCRole"
    t.boolean  "new_MAPCRoleYN"
    t.text     "new_AlreadyImplemented"
    t.text     "new_LongTermOutcomes"
    t.text     "new_GoalsComment"
    t.text     "new_TextEquity"
    t.integer  "new_ProjectStatus"
    t.string   "new_AssessmentStatus",           limit: 100
    t.string   "new_AssessedProject",            limit: 150
    t.boolean  "new_IsComplete"
  end

  add_index "new_mapc_projectassessmentExtensionBase", ["new_AssessmentStatus", "new_SelectProject"], name: "ndx_SystemManaged_new_mapc_projectassessment"
  add_index "new_mapc_projectassessmentExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mapccontractsBase", primary_key: "new_mapccontractsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mapccontractsBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_mapccontractsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mapccontractsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mapccontractsExtensionBase", primary_key: "new_mapccontractsId", force: true do |t|
    t.string   "new_name",              limit: 100
    t.string   "new_Description",       limit: 150
    t.uuid     "new_Contractor"
    t.string   "new_MAPCProjectNumber", limit: 100
    t.integer  "new_MAPCDepartment"
    t.datetime "new_StartDate"
    t.datetime "new_EndDate"
    t.integer  "new_CurrentStatus"
    t.decimal  "new_TotalAmount",                   precision: 23, scale: 10
    t.decimal  "new_PassThroughAmount",             precision: 23, scale: 10
    t.decimal  "new_MAPCRetains",                   precision: 23, scale: 10
    t.integer  "new_ContractType"
    t.datetime "new_CompletionDate"
    t.string   "new_FiscalYear",        limit: 100
    t.integer  "new_EOPSSRegion"
    t.integer  "new_BudgetCategory"
    t.integer  "new_TypeofFunding"
    t.datetime "new_ReportDate"
    t.uuid     "new_Autonumber"
    t.uuid     "new_ProjectId"
    t.boolean  "new_Housing"
  end

  add_index "new_mapccontractsExtensionBase", ["new_TypeofFunding", "new_TotalAmount", "new_StartDate", "new_MAPCProjectNumber", "new_MAPCDepartment", "new_FiscalYear", "new_EndDate", "new_Description", "new_CurrentStatus", "new_Contractor", "new_ContractType", "new_CompletionDate", "new_BudgetCategory", "new_ReportDate"], name: "ndx_SystemManaged_new_mapccontracts"
  add_index "new_mapccontractsExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mapcgoalBase", primary_key: "new_mapcgoalId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mapcgoalBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_mapcgoalBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mapcgoalBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mapcgoalExtensionBase", primary_key: "new_mapcgoalId", force: true do |t|
    t.string  "new_name",              limit: 200
    t.integer "new_Number"
    t.uuid    "new_MFGoalId"
    t.uuid    "new_projectdonotuseId"
  end

  add_index "new_mapcgoalExtensionBase", ["new_Number", "new_MFGoalId"], name: "ndx_SystemManaged_new_mapcgoal"
  add_index "new_mapcgoalExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mapcprojectBase", primary_key: "new_mapcprojectId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                               null: false
    t.integer  "OwnerIdType",                           null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.string   "EmailAddress",              limit: 256
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mapcprojectBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_mapcprojectBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mapcprojectBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mapcprojectExtensionBase", primary_key: "new_mapcprojectId", force: true do |t|
    t.string   "new_name",                     limit: 100
    t.string   "new_MAPCProjectnr",            limit: 15
    t.decimal  "new_TotalBudget",                           precision: 23, scale: 10
    t.integer  "new_LeadDepartment"
    t.integer  "new_Collaboration"
    t.text     "new_collaborationtext"
    t.datetime "new_StartDate"
    t.datetime "new_EndDate"
    t.text     "new_ShortDescription"
    t.string   "new_Website",                  limit: 120
    t.uuid     "new_MetroFutureSubGoals"
    t.string   "new_lookuptext",               limit: 4000
    t.string   "new_LocationAddress",          limit: 100
    t.string   "new_LocationCity",             limit: 100
    t.string   "new_LocationZip",              limit: 100
    t.string   "new_LocationState",            limit: 100
    t.string   "new_LocationCountry",          limit: 100
    t.string   "new_Latitude",                 limit: 100
    t.string   "new_Longitude",                limit: 100
    t.string   "new_textgoals",                limit: 4000
    t.string   "new_textstrategies",           limit: 4000
    t.string   "new_textsubstrategies",        limit: 4000
    t.string   "new_ProjectFolderLocation",    limit: 1000
    t.text     "new_ProjectsSummary"
    t.string   "new_pictureguid",              limit: 150
    t.text     "new_Deliverables"
    t.text     "new_ProjectAreaContext"
    t.text     "new_PartnersResponsabilities"
    t.text     "new_BackgroundResearch"
    t.text     "new_Comunications"
    t.text     "new_Preparation"
    t.text     "new_ProjectManagement"
    t.text     "new_PartnerRoles"
    t.text     "new_ProcessBenchmarks"
    t.text     "new_DesiredOutcomes"
    t.text     "new_EquityConsiderations"
    t.text     "new_Button"
    t.boolean  "new_Equity"
    t.integer  "new_ProjectStatus"
    t.integer  "new_Fundingmain"
    t.string   "new_Funding",                  limit: 100
    t.string   "new_CollabExt",                limit: 100
    t.string   "new_Clienttext",               limit: 100
    t.integer  "new_MunicipalitiesType"
    t.string   "new_Timingtext",               limit: 100
    t.integer  "new_count"
    t.boolean  "new_Checksubgoals"
    t.boolean  "new_CheckSubStrategies"
    t.integer  "new_EquityCategory"
    t.integer  "new_TypeofFunding"
    t.boolean  "new_Showonwebsite"
    t.text     "new_equitytext"
    t.uuid     "new_ExternalPartner"
    t.boolean  "new_IsthisProjectPermanent"
    t.uuid     "new_Client"
    t.datetime "new_ActualCompletionDate"
    t.text     "new_geoexplain"
    t.string   "new_goalsassociate",           limit: 4000
    t.text     "new_ShortAccomplishments"
    t.text     "new_LongAccomplishments"
    t.boolean  "new_IncludesZoning"
    t.boolean  "new_ZoningAdopted"
    t.text     "new_Othercomments"
    t.uuid     "new_PrimaryFunding"
    t.boolean  "new_sp_equity"
    t.boolean  "new_sp_RegionalCollaboration"
    t.boolean  "new_StrPrClimateChange"
    t.boolean  "new_sp_SmartGrowth"
    t.uuid     "new_Autonumber"
    t.boolean  "new_timeperiod"
  end

  add_index "new_mapcprojectExtensionBase", ["new_LeadDepartment", "new_count", "new_StartDate", "new_ProjectStatus", "new_MunicipalitiesType", "new_Fundingmain", "new_EndDate", "new_Equity", "new_timeperiod", "new_ActualCompletionDate", "new_Showonwebsite", "new_TotalBudget", "new_PrimaryFunding"], name: "ndx_SystemManaged_new_mapcproject"
  add_index "new_mapcprojectExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mapcpurchaseorderBase", primary_key: "new_mapcpurchaseorderId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mapcpurchaseorderBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_mapcpurchaseorderBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mapcpurchaseorderBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mapcpurchaseorderExtensionBase", primary_key: "new_mapcpurchaseorderId", force: true do |t|
    t.string   "new_name",            limit: 100
    t.datetime "new_Date"
    t.uuid     "new_Vendor"
    t.string   "new_Description",     limit: 400
    t.decimal  "new_Price",                       precision: 23, scale: 10
    t.string   "new_VendorAddress",   limit: 200
    t.string   "new_Terms",           limit: 100
    t.datetime "new_DeliveryDate"
    t.boolean  "new_Instructions"
    t.string   "new_Indirect",        limit: 100
    t.string   "new_DirectProject",   limit: 100
    t.uuid     "new_Givecheck"
    t.integer  "new_VendorCategory"
    t.string   "new_StateContract",   limit: 100
    t.boolean  "new_SoleSource"
    t.boolean  "new_30BExempt"
    t.string   "new_ExemptCategory",  limit: 100
    t.boolean  "new_State"
    t.string   "new_recom",           limit: 100
    t.string   "new_Vendor1",         limit: 100
    t.string   "new_Vendor2",         limit: 100
    t.string   "new_Vendor3",         limit: 100
    t.string   "new_Contact1",        limit: 100
    t.string   "new_Contact2",        limit: 100
    t.string   "new_Contact3",        limit: 100
    t.string   "new_Phone1",          limit: 100
    t.string   "new_Phone2",          limit: 100
    t.string   "new_Phone3",          limit: 100
    t.string   "new_Date1",           limit: 100
    t.string   "new_Date2",           limit: 100
    t.string   "new_Date3",           limit: 100
    t.decimal  "new_Amount1",                     precision: 23, scale: 10
    t.decimal  "new_Amount2",                     precision: 23, scale: 10
    t.decimal  "new_Amount3",                     precision: 23, scale: 10
    t.integer  "new_ExpenseCategory"
    t.integer  "new_Department"
  end

  add_index "new_mapcpurchaseorderExtensionBase", ["new_Date", "new_Vendor", "new_Price", "new_Description", "new_ExpenseCategory", "new_Department"], name: "ndx_SystemManaged_new_mapcpurchaseorder"
  add_index "new_mapcpurchaseorderExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mapcsubregionBase", primary_key: "new_mapcsubregionId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mapcsubregionBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_mapcsubregionBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mapcsubregionBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mapcsubregionExtensionBase", primary_key: "new_mapcsubregionId", force: true do |t|
    t.string "new_MAPC_Subregion",  limit: 100
    t.uuid   "new_Organization"
    t.uuid   "new_MAPCcoordinator"
    t.string "new_FullName",        limit: 100
  end

  add_index "new_mapcsubregionExtensionBase", ["new_MAPC_Subregion"], name: "ndx_new_MAPC_Subregion"
  add_index "new_mapcsubregionExtensionBase", ["new_MAPCcoordinator", "new_FullName"], name: "ndx_SystemManaged_new_mapcsubregion"

  create_table "new_mfuturegoalsBase", primary_key: "new_mfuturegoalsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mfuturegoalsBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_mfuturegoalsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mfuturegoalsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mfuturegoalsExtensionBase", primary_key: "new_mfuturegoalsId", force: true do |t|
    t.string  "new_name",        limit: 150
    t.integer "new_Number"
    t.string  "new_Description", limit: 300
  end

  add_index "new_mfuturegoalsExtensionBase", ["new_Number", "new_Description"], name: "ndx_SystemManaged_new_mfuturegoals"
  add_index "new_mfuturegoalsExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mfutureobjectiveBase", primary_key: "new_mfutureobjectiveId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mfutureobjectiveBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_mfutureobjectiveBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mfutureobjectiveBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mfutureobjectiveExtensionBase", primary_key: "new_mfutureobjectiveId", force: true do |t|
    t.string  "new_name",              limit: 350
    t.uuid    "new_MFutureSubGoalId"
    t.string  "new_MetricsDefinition", limit: 200
    t.decimal "new_MetricsValue",                  precision: 23, scale: 10
    t.integer "new_MetricsType"
    t.integer "new_MetricsTarget"
    t.decimal "new_BaselineValue",                 precision: 23, scale: 10
    t.uuid    "new_MfutureGoalId"
  end

  add_index "new_mfutureobjectiveExtensionBase", ["new_MFutureSubGoalId"], name: "ndx_for_cascaderelationship_new_mapcgoal_objective"
  add_index "new_mfutureobjectiveExtensionBase", ["new_MfutureGoalId", "new_MetricsValue", "new_MetricsTarget", "new_BaselineValue"], name: "ndx_SystemManaged_new_mfutureobjective"
  add_index "new_mfutureobjectiveExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_mfuturestrategyBase", primary_key: "new_mfuturestrategyId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mfuturestrategyBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_mfuturestrategyBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mfuturestrategyBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mfuturestrategyExtensionBase", primary_key: "new_mfuturestrategyId", force: true do |t|
    t.string  "new_name",   limit: 100
    t.integer "new_number"
  end

  add_index "new_mfuturestrategyExtensionBase", ["new_name"], name: "ndx_new_name"
  add_index "new_mfuturestrategyExtensionBase", ["new_number"], name: "ndx_SystemManaged_new_mfuturestrategy"

  create_table "new_mfuturestrategy_mapcgoalBase", primary_key: "new_mfuturestrategy_mapcgoalId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mfuturestrategyid", null: false
    t.uuid   "new_mapcgoalid",        null: false
  end

  add_index "new_mfuturestrategy_mapcgoalBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mfuturestrategy_mapcgoalBase", ["new_mapcgoalid"], name: "ndx_new_mapcgoalid"
  add_index "new_mfuturestrategy_mapcgoalBase", ["new_mfuturestrategyid", "new_mapcgoalid"], name: "ndx_new_mfuturestrategy_mapcgoal", unique: true

  create_table "new_mfuturestrategy_mapcgoalExtensionBase", primary_key: "new_mfuturestrategy_mapcgoalId", force: true do |t|
  end

  create_table "new_mfuturesubstrategyBase", primary_key: "new_mfuturesubstrategyId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_mfuturesubstrategyBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_mfuturesubstrategyBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_mfuturesubstrategyBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_mfuturesubstrategyExtensionBase", primary_key: "new_mfuturesubstrategyId", force: true do |t|
    t.string  "new_name",       limit: 100
    t.string  "new_number",     limit: 100
    t.uuid    "new_StrategyId"
    t.integer "new_order"
  end

  add_index "new_mfuturesubstrategyExtensionBase", ["new_name"], name: "ndx_new_name"
  add_index "new_mfuturesubstrategyExtensionBase", ["new_number", "new_StrategyId"], name: "ndx_SystemManaged_new_mfuturesubstrategy"

  create_table "new_municipalitiesBase", primary_key: "new_municipalitiesId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_municipalitiesBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_municipalitiesBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_municipalitiesBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_municipalitiesExtensionBase", primary_key: "new_municipalitiesId", force: true do |t|
    t.string  "new_name",                        limit: 100
    t.string  "new_Prefix",                      limit: 10
    t.string  "new_County",                      limit: 100
    t.boolean "new_CTPS"
    t.string  "new_MAPCCoordinator",             limit: 100
    t.string  "new_Communitytype",               limit: 100
    t.string  "new_RegionalPlanningAgency",      limit: 100
    t.string  "new_State",                       limit: 100
    t.string  "new_Country",                     limit: 100
    t.uuid    "new_MAPCSubregionId"
    t.boolean "new_MetroFuture"
    t.uuid    "new_Organization"
    t.integer "new_TownIDMA_TownsSimplifiedMap"
    t.decimal "new_Population",                              precision: 23, scale: 10
    t.decimal "new_Unemploymentrate",                        precision: 23, scale: 10
    t.string  "new_GeoID",                       limit: 17
  end

  add_index "new_municipalitiesExtensionBase", ["new_RegionalPlanningAgency", "new_Prefix", "new_MetroFuture", "new_MAPCSubregionId", "new_MAPCCoordinator", "new_County", "new_Communitytype"], name: "ndx_SystemManaged_new_municipalities"
  add_index "new_municipalitiesExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_new_fcam_contract_vehiclesBase", primary_key: "new_new_fcam_contract_vehiclesId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_fcam_contractid", null: false
    t.uuid   "new_fcam_vehiclesid", null: false
  end

  add_index "new_new_fcam_contract_vehiclesBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_new_fcam_contract_vehiclesBase", ["new_fcam_contractid", "new_fcam_vehiclesid"], name: "ndx_new_new_fcam_contract_vehicles", unique: true
  add_index "new_new_fcam_contract_vehiclesBase", ["new_fcam_vehiclesid"], name: "ndx_new_fcam_vehiclesid"

  create_table "new_new_fcam_contract_vehiclesExtensionBase", primary_key: "new_new_fcam_contract_vehiclesId", force: true do |t|
  end

  create_table "new_new_mapcproject_goalBase", primary_key: "new_new_mapcproject_goalId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mapcprojectid", null: false
    t.uuid   "new_mapcgoalid",    null: false
  end

  add_index "new_new_mapcproject_goalBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_new_mapcproject_goalBase", ["new_mapcgoalid"], name: "ndx_new_mapcgoalid"
  add_index "new_new_mapcproject_goalBase", ["new_mapcprojectid", "new_mapcgoalid"], name: "ndx_new_new_mapcproject_goal", unique: true

  create_table "new_new_mapcproject_goalExtensionBase", primary_key: "new_new_mapcproject_goalId", force: true do |t|
  end

  create_table "new_new_mapcproject_municipalitiesBase", primary_key: "new_new_mapcproject_municipalitiesId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mapcprojectid",    null: false
    t.uuid   "new_municipalitiesid", null: false
  end

  add_index "new_new_mapcproject_municipalitiesBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_new_mapcproject_municipalitiesBase", ["new_mapcprojectid", "new_municipalitiesid"], name: "ndx_new_new_mapcproject_municipalities", unique: true
  add_index "new_new_mapcproject_municipalitiesBase", ["new_municipalitiesid"], name: "ndx_new_municipalitiesid"

  create_table "new_new_mapcproject_municipalitiesExtensionBase", primary_key: "new_new_mapcproject_municipalitiesId", force: true do |t|
  end

  create_table "new_new_project_new_municipalitiesBase", primary_key: "new_new_project_new_municipalitiesId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_projectid",        null: false
    t.uuid   "new_municipalitiesid", null: false
  end

  add_index "new_new_project_new_municipalitiesBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_new_project_new_municipalitiesBase", ["new_municipalitiesid"], name: "ndx_new_municipalitiesid"
  add_index "new_new_project_new_municipalitiesBase", ["new_projectid", "new_municipalitiesid"], name: "ndx_new_new_project_new_municipalities", unique: true

  create_table "new_new_project_new_municipalitiesExtensionBase", primary_key: "new_new_project_new_municipalitiesId", force: true do |t|
  end

  create_table "new_new_vehicle_new_buyerBase", primary_key: "new_new_vehicle_new_buyerId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_vehicleid", null: false
    t.uuid   "new_buyerid",   null: false
  end

  add_index "new_new_vehicle_new_buyerBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_new_vehicle_new_buyerBase", ["new_buyerid"], name: "ndx_new_buyerid"
  add_index "new_new_vehicle_new_buyerBase", ["new_vehicleid", "new_buyerid"], name: "ndx_new_new_vehicle_new_buyer", unique: true

  create_table "new_new_vehicle_new_buyerExtensionBase", primary_key: "new_new_vehicle_new_buyerId", force: true do |t|
  end

  create_table "new_new_vehicle_new_vendorBase", primary_key: "new_new_vehicle_new_vendorId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_vehicleid", null: false
    t.uuid   "new_vendorid",  null: false
  end

  add_index "new_new_vehicle_new_vendorBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_new_vehicle_new_vendorBase", ["new_vehicleid", "new_vendorid"], name: "ndx_new_new_vehicle_new_vendor", unique: true
  add_index "new_new_vehicle_new_vendorBase", ["new_vendorid"], name: "ndx_new_vendorid"

  create_table "new_new_vehicle_new_vendorExtensionBase", primary_key: "new_new_vehicle_new_vendorId", force: true do |t|
  end

  create_table "new_new_vehicle_new_vendorcontractBase", primary_key: "new_new_vehicle_new_vendorcontractId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_vehicleid",        null: false
    t.uuid   "new_vendorcontractid", null: false
  end

  add_index "new_new_vehicle_new_vendorcontractBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_new_vehicle_new_vendorcontractBase", ["new_vehicleid", "new_vendorcontractid"], name: "ndx_new_new_vehicle_new_vendorcontract", unique: true
  add_index "new_new_vehicle_new_vendorcontractBase", ["new_vendorcontractid"], name: "ndx_new_vendorcontractid"

  create_table "new_new_vehicle_new_vendorcontractExtensionBase", primary_key: "new_new_vehicle_new_vendorcontractId", force: true do |t|
  end

  create_table "new_oscontractBase", primary_key: "new_oscontractId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.string   "EmailAddress",              limit: 256
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_oscontractBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_oscontractBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_oscontractBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_oscontractExtensionBase", primary_key: "new_oscontractId", force: true do |t|
    t.string   "new_name",             limit: 100
    t.uuid     "new_Vendor"
    t.string   "new_Description",      limit: 100
    t.integer  "new_AwardYear"
    t.integer  "new_ContractYear"
    t.decimal  "new_TransactionFee",               precision: 23, scale: 10
    t.decimal  "new_VendorAmount",                 precision: 23, scale: 10
    t.decimal  "new_FeeAmount",                    precision: 23, scale: 10
    t.uuid     "new_SelectAutonumber"
    t.string   "new_ContractNumber",   limit: 100
    t.boolean  "new_BillsReceived"
    t.integer  "new_prStatus"
    t.datetime "new_Responseduedate"
    t.decimal  "new_Braintree",                    precision: 23, scale: 10
    t.decimal  "new_Cohasset",                     precision: 23, scale: 10
    t.decimal  "new_Duxbury",                      precision: 23, scale: 10
    t.decimal  "new_Hingham",                      precision: 23, scale: 10
    t.decimal  "new_Hull",                         precision: 23, scale: 10
    t.decimal  "new_Marshfield",                   precision: 23, scale: 10
    t.decimal  "new_Milton",                       precision: 23, scale: 10
    t.decimal  "new_Norwell",                      precision: 23, scale: 10
    t.decimal  "new_Pembroke",                     precision: 23, scale: 10
    t.decimal  "new_Scituate",                     precision: 23, scale: 10
    t.decimal  "new_Weymouth",                     precision: 23, scale: 10
    t.string   "new_VendorContact",    limit: 100
    t.string   "new_VendorPhone",      limit: 100
    t.string   "new_VendorAddress",    limit: 100
    t.string   "new_VendorFirstName",  limit: 100
    t.string   "new_VendorLastName",   limit: 100
    t.string   "new_Salutation",       limit: 100
    t.decimal  "new_tBraintree",                   precision: 23, scale: 10
    t.decimal  "new_tCohasset",                    precision: 23, scale: 10
    t.decimal  "new_tDuxbury",                     precision: 23, scale: 10
    t.decimal  "new_tHingham",                     precision: 23, scale: 10
    t.decimal  "new_tHull",                        precision: 23, scale: 10
    t.decimal  "new_tMarshfield",                  precision: 23, scale: 10
    t.decimal  "new_tPembroke",                    precision: 23, scale: 10
    t.decimal  "new_tScituate",                    precision: 23, scale: 10
    t.decimal  "new_tMilton",                      precision: 23, scale: 10
    t.decimal  "new_tNorwell",                     precision: 23, scale: 10
    t.decimal  "new_tWeymouth",                    precision: 23, scale: 10
    t.uuid     "new_PrimaryContact"
  end

  add_index "new_oscontractExtensionBase", ["new_Vendor", "new_FeeAmount", "new_prStatus", "new_Description", "new_ContractYear", "new_ContractNumber", "new_BillsReceived", "new_AwardYear", "new_VendorAmount"], name: "ndx_SystemManaged_new_oscontract"
  add_index "new_oscontractExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_pdrequestBase", primary_key: "new_pdrequestId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_pdrequestBase", ["CreatedOn"], name: "ndx_SystemManaged_new_pdrequest"
  add_index "new_pdrequestBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_pdrequestBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_pdrequestBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_pdrequestExtensionBase", primary_key: "new_pdrequestId", force: true do |t|
    t.string   "new_eventname",                     limit: 100
    t.integer  "new_EventType"
    t.integer  "new_nremployees"
    t.text     "new_Benefit"
    t.boolean  "new_ApprovedDD"
    t.datetime "new_StartDate"
    t.datetime "new_EndDate"
    t.boolean  "new_Submitted"
    t.decimal  "new_Registration",                               precision: 23, scale: 10
    t.decimal  "new_AirBusTrain",                                precision: 23, scale: 10
    t.decimal  "new_Hotel",                                      precision: 23, scale: 10
    t.decimal  "new_Meal",                                       precision: 23, scale: 10
    t.decimal  "new_LocalTransportation",                        precision: 23, scale: 10
    t.decimal  "new_Miscellaneous",                              precision: 23, scale: 10
    t.string   "new_Other",                         limit: 100
    t.decimal  "new_maxperperson",                               precision: 23, scale: 10
    t.decimal  "new_PDreg",                                      precision: 23, scale: 10
    t.decimal  "new_Proftravel",                                 precision: 23, scale: 10
    t.decimal  "new_PDHotel",                                    precision: 23, scale: 10
    t.decimal  "new_PDMeal",                                     precision: 23, scale: 10
    t.decimal  "new_PDLocTransp",                                precision: 23, scale: 10
    t.decimal  "new_PDMisc",                                     precision: 23, scale: 10
    t.decimal  "new_PDOther",                                    precision: 23, scale: 10
    t.decimal  "new_PDTotal",                                    precision: 23, scale: 10
    t.decimal  "new_Otherreg",                                   precision: 23, scale: 10
    t.decimal  "new_OtherTravel",                                precision: 23, scale: 10
    t.decimal  "new_OtherHotel",                                 precision: 23, scale: 10
    t.decimal  "new_OtherMeal",                                  precision: 23, scale: 10
    t.decimal  "new_OtherLocTransp",                             precision: 23, scale: 10
    t.decimal  "new_OtherMisc",                                  precision: 23, scale: 10
    t.decimal  "new_OOther",                                     precision: 23, scale: 10
    t.decimal  "new_OtherTotal",                                 precision: 23, scale: 10
    t.decimal  "new_BillableTime",                               precision: 23, scale: 10
    t.decimal  "new_PDBillableTime",                             precision: 23, scale: 10
    t.decimal  "new_OtherBillableTime",                          precision: 23, scale: 10
    t.integer  "new_Numberofdays"
    t.string   "new_City",                          limit: 20
    t.string   "new_State",                         limit: 20
    t.string   "new_Country",                       limit: 20
    t.integer  "new_ApprovalStatus"
    t.string   "new_RequestNumber",                 limit: 100
    t.decimal  "new_MaxAmountnotime",                            precision: 23, scale: 10
    t.decimal  "new_MaxAmountPDtime",                            precision: 23, scale: 10
    t.string   "new_Participantstext",              limit: 4000
    t.decimal  "new_othercost",                                  precision: 23, scale: 10
    t.decimal  "new_NumberofBillabledays",                       precision: 23, scale: 10
    t.decimal  "new_EstCostTime",                                precision: 23, scale: 10
    t.decimal  "new_TotalCost",                                  precision: 23, scale: 10
    t.decimal  "new_TotalCostPD",                                precision: 23, scale: 10
    t.decimal  "new_EstimatedCostofPDBillableTime",              precision: 23, scale: 10
    t.string   "new_names",                         limit: 1000
    t.decimal  "new_Amountothersources",                         precision: 23, scale: 10
    t.string   "new_NameProjects",                  limit: 200
  end

  add_index "new_pdrequestExtensionBase", ["new_StartDate", "new_RequestNumber", "new_EventType", "new_EndDate", "new_ApprovalStatus", "new_nremployees", "new_Numberofdays"], name: "ndx_SystemManaged_new_pdrequest"
  add_index "new_pdrequestExtensionBase", ["new_eventname"], name: "ndx_new_eventname"

  create_table "new_pdrequest_participantBase", primary_key: "new_pdrequest_participantId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_pdrequestid", null: false
    t.uuid   "systemuserid",    null: false
  end

  add_index "new_pdrequest_participantBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_pdrequest_participantBase", ["new_pdrequestid", "systemuserid"], name: "ndx_new_pdrequest_participant", unique: true
  add_index "new_pdrequest_participantBase", ["systemuserid"], name: "ndx_systemuserid"

  create_table "new_pdrequest_participantExtensionBase", primary_key: "new_pdrequest_participantId", force: true do |t|
  end

  create_table "new_personalpdrequestBase", primary_key: "new_personalpdrequestId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_personalpdrequestBase", ["CreatedOn"], name: "ndx_SystemManaged_new_personalpdrequest"
  add_index "new_personalpdrequestBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_personalpdrequestBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_personalpdrequestBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_personalpdrequestExtensionBase", primary_key: "new_personalpdrequestId", force: true do |t|
    t.string   "new_number",                     limit: 100
    t.uuid     "new_PDRequestId"
    t.string   "new_EventName",                  limit: 100
    t.datetime "new_StartDate"
    t.datetime "new_EndDate"
    t.boolean  "new_subapproval"
    t.boolean  "new_Approved"
    t.integer  "new_Roleattheevent"
    t.integer  "new_Department"
    t.string   "new_City",                       limit: 100
    t.string   "new_State",                      limit: 100
    t.string   "new_Country",                    limit: 100
    t.text     "new_Description"
    t.integer  "new_daysParticipating"
    t.decimal  "new_hrsbilledPD",                            precision: 23, scale: 10
    t.decimal  "new_RegistrationFee",                        precision: 23, scale: 10
    t.decimal  "new_BillableHours",                          precision: 23, scale: 10
    t.decimal  "new_pdTravel",                               precision: 23, scale: 10
    t.decimal  "new_pdhotel",                                precision: 23, scale: 10
    t.decimal  "new_PDMeal",                                 precision: 23, scale: 10
    t.decimal  "new_pdLocal",                                precision: 23, scale: 10
    t.decimal  "new_pdMisc",                                 precision: 23, scale: 10
    t.decimal  "new_pdOther",                                precision: 23, scale: 10
    t.decimal  "new_TotalRequestedPDAmount",                 precision: 23, scale: 10
    t.decimal  "new_CCHotelBilled",                          precision: 23, scale: 10
    t.decimal  "new_RegFeebilledtoCC",                       precision: 23, scale: 10
    t.decimal  "new_ccTravel",                               precision: 23, scale: 10
    t.string   "new_hoursChargecode",            limit: 30
    t.string   "new_regfeechargecode",           limit: 30
    t.string   "new_TravelCC",                   limit: 100
    t.string   "new_HotelChargecodeused",        limit: 100
    t.decimal  "new_LocalTransportationCC",                  precision: 23, scale: 10
    t.decimal  "new_CCMeal",                                 precision: 23, scale: 10
    t.decimal  "new_CCMiscellaneous",                        precision: 23, scale: 10
    t.decimal  "new_OtherCC",                                precision: 23, scale: 10
    t.decimal  "new_TotalBilledtoOtheraccounts",             precision: 23, scale: 10
    t.string   "new_LocTranspChargeCode",        limit: 100
    t.string   "new_MealChargeCode",             limit: 100
    t.string   "new_OtherChargeCode",            limit: 100
    t.string   "new_MiscChargeCode",             limit: 100
    t.uuid     "new_User"
    t.decimal  "new_TotalPDAmount",                          precision: 23, scale: 10
    t.decimal  "new_TotalOther",                             precision: 23, scale: 10
    t.decimal  "new_TotalAmountSpent",                       precision: 23, scale: 10
    t.integer  "new_counter"
  end

  add_index "new_personalpdrequestExtensionBase", ["new_User", "new_StartDate", "new_EventName", "new_EndDate", "new_counter"], name: "ndx_SystemManaged_new_personalpdrequest"
  add_index "new_personalpdrequestExtensionBase", ["new_number"], name: "ndx_new_number"

  create_table "new_pm_buyerBase", primary_key: "new_pm_buyerId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.string   "EmailAddress",              limit: 256
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_pm_buyerBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_pm_buyerBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_pm_buyerBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_pm_buyerExtensionBase", primary_key: "new_pm_buyerId", force: true do |t|
    t.string "new_buyerID",       limit: 100
    t.uuid   "new_ContactPerson"
    t.string "new_Address",       limit: 150
    t.string "new_Phone",         limit: 100
  end

  add_index "new_pm_buyerExtensionBase", ["new_Phone", "new_ContactPerson", "new_Address"], name: "ndx_SystemManaged_new_pm_buyer"
  add_index "new_pm_buyerExtensionBase", ["new_buyerID"], name: "ndx_new_buyerID"

  create_table "new_pm_invoiceBase", primary_key: "new_pm_invoiceId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                                           null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",              precision: 23, scale: 10
  end

  add_index "new_pm_invoiceBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_pm_invoiceBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_pm_invoiceBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_pm_invoiceExtensionBase", primary_key: "new_pm_invoiceId", force: true do |t|
    t.string   "new_invoiceID",           limit: 100
    t.uuid     "new_OrganizationId"
    t.uuid     "new_MAPC_POId"
    t.decimal  "new_TotalValue"
    t.decimal  "new_totalvalue_Base"
    t.datetime "new_DatePaid"
    t.datetime "new_DateSent"
    t.string   "new_CheckNumber",         limit: 100
    t.decimal  "new_MAPCRetains"
    t.decimal  "new_mapcretains_Base"
    t.decimal  "new_MARPARebate"
    t.decimal  "new_marparebate_Base"
    t.integer  "new_counter"
    t.string   "new_addressline",         limit: 200
    t.string   "new_CityStateZip",        limit: 100
    t.string   "new_Country",             limit: 100
    t.string   "new_addressline2",        limit: 100
    t.string   "new_ContractNumber",      limit: 100
    t.string   "new_ContractDescription", limit: 100
  end

  add_index "new_pm_invoiceExtensionBase", ["new_TotalValue", "new_OrganizationId", "new_MARPARebate", "new_MAPCRetains", "new_DateSent", "new_DatePaid", "new_CheckNumber"], name: "ndx_SystemManaged_new_pm_invoice"
  add_index "new_pm_invoiceExtensionBase", ["new_invoiceID"], name: "ndx_new_invoiceID"

  create_table "new_pm_orderBase", primary_key: "new_pm_orderId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                                           null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.uuid     "TransactionCurrencyId"
    t.decimal  "ExchangeRate",              precision: 23, scale: 10
  end

  add_index "new_pm_orderBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_pm_orderBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_pm_orderBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_pm_orderExtensionBase", primary_key: "new_pm_orderId", force: true do |t|
    t.string  "new_orderID",            limit: 100
    t.uuid    "new_OrganizationId"
    t.integer "new_OrderStatus"
    t.uuid    "new_ContractId"
    t.uuid    "new_InvoiceId"
    t.uuid    "new_BuyerId"
    t.boolean "new_VendorType"
    t.string  "new_Product",            limit: 150
    t.text    "new_ProductDescription"
    t.integer "new_Quantity"
    t.decimal "new_Price"
    t.decimal "new_price_Base"
    t.decimal "new_TotalValue"
    t.decimal "new_totalvalue_Base"
    t.decimal "new_AdminFee"
    t.decimal "new_adminfee_Base"
    t.decimal "new_MAPCRetains"
    t.decimal "new_mapcretains_Base"
    t.decimal "new_MARPARebate"
    t.decimal "new_marparebate_Base"
    t.integer "new_Quarter"
    t.integer "new_Year"
    t.string  "new_VendorAddress",      limit: 100
    t.integer "new_counter"
  end

  add_index "new_pm_orderExtensionBase", ["new_TotalValue", "new_BuyerId", "new_AdminFee", "new_Product", "new_OrganizationId", "new_MARPARebate", "new_MAPCRetains", "new_ContractId"], name: "ndx_SystemManaged_new_pm_order"
  add_index "new_pm_orderExtensionBase", ["new_orderID"], name: "ndx_new_orderID"

  create_table "new_positionBase", primary_key: "new_positionId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                               null: false
    t.integer  "OwnerIdType",                           null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.string   "EmailAddress",              limit: 256
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_positionBase", ["ModifiedOn"], name: "ndx_SystemManaged_new_position"
  add_index "new_positionBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_positionBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_positionBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_positionExtensionBase", primary_key: "new_positionId", force: true do |t|
    t.string   "new_name",                    limit: 100
    t.string   "new_Jurisdiction",            limit: 100
    t.string   "new_Department",              limit: 100
    t.text     "new_Functionalrole"
    t.string   "new_Prefix",                  limit: 50
    t.string   "new_LastName",                limit: 100
    t.string   "new_FurstName",               limit: 100
    t.string   "new_MiddleName",              limit: 100
    t.string   "new_Suffix",                  limit: 100
    t.string   "new_AddressLine1",            limit: 100
    t.string   "new_AddressLine2",            limit: 100
    t.string   "new_AddressLine3",            limit: 100
    t.string   "new_City",                    limit: 30
    t.string   "new_ZIPCode",                 limit: 15
    t.string   "new_State",                   limit: 20
    t.string   "new_Phone",                   limit: 100
    t.string   "new_FAX",                     limit: 100
    t.string   "new_Tags",                    limit: 219
    t.text     "new_Notes"
    t.string   "new_Mobilephone",             limit: 100
    t.string   "new_facebook",                limit: 100
    t.string   "new_twitter",                 limit: 100
    t.string   "new_skypeID",                 limit: 100
    t.string   "new_PersonalEmailaddress",    limit: 100
    t.boolean  "new_Typeofbusiness"
    t.string   "new_Organization",            limit: 100
    t.uuid     "new_NameId"
    t.uuid     "new_ContactId"
    t.integer  "new_multiselection"
    t.uuid     "new_MAPC_subregion"
    t.string   "new_Coordinator",             limit: 100
    t.uuid     "new_MunicipalityId"
    t.string   "new_Lengthofterm",            limit: 20
    t.datetime "new_TermEnding"
    t.datetime "new_Certificationvaliduntil"
    t.boolean  "new_CICertified"
    t.string   "new_Country",                 limit: 100
    t.datetime "new_SummaryCILawReceived"
    t.datetime "new_SummaryOMLawreceived"
  end

  add_index "new_positionExtensionBase", ["new_NameId"], name: "ndx_for_cascaderelationship_new_account_new_position"
  add_index "new_positionExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_projectBase", primary_key: "new_projectId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "EmailAddress",              limit: 256
  end

  add_index "new_projectBase", ["CreatedOn"], name: "ndx_SystemManaged_new_project"
  add_index "new_projectBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_projectBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_projectBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_projectExtensionBase", primary_key: "new_projectId", force: true do |t|
    t.string   "new_name",                  limit: 101
    t.uuid     "new_ProjectManager"
    t.integer  "new_ProjectStatus"
    t.string   "new_ProjectFolderLocation", limit: 1000
    t.integer  "new_MAPCSubregions"
    t.integer  "new_Muncipalities"
    t.text     "new_mapcsubregions_value"
    t.text     "new_municipalities_value"
    t.integer  "new_Department"
    t.string   "new_Activity1",             limit: 100
    t.string   "new_Activity2",             limit: 100
    t.string   "new_Activity4",             limit: 100
    t.string   "new_Activity3",             limit: 100
    t.string   "new_Activity5",             limit: 100
    t.string   "new_Activity6",             limit: 100
    t.string   "new_Activity7",             limit: 100
    t.string   "new_Activity8",             limit: 100
    t.string   "new_Activity9",             limit: 100
    t.string   "new_Activity10",            limit: 100
    t.datetime "new_From1"
    t.datetime "new_From2"
    t.datetime "new_From3"
    t.datetime "new_To1"
    t.datetime "new_To2"
    t.datetime "new_To3"
    t.decimal  "new_Budget1",                            precision: 23, scale: 10
    t.decimal  "new_Budget2",                            precision: 23, scale: 10
    t.decimal  "new_Budget3",                            precision: 23, scale: 10
  end

  add_index "new_projectExtensionBase", ["new_name", "new_ProjectStatus", "new_ProjectManager"], name: "ndx_SystemManaged_new_project"

  create_table "new_project_mapcsubregionBase", primary_key: "new_project_mapcsubregionId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mapcprojectid",   null: false
    t.uuid   "new_mapcsubregionid", null: false
  end

  add_index "new_project_mapcsubregionBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_project_mapcsubregionBase", ["new_mapcprojectid", "new_mapcsubregionid"], name: "ndx_new_project_mapcsubregion", unique: true
  add_index "new_project_mapcsubregionBase", ["new_mapcsubregionid"], name: "ndx_new_mapcsubregionid"

  create_table "new_project_mapcsubregionExtensionBase", primary_key: "new_project_mapcsubregionId", force: true do |t|
  end

  create_table "new_project_mfuturegoalsBase", primary_key: "new_project_mfuturegoalsId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mapcprojectid",  null: false
    t.uuid   "new_mfuturegoalsid", null: false
  end

  add_index "new_project_mfuturegoalsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_project_mfuturegoalsBase", ["new_mapcprojectid", "new_mfuturegoalsid"], name: "ndx_new_project_mfuturegoals", unique: true
  add_index "new_project_mfuturegoalsBase", ["new_mfuturegoalsid"], name: "ndx_new_mfuturegoalsid"

  create_table "new_project_mfuturegoalsExtensionBase", primary_key: "new_project_mfuturegoalsId", force: true do |t|
  end

  create_table "new_project_mfuturestrategyBase", primary_key: "new_project_mfuturestrategyId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mapcprojectid",     null: false
    t.uuid   "new_mfuturestrategyid", null: false
  end

  add_index "new_project_mfuturestrategyBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_project_mfuturestrategyBase", ["new_mapcprojectid", "new_mfuturestrategyid"], name: "ndx_new_project_mfuturestrategy", unique: true
  add_index "new_project_mfuturestrategyBase", ["new_mfuturestrategyid"], name: "ndx_new_mfuturestrategyid"

  create_table "new_project_mfuturestrategyExtensionBase", primary_key: "new_project_mfuturestrategyId", force: true do |t|
  end

  create_table "new_project_objectivesBase", primary_key: "new_project_objectivesId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mapcprojectid",      null: false
    t.uuid   "new_mfutureobjectiveid", null: false
  end

  add_index "new_project_objectivesBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_project_objectivesBase", ["new_mapcprojectid", "new_mfutureobjectiveid"], name: "ndx_new_project_objectives", unique: true
  add_index "new_project_objectivesBase", ["new_mfutureobjectiveid"], name: "ndx_new_mfutureobjectiveid"

  create_table "new_project_objectivesExtensionBase", primary_key: "new_project_objectivesId", force: true do |t|
  end

  create_table "new_project_substrategyBase", primary_key: "new_project_substrategyId", force: true do |t|
    t.binary "VersionNumber"
    t.uuid   "new_mapcprojectid",        null: false
    t.uuid   "new_mfuturesubstrategyid", null: false
  end

  add_index "new_project_substrategyBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_project_substrategyBase", ["new_mapcprojectid", "new_mfuturesubstrategyid"], name: "ndx_new_project_substrategy", unique: true
  add_index "new_project_substrategyBase", ["new_mfuturesubstrategyid"], name: "ndx_new_mfuturesubstrategyid"

  create_table "new_project_substrategyExtensionBase", primary_key: "new_project_substrategyId", force: true do |t|
  end

  create_table "new_projectactivityBase", primary_key: "new_projectactivityId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_projectactivityBase", ["CreatedOn"], name: "ndx_SystemManaged_new_projectactivity"
  add_index "new_projectactivityBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_projectactivityBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_projectactivityBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_projectactivityExtensionBase", primary_key: "new_projectactivityId", force: true do |t|
    t.string   "new_name",      limit: 100
    t.datetime "new_DateStart"
    t.datetime "new_DateEnd"
    t.string   "new_Indicator", limit: 200
    t.uuid     "new_ProjectId"
  end

  add_index "new_projectactivityExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_projectfundingBase", primary_key: "new_projectfundingId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_projectfundingBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_projectfundingBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_projectfundingBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_projectfundingExtensionBase", primary_key: "new_projectfundingId", force: true do |t|
    t.string  "new_name",               limit: 100
    t.uuid    "new_SourceOrganization"
    t.integer "new_Level"
    t.integer "new_MAPCDepartment"
  end

  add_index "new_projectfundingExtensionBase", ["new_Level", "new_SourceOrganization", "new_MAPCDepartment"], name: "ndx_SystemManaged_new_projectfunding"
  add_index "new_projectfundingExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_pw_contractsBase", primary_key: "new_pw_contractsId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                             null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
    t.string   "EmailAddress",              limit: 256
  end

  add_index "new_pw_contractsBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_pw_contractsBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_pw_contractsBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_pw_contractsExtensionBase", primary_key: "new_pw_contractsId", force: true do |t|
    t.string   "new_name",                limit: 100
    t.integer  "new_Consortium"
    t.string   "new_Item",                limit: 20
    t.uuid     "new_Vendor"
    t.integer  "new_AwardYear"
    t.decimal  "new_VendorRepotedAmount",             precision: 23, scale: 10
    t.decimal  "new_TransactionFee",                  precision: 23, scale: 10
    t.decimal  "new_AmountReceived",                  precision: 23, scale: 10
    t.decimal  "new_TransactionFeeprc",               precision: 23, scale: 10
    t.text     "new_Description"
    t.string   "new_Vendorreference",     limit: 100
    t.string   "new_VendorCheck",         limit: 100
    t.string   "new_Description2",        limit: 100
    t.decimal  "new_Braintree",                       precision: 23, scale: 10
    t.decimal  "new_Cohasset",                        precision: 23, scale: 10
    t.decimal  "new_Duxbury",                         precision: 23, scale: 10
    t.decimal  "new_Hingham",                         precision: 23, scale: 10
    t.decimal  "new_Hull",                            precision: 23, scale: 10
    t.decimal  "new_Marshfield",                      precision: 23, scale: 10
    t.decimal  "new_Milton",                          precision: 23, scale: 10
    t.decimal  "new_Norwell",                         precision: 23, scale: 10
    t.decimal  "new_Pembroke",                        precision: 23, scale: 10
    t.decimal  "new_Scituate",                        precision: 23, scale: 10
    t.decimal  "new_Ashland",                         precision: 23, scale: 10
    t.decimal  "new_Natick",                          precision: 23, scale: 10
    t.decimal  "new_Sherborn",                        precision: 23, scale: 10
    t.decimal  "new_Southborough",                    precision: 23, scale: 10
    t.string   "new_VendorAddress",       limit: 100
    t.string   "new_VendorPhone",         limit: 100
    t.string   "new_VendorContact",       limit: 100
    t.string   "new_vendoremail",         limit: 100
    t.string   "new_Autonumber",          limit: 100
    t.uuid     "new_Autonumberlookup"
    t.integer  "new_Extentionnumber"
    t.integer  "new_ContractYear"
    t.string   "new_ExtentionStatus",     limit: 100
    t.decimal  "new_townBraintree",                   precision: 23, scale: 10
    t.decimal  "new_townHull",                        precision: 23, scale: 10
    t.decimal  "new_tPembroke",                       precision: 23, scale: 10
    t.decimal  "new_tCohasset",                       precision: 23, scale: 10
    t.decimal  "new_tMarshfield",                     precision: 23, scale: 10
    t.decimal  "new_tScituate",                       precision: 23, scale: 10
    t.decimal  "new_tDuxbury",                        precision: 23, scale: 10
    t.decimal  "new_tMilton",                         precision: 23, scale: 10
    t.decimal  "new_tHingham",                        precision: 23, scale: 10
    t.decimal  "new_tNorwell",                        precision: 23, scale: 10
    t.decimal  "new_tAshland",                        precision: 23, scale: 10
    t.decimal  "new_tNatick",                         precision: 23, scale: 10
    t.decimal  "new_tSherborn",                       precision: 23, scale: 10
    t.decimal  "new_tSouthborough",                   precision: 23, scale: 10
    t.datetime "new_DateDeposited"
    t.string   "new_AwardYtext",          limit: 4
    t.string   "new_ContractYtext",       limit: 4
    t.integer  "new_ProcessingStatus"
    t.datetime "new_duedate"
    t.string   "new_ContactLN",           limit: 100
    t.string   "new_VendorContactFN",     limit: 100
    t.decimal  "new_totalestimated",                  precision: 23, scale: 10
    t.decimal  "new_Hanover",                         precision: 23, scale: 10
    t.decimal  "new_townHanover",                     precision: 23, scale: 10
    t.decimal  "new_Millis",                          precision: 23, scale: 10
    t.decimal  "new_Wellesley",                       precision: 23, scale: 10
    t.decimal  "new_townMillis",                      precision: 23, scale: 10
    t.decimal  "new_townWellesley",                   precision: 23, scale: 10
  end

  add_index "new_pw_contractsExtensionBase", ["new_Vendor", "new_Item", "new_Description2", "new_Autonumber", "new_AwardYtext", "new_ContractYtext", "new_ProcessingStatus", "new_VendorRepotedAmount", "new_TransactionFee"], name: "ndx_SystemManaged_new_pw_contracts"
  add_index "new_pw_contractsExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_syncmappingBase", primary_key: "new_syncmappingId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_syncmappingBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_syncmappingBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_syncmappingBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_syncmappingExtensionBase", primary_key: "new_syncmappingId", force: true do |t|
    t.string "new_name",         limit: 100
    t.string "new_OutlookField", limit: 100
  end

  add_index "new_syncmappingExtensionBase", ["new_OutlookField"], name: "ndx_SystemManaged_new_syncmapping"
  add_index "new_syncmappingExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_timeuserecordBase", primary_key: "new_timeuserecordId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_timeuserecordBase", ["CreatedOn"], name: "ndx_SystemManaged_new_timeuserecord"
  add_index "new_timeuserecordBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_timeuserecordBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_timeuserecordBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_timeuserecordExtensionBase", primary_key: "new_timeuserecordId", force: true do |t|
    t.string   "new_id",         limit: 100
    t.uuid     "new_EmployeeId"
    t.integer  "new_Type"
    t.datetime "new_Date"
    t.decimal  "new_TimeUsed",               precision: 23, scale: 10
    t.integer  "new_ChangeType"
  end

  add_index "new_timeuserecordExtensionBase", ["new_EmployeeId"], name: "ndx_for_cascaderelationship_new_vacationuser_timeuse"
  add_index "new_timeuserecordExtensionBase", ["new_Type", "new_TimeUsed", "new_Date", "new_ChangeType"], name: "ndx_SystemManaged_new_timeuserecord"
  add_index "new_timeuserecordExtensionBase", ["new_id"], name: "ndx_new_id"

  create_table "new_vacationuseraccountBase", primary_key: "new_vacationuseraccountId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OwnerId",                   null: false
    t.integer  "OwnerIdType",               null: false
    t.uuid     "OwningBusinessUnit"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_vacationuseraccountBase", ["OwnerId"], name: "ndx_Security"
  add_index "new_vacationuseraccountBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_vacationuseraccountBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_vacationuseraccountExtensionBase", primary_key: "new_vacationuseraccountId", force: true do |t|
    t.string   "new_name",                 limit: 100
    t.string   "new_FirstName",            limit: 100
    t.string   "new_LastName",             limit: 100
    t.datetime "new_HireDate"
    t.datetime "new_ServiceDate"
    t.decimal  "new_AccrualVacation",                  precision: 23, scale: 10
    t.decimal  "new_AccrualDiscretionary",             precision: 23, scale: 10
    t.decimal  "new_AccrualSick",                      precision: 23, scale: 10
    t.decimal  "new_BalanceVacation",                  precision: 23, scale: 10
    t.decimal  "new_BalanceSick",                      precision: 23, scale: 10
    t.decimal  "new_BalanceDiscretionary",             precision: 23, scale: 10
    t.decimal  "new_CapVacation",                      precision: 23, scale: 10
    t.decimal  "new_CapSick",                          precision: 23, scale: 10
    t.decimal  "new_CapDiscretionary",                 precision: 23, scale: 10
    t.integer  "new_YearsofService"
    t.decimal  "new_lastbalancevacation",              precision: 23, scale: 10
    t.decimal  "new_lastbalancesick",                  precision: 23, scale: 10
    t.integer  "new_serviceyear"
    t.decimal  "new_TwoYearCap",                       precision: 23, scale: 10
    t.decimal  "new_VacationLast",                     precision: 23, scale: 10
    t.decimal  "new_VacationUsed",                     precision: 23, scale: 10
    t.decimal  "new_sickused",                         precision: 23, scale: 10
    t.decimal  "new_DiscretionaryUsed",                precision: 23, scale: 10
    t.datetime "new_lastupdated"
    t.integer  "new_processingFY"
    t.decimal  "new_AccrualthisFY",                    precision: 23, scale: 10
  end

  add_index "new_vacationuseraccountExtensionBase", ["new_name"], name: "ndx_new_name"
  add_index "new_vacationuseraccountExtensionBase", ["new_serviceyear", "new_TwoYearCap", "new_ServiceDate", "new_HireDate", "new_CapDiscretionary", "new_BalanceVacation", "new_BalanceSick", "new_BalanceDiscretionary", "new_AccrualVacation", "new_CapSick", "new_AccrualSick"], name: "ndx_SystemManaged_new_vacationuseraccount"

  create_table "new_vehicleBase", primary_key: "new_vehicleId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_vehicleBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_vehicleBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_vehicleBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_vehicleExtensionBase", primary_key: "new_vehicleId", force: true do |t|
    t.string  "new_name",          limit: 107
    t.string  "new_VehicleMake",   limit: 100
    t.string  "new_ModelCode",     limit: 100
    t.string  "new_VehicleType",   limit: 100
    t.string  "new_VehicleUse",    limit: 100
    t.decimal "new_TransFeePrice",             precision: 23, scale: 10
  end

  add_index "new_vehicleExtensionBase", ["new_VehicleMake", "new_VehicleUse", "new_VehicleType", "new_TransFeePrice"], name: "ndx_SystemManaged_new_vehicle"
  add_index "new_vehicleExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_vendorBase", primary_key: "new_vendorId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_vendorBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_vendorBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_vendorBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_vendorExtensionBase", primary_key: "new_vendorId", force: true do |t|
    t.string "new_name",         limit: 100
    t.string "new_AddressLine1", limit: 100
    t.string "new_AddressLine2", limit: 100
    t.string "new_City",         limit: 100
    t.string "new_ZipCode",      limit: 100
    t.string "new_State",        limit: 100
  end

  add_index "new_vendorExtensionBase", ["new_ZipCode", "new_State", "new_City", "new_AddressLine1"], name: "ndx_SystemManaged_new_vendor"
  add_index "new_vendorExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_vendorcontractBase", primary_key: "new_vendorcontractId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_vendorcontractBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_vendorcontractBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_vendorcontractBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_vendorcontractExtensionBase", primary_key: "new_vendorcontractId", force: true do |t|
    t.string  "new_name",           limit: 100
    t.integer "new_ContractType"
    t.float   "new_TransactionFee", limit: 53
    t.uuid    "new_VendorId"
  end

  add_index "new_vendorcontractExtensionBase", ["new_ContractType", "new_TransactionFee"], name: "ndx_SystemManaged_new_vendorcontract"
  add_index "new_vendorcontractExtensionBase", ["new_name"], name: "ndx_new_name"

  create_table "new_workflowassistantpositiondateBase", primary_key: "new_workflowassistantpositiondateId", force: true do |t|
    t.datetime "CreatedOn"
    t.uuid     "CreatedBy"
    t.datetime "ModifiedOn"
    t.uuid     "ModifiedBy"
    t.uuid     "CreatedOnBehalfBy"
    t.uuid     "ModifiedOnBehalfBy"
    t.uuid     "OrganizationId"
    t.integer  "statecode",                 null: false
    t.integer  "statuscode"
    t.binary   "VersionNumber"
    t.integer  "ImportSequenceNumber"
    t.datetime "OverriddenCreatedOn"
    t.integer  "TimeZoneRuleVersionNumber"
    t.integer  "UTCConversionTimeZoneCode"
  end

  add_index "new_workflowassistantpositiondateBase", ["CreatedOn"], name: "ndx_SystemManaged_new_workflowassistantpositiondate"
  add_index "new_workflowassistantpositiondateBase", ["OrganizationId"], name: "ndx_Security"
  add_index "new_workflowassistantpositiondateBase", ["VersionNumber"], name: "ndx_Sync"
  add_index "new_workflowassistantpositiondateBase", ["statecode", "statuscode"], name: "ndx_Core"

  create_table "new_workflowassistantpositiondateExtensionBase", primary_key: "new_workflowassistantpositiondateId", force: true do |t|
    t.string   "new_Today",                 limit: 100
    t.datetime "new_Todaysdate"
    t.uuid     "new_CorrespondentPosition"
  end

  add_index "new_workflowassistantpositiondateExtensionBase", ["new_Today"], name: "ndx_new_Today"

end
