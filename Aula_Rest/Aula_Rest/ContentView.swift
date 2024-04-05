//
//  ContentView.swift
//  Aula_Rest
//
//  Created by Turma01-9 on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
            VStack{
                AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Harry_Potter_wordmark.svg/1600px-Harry_Potter_wordmark.svg.png")){ image in
                    image
                        .image?.resizable()
                        .scaledToFill()
                }
                .frame(width: 50, height: 50)

                ScrollView{
                
                    ForEach(viewModel.chars){ index in
                        NavigationLink(destination: DetailView(nomePersonagem: index)){
                            HStack{
                                AsyncImage(url: URL(string: index.image!)){ e in
                                    e
                                        .image?.resizable()
                                        .scaledToFill()
                                }
                                .frame(width:80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal)
                                
                                VStack(alignment:.leading){
                                    Text(index.name!)
                                        .foregroundStyle(.black)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    Text(index.house!)
                                        .font(.subheadline)
                                        .foregroundStyle(.black)
                                }
                                
                                Spacer()
                            }
                            .background(.white.opacity(0.5))
                            .cornerRadius(10)
                        }
        
                            
                            
                    
                }
                .padding()
            }
                .background(.black)
            }
            .background(.yellow)
            .onAppear(){
                viewModel.fetch()
            }
            }
        }
    }
}

#Preview {
    ContentView()
}
