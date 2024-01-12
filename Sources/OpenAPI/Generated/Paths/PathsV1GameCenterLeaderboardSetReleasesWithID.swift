// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardSetReleases {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterLeaderboardSetReleases/{id}`
		public let path: String

		public func get(fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetReleaseResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterLeaderboardSetReleases, include), id: "gameCenterLeaderboardSetReleases-get_instance")
		}

		private func makeGetQuery(_ fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsGameCenterLeaderboardSetReleases, forKey: "fields[gameCenterLeaderboardSetReleases]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsGameCenterLeaderboardSetReleases: String, Codable, CaseIterable {
			case gameCenterDetail
			case gameCenterLeaderboardSet
			case live
		}

		public enum Include: String, Codable, CaseIterable {
			case gameCenterDetail
			case gameCenterLeaderboardSet
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "gameCenterLeaderboardSetReleases-delete_instance")
		}
	}
}
