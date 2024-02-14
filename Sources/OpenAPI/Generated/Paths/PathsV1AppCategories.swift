// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appCategories: AppCategories {
		AppCategories(path: path + "/appCategories")
	}

	public struct AppCategories {
		/// Path: `/v1/appCategories`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCategoriesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appCategories-get_collection")
		}

		public struct GetParameters {
			public var filterPlatforms: [FilterPlatforms]?
			public var isExistsParent: Bool?
			public var fieldsAppCategories: [FieldsAppCategories]?
			public var limit: Int?
			public var include: [Include]?
			public var limitSubcategories: Int?

			public enum FilterPlatforms: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
                case visionOs = "VISION_OS"
			}

			public enum FieldsAppCategories: String, Codable, CaseIterable {
				case parent
				case platforms
				case subcategories
			}

			public enum Include: String, Codable, CaseIterable {
				case parent
				case subcategories
			}

			public init(filterPlatforms: [FilterPlatforms]? = nil, isExistsParent: Bool? = nil, fieldsAppCategories: [FieldsAppCategories]? = nil, limit: Int? = nil, include: [Include]? = nil, limitSubcategories: Int? = nil) {
				self.filterPlatforms = filterPlatforms
				self.isExistsParent = isExistsParent
				self.fieldsAppCategories = fieldsAppCategories
				self.limit = limit
				self.include = include
				self.limitSubcategories = limitSubcategories
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatforms, forKey: "filter[platforms]")
				encoder.encode(isExistsParent, forKey: "exists[parent]")
				encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitSubcategories, forKey: "limit[subcategories]")
				return encoder.items
			}
		}
	}
}
