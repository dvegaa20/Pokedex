//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by Diego Vega Camacho on 06/12/23.
//

import Foundation

struct Api {
    
    static let base = "https://pokeapi.co/api/v2/"
    
    struct routes {
        static let pokemon = "/pokemon"
    }
}

class PokemonRepository: PokemonAPIProtocol {
    
    func getPokemonList(limit: Int) async -> Pokedex? {
        
    }
    func getPokemonInfo(numberPokemon: Int) async -> Perfil? {
        
    }
}

class PokemonRepository: PokemonAPIProtocol {
    let nservice: NetworkAPIService
}

