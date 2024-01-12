// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppClipDefaultExperienceResponse: Codable {
	/// AppClipDefaultExperience
	public var data: AppClipDefaultExperience
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable {
		case appClip(AppClip)
		case appStoreVersion(AppStoreVersion)
		case appClipDefaultExperienceLocalization(AppClipDefaultExperienceLocalization)
		case appClipAppStoreReviewDetail(AppClipAppStoreReviewDetail)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(AppClip.self) {
				self = .appClip(value)
			} else if let value = try? container.decode(AppStoreVersion.self) {
				self = .appStoreVersion(value)
			} else if let value = try? container.decode(AppClipDefaultExperienceLocalization.self) {
				self = .appClipDefaultExperienceLocalization(value)
			} else if let value = try? container.decode(AppClipAppStoreReviewDetail.self) {
				self = .appClipAppStoreReviewDetail(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (AppClip, AppStoreVersion, AppClipDefaultExperienceLocalization, AppClipAppStoreReviewDetail)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .appClip(let value): try container.encode(value)
			case .appStoreVersion(let value): try container.encode(value)
			case .appClipDefaultExperienceLocalization(let value): try container.encode(value)
			case .appClipAppStoreReviewDetail(let value): try container.encode(value)
			}
		}
	}

	public init(data: AppClipDefaultExperience, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(AppClipDefaultExperience.self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(DocumentLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
	}
}
