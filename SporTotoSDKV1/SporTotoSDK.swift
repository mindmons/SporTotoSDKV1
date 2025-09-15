import Foundation

public final class SporTotoSDK {
    public static let shared = SporTotoSDK()
    private init() {}

    private let api = ValorantAPI()

    public func fetchAgents(onlyPlayable: Bool = true,
                            completion: @escaping (Result<[Agent], Error>) -> Void) {
        api.fetchAgents(onlyPlayable: onlyPlayable, completion: completion)
    }
}

