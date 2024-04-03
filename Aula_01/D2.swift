//
//  D2.swift
//  Aula_01
//
//  Created by Turma01-9 on 28/03/24.
//

import SwiftUI

struct D2: View {
    var body: some View {
        HStack{
            VStack{
                    Image("wallpaper")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding()
            }
            
            VStack(spacing: 10){
                Text("HackaTruck")
                    .foregroundStyle(.red)
                Text("77 Universidades")
                    .foregroundStyle(.blue)
                Text("5 Regiões do Brasil")
                    .foregroundStyle(.yellow)
            }
            .padding()
        }
    }
}

#Preview {
    D2()
}
