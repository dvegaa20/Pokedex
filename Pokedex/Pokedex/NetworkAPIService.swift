//
//  NetworkAPIService.swift
//  Pokedex
//
//  Created by Diego Vega Camacho on 06/12/23.
//

import Foundation
import Alamofire

class NetworkAPIService {
    static let shared = NetworkAPIService()
}

func getPokedex(url: URL, limit: Int) async -> Pokedex? {
    let parameters : Parameters = [
        "limit" : limit
    ]
        
    let taskRequest = AF.request(url, method: .get, parameters: parameters).validate()
    let response = await taskRequest.serializingData().response

    switch response.result {
    case .success(let data):
        do {
            return try JSONDecoder().decode(Pokedex.self, from: data)
        } catch {
            return nil
        }
    case let .failure(error):
        debugPrint(error.localizedDescription)
        return nil
    }
}
