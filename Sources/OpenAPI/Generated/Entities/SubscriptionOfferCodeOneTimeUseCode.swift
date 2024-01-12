// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionOfferCodeOneTimeUseCode: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionOfferCodeOneTimeUseCodes
	}

	public struct Attributes: Codable {
		public var numberOfCodes: Int?
		public var createdDate: Date?
		public var expirationDate: String?
		public var isActive: Bool?

		public init(numberOfCodes: Int? = nil, createdDate: Date? = nil, expirationDate: String? = nil, isActive: Bool? = nil) {
			self.numberOfCodes = numberOfCodes
			self.createdDate = createdDate
			self.expirationDate = expirationDate
			self.isActive = isActive
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.numberOfCodes = try values.decodeIfPresent(Int.self, forKey: "numberOfCodes")
			self.createdDate = try values.decodeIfPresent(Date.self, forKey: "createdDate")
			self.expirationDate = try values.decodeIfPresent(String.self, forKey: "expirationDate")
			self.isActive = try values.decodeIfPresent(Bool.self, forKey: "active")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(numberOfCodes, forKey: "numberOfCodes")
			try values.encodeIfPresent(createdDate, forKey: "createdDate")
			try values.encodeIfPresent(expirationDate, forKey: "expirationDate")
			try values.encodeIfPresent(isActive, forKey: "active")
		}
	}

	public struct Relationships: Codable {
		public var offerCode: OfferCode?

		public struct OfferCode: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionOfferCodes
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(offerCode: OfferCode? = nil) {
			self.offerCode = offerCode
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.offerCode = try values.decodeIfPresent(OfferCode.self, forKey: "offerCode")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(offerCode, forKey: "offerCode")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
