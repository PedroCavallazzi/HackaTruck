//
//  ContentView.swift
//  Aula_01
//
//  Created by Turma01-9 on 28/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: 90,maxHeight: 90)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
                
                Rectangle()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: 90,maxHeight: 90)
                    .foregroundColor(.red)
            }
            Spacer()
            HStack{
                Rectangle()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: 90,maxHeight: 90)
                    .foregroundColor(.green)
                Spacer()
                Rectangle()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: 90,maxHeight: 90)
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
