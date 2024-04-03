//
//  Tela02.swift
//  Aula03
//
//  Created by Turma01-9 on 02/04/24.
//

import SwiftUI

struct Tela02: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
            
            Circle()
                .frame(maxWidth: 300)
            
            Image(systemName: "playstation.logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 230)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    Tela02()
}
