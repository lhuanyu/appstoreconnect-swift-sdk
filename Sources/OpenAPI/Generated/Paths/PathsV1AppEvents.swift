// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEvents: AppEvents {
		AppEvents(path: path + "/appEvents")
	}

	public struct AppEvents {
		/// Path: `/v1/appEvents`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppEventCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventResponse> {
			Request(path: path, method: "POST", body: body, id: "appEvents-create_instance")
		}
	}
}
