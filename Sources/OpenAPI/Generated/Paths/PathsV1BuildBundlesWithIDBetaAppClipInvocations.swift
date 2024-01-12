// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BuildBundles.WithID {
	public var betaAppClipInvocations: BetaAppClipInvocations {
		BetaAppClipInvocations(path: path + "/betaAppClipInvocations")
	}

	public struct BetaAppClipInvocations {
		/// Path: `/v1/buildBundles/{id}/betaAppClipInvocations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaAppClipInvocationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "buildBundles-betaAppClipInvocations-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]?
			public var fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations]?
			public var limit: Int?
			public var limitBetaAppClipInvocationLocalizations: Int?
			public var include: [Include]?

			public enum FieldsBetaAppClipInvocations: String, Codable, CaseIterable {
				case betaAppClipInvocationLocalizations
				case buildBundle
				case url
			}

			public enum FieldsBetaAppClipInvocationLocalizations: String, Codable, CaseIterable {
				case betaAppClipInvocation
				case locale
				case title
			}

			public enum Include: String, Codable, CaseIterable {
				case betaAppClipInvocationLocalizations
			}

			public init(fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]? = nil, fieldsBetaAppClipInvocationLocalizations: [FieldsBetaAppClipInvocationLocalizations]? = nil, limit: Int? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil, include: [Include]? = nil) {
				self.fieldsBetaAppClipInvocations = fieldsBetaAppClipInvocations
				self.fieldsBetaAppClipInvocationLocalizations = fieldsBetaAppClipInvocationLocalizations
				self.limit = limit
				self.limitBetaAppClipInvocationLocalizations = limitBetaAppClipInvocationLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBetaAppClipInvocations, forKey: "fields[betaAppClipInvocations]")
				encoder.encode(fieldsBetaAppClipInvocationLocalizations, forKey: "fields[betaAppClipInvocationLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitBetaAppClipInvocationLocalizations, forKey: "limit[betaAppClipInvocationLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
