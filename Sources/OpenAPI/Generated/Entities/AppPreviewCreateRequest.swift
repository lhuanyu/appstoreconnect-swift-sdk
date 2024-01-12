// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppPreviewCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appPreviews
		}

		public struct Attributes: Codable {
			public var fileSize: Int
			public var fileName: String
			public var previewFrameTimeCode: String?
			public var mimeType: String?

			public init(fileSize: Int, fileName: String, previewFrameTimeCode: String? = nil, mimeType: String? = nil) {
				self.fileSize = fileSize
				self.fileName = fileName
				self.previewFrameTimeCode = previewFrameTimeCode
				self.mimeType = mimeType
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.fileSize = try values.decode(Int.self, forKey: "fileSize")
				self.fileName = try values.decode(String.self, forKey: "fileName")
				self.previewFrameTimeCode = try values.decodeIfPresent(String.self, forKey: "previewFrameTimeCode")
				self.mimeType = try values.decodeIfPresent(String.self, forKey: "mimeType")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(fileSize, forKey: "fileSize")
				try values.encode(fileName, forKey: "fileName")
				try values.encodeIfPresent(previewFrameTimeCode, forKey: "previewFrameTimeCode")
				try values.encodeIfPresent(mimeType, forKey: "mimeType")
			}
		}

		public struct Relationships: Codable {
			public var appPreviewSet: AppPreviewSet

			public struct AppPreviewSet: Codable {
				public var data: Data

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appPreviewSets
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

				public init(data: Data) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(appPreviewSet: AppPreviewSet) {
				self.appPreviewSet = appPreviewSet
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.appPreviewSet = try values.decode(AppPreviewSet.self, forKey: "appPreviewSet")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(appPreviewSet, forKey: "appPreviewSet")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
