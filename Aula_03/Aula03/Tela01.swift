//
//  Tela01.swift
//  Aula03
//
//  Created by Turma01-9 on 02/04/24.
//

import SwiftUI

struct Tela01: View {
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.top)
            
            Circle()
                .frame(maxWidth: 300)

            Image(systemName: "xbox.logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 230)
                .foregroundColor(.green)
                
        }
        
    }
}

#Preview {
    Tela01()
}
