//
//  Tela04.swift
//  Aula03
//
//  Created by Turma01-9 on 02/04/24.
//

import SwiftUI

struct Tela04: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink(destination: Tela01()){
                    Label("Xbox",systemImage: "xbox.logo")
                }
                NavigationLink(destination: Tela02()){
                    Label("PlayStation",systemImage: "playstation.logo")
                }
                NavigationLink(destination: Tela03()){
                    Label("PC",systemImage: "macpro.gen1")
                }
            }
            .navigationTitle("Lista")
        }
        .accentColor(.black)
        
    }
}

#Preview {
    Tela04()
}
