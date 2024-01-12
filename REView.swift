//
//  REView.swift
//  List
//

import SwiftUI

struct REView: View {
    @State private var name: String = ""
    @State private var dateOfBirth: Date = Date()
    @State private var direccion: String = ""
    @State private var hospital: String = ""
    @State private var seguro: String = ""
    @State private var password: String = ""
    @State private var confirmpassword: String = ""
    var body: some View {
        VStack{
            List{
                Text("Registro de Usuario")
                    .font(.title)
                    .padding()
                TextField("Nombre", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                DatePicker("Fecha de Nacimiento", selection: $dateOfBirth, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding()
                TextField("Direción", text: $direccion)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Hospital", text: $hospital)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Seguro", text: $seguro)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("Contraseña", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("Confirmar Contraseña", text: $confirmpassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action:{
                    registerUser()
                }) {
                    Text("Registrarte")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
                .padding()
                
                Spacer()
            }
        }
        .padding()
    }
    func registerUser() {
        guard !name.isEmpty else {
            print("Debes ingresar un nombre de usuario")
            return
        }
        
        guard !direccion.isEmpty else{
            print("Debes ingresar una dirección")
            return
        }
        
        guard !hospital.isEmpty else{
            print("Debes ingresar el nombre de su hospital")
            return
        }
        
        guard !seguro.isEmpty else{
            print("Debes ingresar la clave de tu seguro médico")
            return
        }
        
        guard !password.isEmpty else {
            print("Debes ingresar una contraseña")
            return
        }
        
        guard password == confirmpassword else {
            print("La contraseña y la confirmación de contraseña no coinciden")
            return
        }
        print("Usuario registrado \(name)")
        print("Contraseña: \(password)")
        
        name = ""
        dateOfBirth = Date()
        direccion = ""
        password = ""
        confirmpassword = ""
    }
}

struct REView_Previews: PreviewProvider {
    static var previews: some View {
        REView()
    }
}

