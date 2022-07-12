// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiProducts.WithID.Relationships {
	public var additionalRepositories: AdditionalRepositories {
		AdditionalRepositories(path: path + "/additionalRepositories")
	}

	public struct AdditionalRepositories {
		/// Path: `/v1/ciProducts/{id}/relationships/additionalRepositories`
		public let path: String
	}
}