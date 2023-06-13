//
//  LIView.swift
//  Doc Route
//
//  Created by Oziel Alameda on 17/05/23.
//

import SwiftUI

struct LIView: View {
    @State private var username: String = ""
    @State private var contraseña: String = ""
    var body: some View {
        ZStack{
            Color("Base")
                .ignoresSafeArea()
            VStack{
                Image("Usuario").resizable().frame(width:200,height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black,lineWidth: 4)).shadow(color:Color.gray,radius: 5)
                Text("YOU").font(.largeTitle)
                TextField("Usuario",text:$username)
                    .frame(width: 250, height: 30)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .overlay(Rectangle().stroke(Color.black,lineWidth: 1))
                TextField("Contraseña",text:$contraseña)
                    .frame(width: 250, height: 30)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .overlay(Rectangle().stroke(Color.black,lineWidth: 1))
                Button(action:{print("Continuar")}, label:{
                    NavigationLink(destination:First())
                    {Text("Continuar")}
                        .font(.largeTitle)
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
    
    struct LIView_Previews: PreviewProvider {
        static var previews: some View {
            LIView()
        }
    }
}
