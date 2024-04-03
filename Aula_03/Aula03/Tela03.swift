//
//  Tela03.swift
//  Aula03
//
//  Created by Turma01-9 on 02/04/24.
//

import SwiftUI

struct Tela03: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
            
            Circle()
                .frame(maxWidth: 300)
            
            Image(systemName: "macpro.gen1")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 200)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    Tela03()
}
