import Foundation

public struct AgentResponse: Codable {
    public let status: Int
    public let data: [Agent]
}

public struct Agent: Codable {
    public let uuid: String
    public let displayName: String
    public let description: String
    public let developerName: String
    public let releaseDate: String
    public let characterTags: [String]?
    public let displayIcon: String?
    public let displayIconSmall: String?
    public let bustPortrait: String?
    public let fullPortrait: String?
    public let fullPortraitV2: String?
    public let killfeedPortrait: String?
    public let minimapPortrait: String?
    public let homeScreenPromoTileImage: String?
    public let background: String?
    public let backgroundGradientColors: [String]?
    public let assetPath: String
    public let isFullPortraitRightFacing: Bool
    public let isPlayableCharacter: Bool
    public let isAvailableForTest: Bool
    public let isBaseContent: Bool
    public let role: Role?
    public let recruitmentData: RecruitmentData?
    public let abilities: [Ability]
    public let voiceLine: VoiceLine?
}

public struct Role: Codable {
    public let uuid: String
    public let displayName: String
    public let description: String
    public let displayIcon: String?
    public let assetPath: String
}

public struct Ability: Codable {
    public let slot: String
    public let displayName: String
    public let description: String
    public let displayIcon: String?
}

public struct RecruitmentData: Codable {
    public let counterId: String?
    public let milestoneId: String?
    public let milestoneThreshold: Int?
    public let startDate: String?
    public let endDate: String?
    public let useLevelVpCostOverride: Bool?
    public let levelVpCostOverride: Int?
}

public struct VoiceLine: Codable { }

