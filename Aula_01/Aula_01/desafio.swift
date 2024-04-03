//
//  desafio.swift
//  Aula_01
//
//  Created by Turma01-9 on 28/03/24.
//

import SwiftUI

struct desafio: View {
    @State var username : String
    var body: some View {
        ZStack{
            Image("fundo")
                .opacity(0.2)
            VStack{
                Text("Bem vindo " + username)
                
                
                TextField("Enter your name", text: $username)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .padding()
                
                HStack{
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200,height: 200)
                                            .padding()
                }
            }
            
            ZStack{
                
            }
            
           
        }
    }
}

#Preview {
    desafio(username:"")
}
