//
//  ContentView.swift
//  Pokedex
//
//  Created by Diego Vega Camacho on 29/11/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @State var pokemonList = [PokemonBase]()
    var body: some View {
        List(pokemonList) { pokemonBase in
            HStack {
                WebImage(url: URL(string: pokemonBase.perfil.sprites.front_default))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                Text(pokemonBase.pokemon.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
