    //
    //  ContentView.swift
    //  AluraViagens
    //
    //  Created by Grazielli Berti on 19/12/21.
    //
    
    import SwiftUI
    
    struct ContentView: View {
        @Environment(\.horizontalSizeClass) var horizontalSizeClass
        
        var body: some View {
            
            NavigationView {
                GeometryReader { view in
                    VStack {
                        HeaderView()
                            .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 250)
                        List(viagens) { viagem in
                            NavigationLink( destination: MapView(coordenada: viagem.localizacao).navigationBarTitle("Localização \(viagem.titulo)")) {
                                CellTravelView(viagem: viagem)
                            }
                        }.navigationBarTitle("")
                    }
                }
                .edgesIgnoringSafeArea(.all)
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
