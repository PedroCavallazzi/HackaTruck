//
//  MusicaView.swift
//  Aula04
//
//  Created by Turma01-9 on 03/04/24.
//

import SwiftUI

struct MusicaView: View {
    
    @State var musicaNome: String = " "
    @State var musicaArtist: String = " "
    @State var musicaImagem: String = " "
    
    var body: some View {
        ZStack{
            
            LinearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                AsyncImage(url: URL(string: musicaImagem)){ image in
                    image
                        .image?.resizable()
                        .aspectRatio(contentMode: .fill)
                        .scaledToFill()
                }
                .frame(width: 250, height: 250)
                
                Text(musicaNome)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Text(musicaArtist)
                    .font(.headline)
                    .foregroundStyle(.white)
                Spacer()
                
                
                HStack(spacing: 40){
                    
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                    
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                    
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                    
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                    
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                }
                .padding()
                Spacer()
                
            }
        }
    }
    
}

#Preview {
    MusicaView()
}
