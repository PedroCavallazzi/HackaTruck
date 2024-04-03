//
//  ContentView.swift
//  Aula03
//
//  Created by Turma01-9 on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tela01()
                .tabItem {
                    Label("Xbox", systemImage: "xbox.logo")
                }

            Tela02()
                .tabItem{
                    Label("PlayStation", systemImage: "playstation.logo")
                }
            
            Tela03()
                .tabItem{
                    Label("PC", systemImage: "macpro.gen1.fill")
                }
            
            Tela04()
                .tabItem {
                    Label("Lista", systemImage: "list.dash")
                }
            
        }
        .transition(.slide)
    }
}

#Preview {
    ContentView()
}
