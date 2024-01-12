//
//  ContentView.swift
//  Doc Route
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("Base")
                    .ignoresSafeArea()
                VStack(spacing: 35){
                    Text("Doc Route")
                        .font(.largeTitle)
                        .bold()
                    Image("cora2")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                    Button(action:{print("inicia Sesión")}, label:{
                        NavigationLink(destination:LIView()){Text("Iniciar Sesión")}
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    })
                    Button(action:{print("Registrate")}, label:{
                        NavigationLink(destination:REView()){Text("Registrarse")}
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    })
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
