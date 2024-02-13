// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiAction: Codable {
	public var name: String?
	public var actionType: CiActionType?
	public var destination: Destination?
	public var buildDistributionAudience: BuildAudienceType?
	public var testConfiguration: TestConfiguration?
	public var scheme: String?
	public var platform: Platform?
	public var isRequiredToPass: Bool?

	public enum Destination: String, Codable, CaseIterable {
		case anyIosDevice = "ANY_IOS_DEVICE"
		case anyIosSimulator = "ANY_IOS_SIMULATOR"
		case anyTvosDevice = "ANY_TVOS_DEVICE"
		case anyTvosSimulator = "ANY_TVOS_SIMULATOR"
		case anyWatchosDevice = "ANY_WATCHOS_DEVICE"
		case anyWatchosSimulator = "ANY_WATCHOS_SIMULATOR"
		case anyMac = "ANY_MAC"
		case anyMacCatalyst = "ANY_MAC_CATALYST"
	}

	public struct TestConfiguration: Codable {
		public var kind: Kind?
		public var testPlanName: String?
		public var testDestinations: [CiTestDestination]?

		public enum Kind: String, Codable, CaseIterable {
			case useSchemeSettings = "USE_SCHEME_SETTINGS"
			case specificTestPlans = "SPECIFIC_TEST_PLANS"
		}

		public init(kind: Kind? = nil, testPlanName: String? = nil, testDestinations: [CiTestDestination]? = nil) {
			self.kind = kind
			self.testPlanName = testPlanName
			self.testDestinations = testDestinations
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.kind = try values.decodeIfPresent(Kind.self, forKey: "kind")
			self.testPlanName = try values.decodeIfPresent(String.self, forKey: "testPlanName")
			self.testDestinations = try values.decodeIfPresent([CiTestDestination].self, forKey: "testDestinations")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(kind, forKey: "kind")
			try values.encodeIfPresent(testPlanName, forKey: "testPlanName")
			try values.encodeIfPresent(testDestinations, forKey: "testDestinations")
		}
	}

	public enum Platform: String, Codable, CaseIterable {
		case macos = "MACOS"
		case ios = "IOS"
		case tvos = "TVOS"
		case watchos = "WATCHOS"
        case visionos = "VISIONOS"
	}

	public init(name: String? = nil, actionType: CiActionType? = nil, destination: Destination? = nil, buildDistributionAudience: BuildAudienceType? = nil, testConfiguration: TestConfiguration? = nil, scheme: String? = nil, platform: Platform? = nil, isRequiredToPass: Bool? = nil) {
		self.name = name
		self.actionType = actionType
		self.destination = destination
		self.buildDistributionAudience = buildDistributionAudience
		self.testConfiguration = testConfiguration
		self.scheme = scheme
		self.platform = platform
		self.isRequiredToPass = isRequiredToPass
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.name = try values.decodeIfPresent(String.self, forKey: "name")
		self.actionType = try values.decodeIfPresent(CiActionType.self, forKey: "actionType")
		self.destination = try values.decodeIfPresent(Destination.self, forKey: "destination")
		self.buildDistributionAudience = try values.decodeIfPresent(BuildAudienceType.self, forKey: "buildDistributionAudience")
		self.testConfiguration = try values.decodeIfPresent(TestConfiguration.self, forKey: "testConfiguration")
		self.scheme = try values.decodeIfPresent(String.self, forKey: "scheme")
		self.platform = try values.decodeIfPresent(Platform.self, forKey: "platform")
		self.isRequiredToPass = try values.decodeIfPresent(Bool.self, forKey: "isRequiredToPass")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(name, forKey: "name")
		try values.encodeIfPresent(actionType, forKey: "actionType")
		try values.encodeIfPresent(destination, forKey: "destination")
		try values.encodeIfPresent(buildDistributionAudience, forKey: "buildDistributionAudience")
		try values.encodeIfPresent(testConfiguration, forKey: "testConfiguration")
		try values.encodeIfPresent(scheme, forKey: "scheme")
		try values.encodeIfPresent(platform, forKey: "platform")
		try values.encodeIfPresent(isRequiredToPass, forKey: "isRequiredToPass")
	}
}
