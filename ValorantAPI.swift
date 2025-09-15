import Foundation

public final class ValorantAPI {
    public init() {}

    public func fetchAgents(onlyPlayable: Bool = true,
                            completion: @escaping (Result<[Agent], Error>) -> Void) {
        var components = URLComponents(string: "https://valorant-api.com/v1/agents")!
        if onlyPlayable {
            components.queryItems = [URLQueryItem(name: "isPlayableCharacter", value: "true")]
        }
        guard let url = components.url else {
            completion(.failure(NSError(domain: "Invalid URL", code: -1)))
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error { return completion(.failure(error)) }
            guard let data = data else { return completion(.failure(NSError(domain: "No data", code: -1))) }
            do {
                let decoded = try JSONDecoder().decode(AgentResponse.self, from: data)
                completion(.success(decoded.data))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
