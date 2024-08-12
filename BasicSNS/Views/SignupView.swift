//
//  SignupView.swift
//  BasicSNS
//
//  Created by mbp on 8/12/24.
//

import SwiftUI

struct SignupView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var password_confirm: String = ""
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .padding(.bottom, 40)
            VStack(alignment: .leading) {
                Text("Full Name")
                TextField("", text: $name)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8.0)
                Text("Username")
                TextField("", text: $username)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8.0)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                Text("Password")
                SecureField("", text: $password)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8.0)
                Text("Confirm Password")
                SecureField("", text: $password_confirm)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8.0)
            }
            
            Button(action: {
                print("Signup Button Pressed")
            }) {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .cornerRadius(8.0)
            }
            .padding(.top, 20)
            
            Button(action: {
                print("Redirect to Login")
            }) {
                Text("Already have an account?")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(8.0)
            }
            .padding(.top, 20)

            
            Spacer()
        }.padding()
    }
}

#Preview {
    SignupView()
}
