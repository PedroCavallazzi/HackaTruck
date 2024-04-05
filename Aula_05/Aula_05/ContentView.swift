//
//  ContentView.swift
//  Aula_05
//
//  Created by Turma01-9 on 04/04/24.
//

import SwiftUI
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

var titulo: String  = " "

var Locations = [
    Location(
              name: "Florianópolis",
              coordinate: CLLocationCoordinate2D(latitude: -27.593500, longitude:  -48.558540),
              flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Bandeira_de_Florianópolis.svg/240px-Bandeira_de_Florianópolis.svg.png"
              ,
              description: "Originalmente foi denominada ilha de Santa Catarina, já que Francisco Dias Velho, o fundador do povoado, chegou ao local no dia de Santa Catarina. Ela continuou por muito tempo sendo assim chamada, inclusive ao se tornar vila com o nome de Nossa Senhora do Desterro, como comprovam as correspondências oficiais e as cartas de navegação da época onde ainda se mencionava a ilha de Santa Catarina."
            ),
    Location(
              name: "Londres",
              coordinate: CLLocationCoordinate2D(latitude: 51.5072, longitude: -0.1275),
              flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_the_City_of_London_%282x1%29.svg/400px-Flag_of_the_City_of_London_%282x1%29.svg.png",
              description: "Londres é a capital da Inglaterra e do Reino Unido. Por dois milénios, foi um grande povoado e sua história remonta à sua fundação pelos romanos, quando foi nomeada Londínio. O centro de Londres, a antiga City of London, também conhecida como The Square Mile (a milha quadrada) ou The City, mantém as suas fronteiras medievais. Pelo menos desde o século XIX, o nome Londres refere-se à metrópole desenvolvida em torno desse núcleo.[3] Hoje, a maior parte dessa conurbação constitui a região da Grande Londres, cuja área administrativa tem seu próprio prefeito eleito e assembleia. A cidade abriga a sede da Comunidade das Nações."
            ),
    Location(
              name: "Tokyo",
              coordinate: CLLocationCoordinate2D(latitude: 35.652832, longitude:   139.839478),
              flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Flag_of_Tokyo_Metropolis.svg/200px-Flag_of_Tokyo_Metropolis.svg.png",
              description: "Londres é a capital da Inglaterra e do Reino Unido. Por dois milénios, foi um grande povoado e sua história remonta à sua fundação pelos romanos, quando foi nomeada Londínio. O centro de Londres, a antiga City of London, também conhecida como The Square Mile (a milha quadrada) ou The City, mantém as suas fronteiras medievais. Pelo menos desde o século XIX, o nome Londres refere-se à metrópole desenvolvida em torno desse núcleo.[3] Hoje, a maior parte dessa conurbação constitui a região da Grande Londres, cuja área administrativa tem seu próprio prefeito eleito e assembleia. A cidade abriga a sede da Comunidade das Nações."
            ),
]

struct ContentView: View {
    
    @State private var localSelecionado: Location? = nil
    
    @State private var mostrarDetalher = false
    
    @State private var titulo = " "
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -27.593500, longitude:  -48.558540), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    )
    
    var body: some View {
        ZStack{
            
            Map(position: $position){
                ForEach(Locations){local in
                    Annotation(local.name, coordinate: local.coordinate) {
                        ZStack {
                            Button(){
                                localSelecionado = local
                                position = .region(MKCoordinateRegion(center:local.coordinate,span:MKCoordinateSpan(
                                    latitudeDelta: 0.5,
                                    longitudeDelta: 0.5)))
                            }label:{
                                Image(systemName: "pin.fill")
                                    .foregroundColor(.red)
                            }
                            .sheet(item: $localSelecionado) { local in
                                MapaView(bandeiraSelecionada: local.flag,
                                         textoSelecionado:local.description,
                                         nomeSelecionado: local.name)
                            }
                        }
                    }
                    
                }
            }
            .ignoresSafeArea()
            
            VStack{
                ZStack{

                    HStack{
                        
                    }
                    .frame(minWidth: 0, maxWidth:.infinity, minHeight:0, maxHeight: 70)
                    .background(.white)
                    .opacity(0.5)
                    
                    Text(titulo)
                        .font(.title)
                        .bold()
                }
                    
            HStack(spacing: 40){
                
                ForEach(Locations) {local in
                    VStack{
                        
                        Spacer()
                        
                        Button(){
                            titulo = local.name
                            position = .region(MKCoordinateRegion(center:local.coordinate,span:MKCoordinateSpan(
                                latitudeDelta: 0.5,
                                longitudeDelta: 0.5)))
                            
                        }label: {
                            AsyncImage(url: URL(string: local.flag)){ image in
                                image
                                    .image?.resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 100, height: 100)
                        }
                    }
                }
                
            }
        }
        }
        .onAppear{
            titulo = " "
        }
        
    }
    }
        



struct MapaView: View{
    
    @State var bandeiraSelecionada: String
    @State var textoSelecionado: String
    @State var nomeSelecionado: String
    
    var body: some View{
        Text(nomeSelecionado)
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.gray)
        
        
        AsyncImage(url: URL(string: bandeiraSelecionada)){ image in
            image
                .image?.resizable()
                .scaledToFit()
        }
        .frame(width: 300, height: 300)
        
        Text(textoSelecionado)
            .font(.subheadline).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()        .frame(alignment: .top)
    }
    
}




#Preview {
    ContentView()
}
