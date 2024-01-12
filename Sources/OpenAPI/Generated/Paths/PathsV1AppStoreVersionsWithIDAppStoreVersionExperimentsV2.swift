// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID {
	public var appStoreVersionExperimentsV2: AppStoreVersionExperimentsV2 {
		AppStoreVersionExperimentsV2(path: path + "/appStoreVersionExperimentsV2")
	}

	public struct AppStoreVersionExperimentsV2 {
		/// Path: `/v1/appStoreVersions/{id}/appStoreVersionExperimentsV2`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentsV2Response> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appStoreVersions-appStoreVersionExperimentsV2-get_to_many_related")
		}

		public struct GetParameters {
			public var filterState: [FilterState]?
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsApps: [FieldsApps]?
			public var limit: Int?
			public var limitControlVersions: Int?
			public var limitAppStoreVersionExperimentTreatments: Int?
			public var include: [Include]?

			public enum FilterState: String, Codable, CaseIterable {
				case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
				case readyForReview = "READY_FOR_REVIEW"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case accepted = "ACCEPTED"
				case approved = "APPROVED"
				case rejected = "REJECTED"
				case completed = "COMPLETED"
				case stopped = "STOPPED"
			}

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
				case app
				case appStoreVersionExperimentTreatments
				case controlVersions
				case endDate
				case latestControlVersion
				case name
				case platform
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum FieldsAppStoreVersionExperimentTreatments: String, Codable, CaseIterable {
				case appIcon
				case appIconName
				case appStoreVersionExperiment
				case appStoreVersionExperimentTreatmentLocalizations
				case appStoreVersionExperimentV2
				case name
				case promotedDate
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case routingAppCoverage
				case versionString
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appStoreVersionExperimentTreatments
				case controlVersions
				case latestControlVersion
			}

			public init(filterState: [FilterState]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, limitControlVersions: Int? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil, include: [Include]? = nil) {
				self.filterState = filterState
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsAppStoreVersionExperimentTreatments = fieldsAppStoreVersionExperimentTreatments
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsApps = fieldsApps
				self.limit = limit
				self.limitControlVersions = limitControlVersions
				self.limitAppStoreVersionExperimentTreatments = limitAppStoreVersionExperimentTreatments
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitControlVersions, forKey: "limit[controlVersions]")
				encoder.encode(limitAppStoreVersionExperimentTreatments, forKey: "limit[appStoreVersionExperimentTreatments]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
