// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var appStoreVersionExperimentsV2: AppStoreVersionExperimentsV2 {
		AppStoreVersionExperimentsV2(path: path + "/appStoreVersionExperimentsV2")
	}

	public struct AppStoreVersionExperimentsV2 {
		/// Path: `/v1/apps/{id}/relationships/appStoreVersionExperimentsV2`
		public let path: String
	}
}
