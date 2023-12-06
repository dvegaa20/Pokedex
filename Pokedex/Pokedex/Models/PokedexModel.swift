//
//  PokedexModel.swift
//  Pokedex
//
//  Created by Diego Vega Camacho on 30/11/23.
//

import Foundation

struct Pokedex {
    var count: Int
    var resilts: [Pokemon]
}

struct Pokemon {
    var name: String
    var url: String
}

struct Perfil {
    var sprites: Sprite
}

struct Sprite {
    var front_default: String
    var back_default: String
}

struct PokemonBase: Identifiable {
    var id: Int
    var pokemon: Pokemon
    var perfil: Perfil
}
