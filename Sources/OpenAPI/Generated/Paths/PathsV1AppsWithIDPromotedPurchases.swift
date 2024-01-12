// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var promotedPurchases: PromotedPurchases {
		PromotedPurchases(path: path + "/promotedPurchases")
	}

	public struct PromotedPurchases {
		/// Path: `/v1/apps/{id}/promotedPurchases`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.PromotedPurchasesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-promotedPurchases-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?
			public var limit: Int?
			public var limitPromotionImages: Int?
			public var include: [Include]?

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case app
				case enabled
				case inAppPurchaseV2
				case promotionImages
				case state
				case subscription
				case visibleForAllUsers
			}

			public enum FieldsSubscriptions: String, Codable, CaseIterable {
				case appStoreReviewScreenshot
				case availableInAllTerritories
				case familySharable
				case group
				case groupLevel
				case introductoryOffers
				case name
				case offerCodes
				case pricePoints
				case prices
				case productID = "productId"
				case promotedPurchase
				case promotionalOffers
				case reviewNote
				case state
				case subscriptionAvailability
				case subscriptionLocalizations
				case subscriptionPeriod
			}

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case app
				case appStoreReviewScreenshot
				case availableInAllTerritories
				case content
				case contentHosting
				case familySharable
				case iapPriceSchedule
				case inAppPurchaseAvailability
				case inAppPurchaseLocalizations
				case inAppPurchaseType
				case name
				case pricePoints
				case productID = "productId"
				case promotedPurchase
				case reviewNote
				case state
			}

			public enum FieldsPromotedPurchaseImages: String, Codable, CaseIterable {
				case assetToken
				case assetType
				case fileName
				case fileSize
				case imageAsset
				case promotedPurchase
				case sourceFileChecksum
				case state
				case uploadOperations
				case uploaded
			}

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchaseV2
				case promotionImages
				case subscription
			}

			public init(fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, limit: Int? = nil, limitPromotionImages: Int? = nil, include: [Include]? = nil) {
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.fieldsPromotedPurchaseImages = fieldsPromotedPurchaseImages
				self.limit = limit
				self.limitPromotionImages = limitPromotionImages
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitPromotionImages, forKey: "limit[promotionImages]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
