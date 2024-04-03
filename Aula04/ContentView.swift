//
//  ContentView.swift
//  Aula04
//
//  Created by Turma01-9 on 03/04/24.
//

import SwiftUI

struct Songs: Identifiable{
    var id: Int
    var name : String
    var artist: String
    var capa: String
}

var arrayMusicas = [
    Songs(id: 1, name: "Faint", artist: "Linkin Park",capa: "https://e0.pxfuel.com/wallpapers/58/954/desktop-wallpaper-linkin-park-background-linkin-park-linkin-park-meteora-linkin-park-all-albums.jpg"),
    Songs(id: 2, name: "Take on Me", artist: "A-ha",capa: "https://a-ha.com/uploads/discography/hunting-high-and-low-1985/Cover-Hunting-High-and-Low.jpg"),
    Songs(id: 3, name: "Beat it", artist: "Michael Jackson",capa: "https://upload.wikimedia.org/wikipedia/en/5/55/Michael_Jackson_-_Thriller.png"),
    Songs(id: 4, name: "Take on Me", artist: "A-ha",capa: " "),
    Songs(id: 5, name: "Take on Me", artist: "A-ha",capa: " "),
    Songs(id: 6, name: "Take on Me", artist: "A-ha",capa: " "),
]

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                
                LinearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    
                    VStack {
                        
                        Image("hacka-logo")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .padding()
                        
                        Spacer()

                        ForEach(arrayMusicas) { musica in
                            NavigationLink(destination: MusicaView(musicaNome: musica.name, musicaArtist: musica.artist,musicaImagem: musica.capa)){
                                HStack{
                                    
                                    AsyncImage(url: URL(string: musica.capa)){ image in
                                        image
                                            .image?.resizable()
                                            .scaledToFill()
                                    }
                                    .frame(width: 50, height: 50)
                                    
                                    VStack(alignment: .leading){
                                        Text(musica.name)
                                            .font(.title2)
                                        
                                        Text(musica.artist)
                                            .font(.subheadline)
                                    }
                                    .foregroundStyle(.white)
                                    .padding(.horizontal)
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                                Spacer()
                            }
                        }
                    }
                    ScrollView(.horizontal){
                        
                        HStack{
                            
                            ForEach(0..<3){ imagem in
                                VStack{
                                    Image("hacka-logo")
                                        .resizable()
                                        .frame(width: 200, height: 200)
                                    Text("Favoritos \(imagem + 1)" )
                                        .font(.title2)
                                        .foregroundStyle(.white)
                                }
                            }
                            
                        }
                        .padding()

                    }
                }
                .padding()
            }
            .navigationTitle("Hacka FM")
            
        }
        .accentColor(.black)
        
    }
}

//#Preview {
//    ContentView()
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
