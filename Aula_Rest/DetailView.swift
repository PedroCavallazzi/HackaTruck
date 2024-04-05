//
//  DetailView.swift
//  Aula_Rest
//
//  Created by Turma01-9 on 05/04/24.
//

import SwiftUI

struct DetailView: View {
    
    @State var nomePersonagem : HaPo
    
    var body: some View {
        ZStack{
            VStack{
                
                AsyncImage(url: URL(string: nomePersonagem.image!)){ e in
                    e
                        .image?.resizable()
                        .scaledToFit()
                }
                .frame(width:80)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                
                Text(nomePersonagem.name!)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text(nomePersonagem.house!)
                    .font(.title2)
                
                Spacer()
                Text(nomePersonagem.gender!)
                    .font(.subheadline)
                Spacer()
            }
        }
        .background(.gray)
        
    }
    
}

#Preview {
    DetailView(nomePersonagem: HaPo(id: "", name: "", gender: "", house: "", dateOfBirth: "", yearOfBirth: 0, image: ""))
}
