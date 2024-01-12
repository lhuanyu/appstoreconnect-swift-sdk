// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID.Relationships {
	public var promotionalOffers: PromotionalOffers {
		PromotionalOffers(path: path + "/promotionalOffers")
	}

	public struct PromotionalOffers {
		/// Path: `/v1/subscriptions/{id}/relationships/promotionalOffers`
		public let path: String
	}
}
