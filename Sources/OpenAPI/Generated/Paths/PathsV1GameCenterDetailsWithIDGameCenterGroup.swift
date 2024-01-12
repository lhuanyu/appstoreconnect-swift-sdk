// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID {
	public var gameCenterGroup: GameCenterGroup {
		GameCenterGroup(path: path + "/gameCenterGroup")
	}

	public struct GameCenterGroup {
		/// Path: `/v1/gameCenterDetails/{id}/gameCenterGroup`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterGroupResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterDetails-gameCenterGroup-get_to_one_related")
		}

		public struct GetParameters {
			public var fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?
			public var fieldsGameCenterGroups: [FieldsGameCenterGroups]?
			public var fieldsGameCenterDetails: [FieldsGameCenterDetails]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?
			public var limitGameCenterDetails: Int?
			public var limitGameCenterLeaderboards: Int?
			public var limitGameCenterLeaderboardSets: Int?
			public var limitGameCenterAchievements: Int?
			public var include: [Include]?

			public enum FieldsGameCenterLeaderboardSets: String, Codable, CaseIterable {
				case gameCenterDetail
				case gameCenterGroup
				case gameCenterLeaderboards
				case groupLeaderboardSet
				case localizations
				case referenceName
				case releases
				case vendorIdentifier
			}

			public enum FieldsGameCenterGroups: String, Codable, CaseIterable {
				case gameCenterAchievements
				case gameCenterDetails
				case gameCenterLeaderboardSets
				case gameCenterLeaderboards
				case referenceName
			}

			public enum FieldsGameCenterDetails: String, Codable, CaseIterable {
				case achievementReleases
				case app
				case arcadeEnabled
				case challengeEnabled
				case defaultGroupLeaderboard
				case defaultLeaderboard
				case gameCenterAchievements
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case gameCenterLeaderboards
				case leaderboardReleases
				case leaderboardSetReleases
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case archived
				case defaultFormatter
				case gameCenterDetail
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case groupLeaderboard
				case localizations
				case recurrenceDuration
				case recurrenceRule
				case recurrenceStartDate
				case referenceName
				case releases
				case scoreRangeEnd
				case scoreRangeStart
				case scoreSortType
				case submissionType
				case vendorIdentifier
			}

			public enum FieldsGameCenterAchievements: String, Codable, CaseIterable {
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupAchievement
				case localizations
				case points
				case referenceName
				case releases
				case repeatable
				case showBeforeEarned
				case vendorIdentifier
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterAchievements
				case gameCenterDetails
				case gameCenterLeaderboardSets
				case gameCenterLeaderboards
			}

			public init(fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, limitGameCenterDetails: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterAchievements: Int? = nil, include: [Include]? = nil) {
				self.fieldsGameCenterLeaderboardSets = fieldsGameCenterLeaderboardSets
				self.fieldsGameCenterGroups = fieldsGameCenterGroups
				self.fieldsGameCenterDetails = fieldsGameCenterDetails
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.fieldsGameCenterAchievements = fieldsGameCenterAchievements
				self.limitGameCenterDetails = limitGameCenterDetails
				self.limitGameCenterLeaderboards = limitGameCenterLeaderboards
				self.limitGameCenterLeaderboardSets = limitGameCenterLeaderboardSets
				self.limitGameCenterAchievements = limitGameCenterAchievements
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
				encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
				encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
				encoder.encode(limitGameCenterDetails, forKey: "limit[gameCenterDetails]")
				encoder.encode(limitGameCenterLeaderboards, forKey: "limit[gameCenterLeaderboards]")
				encoder.encode(limitGameCenterLeaderboardSets, forKey: "limit[gameCenterLeaderboardSets]")
				encoder.encode(limitGameCenterAchievements, forKey: "limit[gameCenterAchievements]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
