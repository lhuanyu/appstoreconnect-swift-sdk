// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionOfferCodes: SubscriptionOfferCodes {
		SubscriptionOfferCodes(path: path + "/subscriptionOfferCodes")
	}

	public struct SubscriptionOfferCodes {
		/// Path: `/v1/subscriptionOfferCodes`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionOfferCodeCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionOfferCodeResponse> {
			Request(path: path, method: "POST", body: body, id: "subscriptionOfferCodes-create_instance")
		}
	}
}
