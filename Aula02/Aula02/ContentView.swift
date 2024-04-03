//
//  ContentView.swift
//  Aula02
//
//  Created by Turma01-9 on 01/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var peso = ""
    @State private var altura = ""
    @State private var imc: Double = 0.0
    
    func calcularIMC() {
        let pesoNumero = (peso as NSString).doubleValue
        let alturaNumero = (altura as NSString).doubleValue
        
        imc = (pesoNumero / (alturaNumero * alturaNumero))
        
        
    }
    
    var classificacao: String {
            switch imc {
            case ...0:
                return " "
            case 0..<18.5:
                return "Baixo Peso"
            case 18.5..<25:
                return "Normal"
            case 25..<30:
                return "Sobrepeso"
            default:
                return "Obesidade"
            }
        }
    
    var corDeFundo: Color{
        switch classificacao{
        case " ":
            return.white
        case "Baixo Peso":
            return.baixoPeso
        case "Normal":
            return.normal
        case "Sobrepeso":
            return.sobrePeso
        case "Obesidade":
            return.obesidade
        default:
            return.white
        }
    }
    
    var body: some View {
        ZStack{
            
           Color(corDeFundo)
                .animation(.easeInOut)
                .ignoresSafeArea()
              
            
            VStack{
                Text("Calculadora IMC")
                    .font(.largeTitle)
                TextField("Seu peso", text: $peso)
                    .keyboardType(.numberPad)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                TextField("Sua altura", text: $altura)
                    .keyboardType(.numberPad)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Calcular"){
                    calcularIMC()
                }
                .buttonStyle(.borderedProminent)
                Spacer()
                
                Text("\(String(format: "%.2f", imc))")
                Text(classificacao)
                    .font(.largeTitle)
                
                Spacer()
                
                
                VStack{
                    Text("VALORES DO IMC: PESSOAS DE 20 A 60 ANOS")
                        .font(.headline.bold())
                        .foregroundStyle(.black)
                    HStack{
                        VStack{
                            Text("Valor do IMC")
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                            Text("Menor que 18,5")
                                .frame(maxWidth: .infinity)
                                .background(Color.baixoPeso)
                            Text("de 18.5 a 24,99")
                                .frame(maxWidth: .infinity)
                                .background(Color.normal)
                            Text("de 25 a 29,99")
                                .frame(maxWidth: .infinity)
                                .background(Color.sobrePeso)
                            Text("Maior que 30")
                                .frame(maxWidth: .infinity)
                                .background(Color.obesidade)
                            
                        }
                        
                        VStack{
                            Text("Classificação")
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                            Text("Baixo Peso")
                                .frame(maxWidth: .infinity)
                                .background(Color.baixoPeso)
                            Text("Normal")
                                .frame(maxWidth: .infinity)
                                .background(Color.normal)
                            Text("Sobrepeso")
                                .frame(maxWidth: .infinity)
                                .background(Color.sobrePeso)
                            Text("Obesidade")
                                .frame(maxWidth: .infinity)
                                .background(Color.obesidade)
                                
                        }
                        
                    }
                    Text(" ")
                        .frame(maxWidth: .infinity)
                        .background(Color(corDeFundo))
                }
                .background(Color.white)
            }
        }
//        .background(corDeFundo.animation(.easeInOut))
        
        }
    
}

#Preview {
    ContentView()
}
