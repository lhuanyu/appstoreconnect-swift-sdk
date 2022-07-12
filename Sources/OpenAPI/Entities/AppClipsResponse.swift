// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipsResponse: Codable {
	public var data: [AppClip]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case app(App)
		case appClipDefaultExperience(AppClipDefaultExperience)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(App.self) {
				self = .app(value)
			} else if let value = try? container.decode(AppClipDefaultExperience.self) {
				self = .appClipDefaultExperience(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .app(let value): try container.encode(value)
			case .appClipDefaultExperience(let value): try container.encode(value)
			}
		}
	}

	public init(data: [AppClip], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}