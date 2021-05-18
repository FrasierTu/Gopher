//
//  LoginView.swift
//  GopherViwer
//
//  Created by frasier tu on 2021/2/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var signInResult: Bool
    @State private var username = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            /*
            TextField("你的名字", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            */
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.secondary)
                TextField("名稱", text: $username)
                    .frame(minWidth:180, maxWidth: 240)
                    .foregroundColor(Color.black)
            }
            .padding()
            //.border(Color.green)
            //.background(Color.gray)
            //.cornerRadius(10)
            .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 1)
                    )
            
            HStack {
                Image(systemName: "key")
                    //.resizable()
                    //.frame(width: 16.0, height: 16.0)
                    .foregroundColor(.secondary)
                TextField("密碼", text: $password)
                    .frame(minWidth:180, maxWidth: 240)
                    .foregroundColor(Color.black)
            }
            .padding()
            //.background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue, lineWidth: 1)
            )

            Button(action: {
                withAnimation {
                    self.signInResult = true
                }
            }) {
                Text("OK")
                    /*
                    .font(.headline)
                    .border(Color.black)
                    .frame(width: 300, height: 50)
                    .padding()
                    .cornerRadius(15.0)
 */
                    .font(.headline)
                    .foregroundColor(.white)
                    //.padding()
                    .frame(width: 300, height: 48)
                    //.background(Color.green)
                    .background(username.isEmpty || password.isEmpty ? Color.gray : Color.green)
                    .cornerRadius(12.0)
            }
            .padding()
            .disabled(username.isEmpty || password.isEmpty)
        }
    }
}
