// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID.Relationships {
	public var subscriptionAvailability: SubscriptionAvailability {
		SubscriptionAvailability(path: path + "/subscriptionAvailability")
	}

	public struct SubscriptionAvailability {
		/// Path: `/v1/subscriptions/{id}/relationships/subscriptionAvailability`
		public let path: String
	}
}
