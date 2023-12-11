//
//  PokemonAPIProtocol.swift
//  Pokedex
//
//  Created by Diego Vega Camacho on 06/12/23.
//

import Foundation

protocol PokemonAPIProtocol {
    func getPokemonList(limit: Int) async -> Pokedex?
    func getPokemonInfo(numberPokemon: Int) async -> Perfil?
}
