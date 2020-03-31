//
//  SignUpView.swift
//  SignUp
//
//  Created by Ivan Ivanov on 29.03.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @State private var signUpData = SignUpModel()
    var body: some View {
        ZStack {
            VStack {
                Text("Sign Up")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                
                Text("Who are you?")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding(.top)
                
                HStack {
                    VStack {
                        Image("child")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(maxWidth: 100)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            
                        }
                        
                        Text("CHILD")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.yellow)
                    }
                    
                    
                    VStack {
                        Image("parent")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(maxWidth: 100)
                            
                        Text("PARENT")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.orange)
                    }
                    
                    
                    VStack {
                        Image("teacher")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(maxWidth: 100)
                        Text("TEACHER")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                    }
                }
                
                
                Form{
                    Section{
                        HStack {
                            Image(systemName: "lock")
                                .aspectRatio(contentMode: .fill)
                            TextField("Username", text: $signUpData.userName)
                                .foregroundColor(Color.white)
                                .font(Font.custom("Papyrus", size: 20))
                                //.padding(.leading, 5)
                                .padding(.top, 5)
                        }
                        .padding(.leading, 10)
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(lineWidth: 2).foregroundColor(Color.black))
                        
                        HStack {
                            Image(systemName: "lock")
                                .aspectRatio(contentMode: .fill)
                            TextField("Email", text: $signUpData.email)
                                .foregroundColor(Color.white)
                                .font(Font.custom("Papyrus", size: 20))
                                //.padding(.leading, 5)
                                .padding(.top, 5)
                        }
                        .padding(.leading, 10)
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(lineWidth: 2).foregroundColor(Color.black))
                        
                        HStack {
                            Image(systemName: "lock")
                                .aspectRatio(contentMode: .fill)
                            TextField("Password", text: $signUpData.password)
                                .foregroundColor(Color.white)
                                .font(Font.custom("Papyrus", size: 20))
                                //.padding(.leading, 5)
                                .padding(.top, 5)
                        }
                        .padding(.leading, 10)
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(lineWidth: 2).foregroundColor(Color.black))
                        
                        HStack {
                            Image(systemName: "star")
                                .aspectRatio(contentMode: .fill)
                            TextField("Confirm password", text: $signUpData.confirmPassword)
                                .foregroundColor(Color.white)
                                .font(Font.custom("Papyrus", size: 20))
                                //.padding(.leading, 5)
                                .padding(.top, 5)
                        }
                        .padding(.leading, 10)
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(lineWidth: 2).foregroundColor(Color.black))
                        
                        GeometryReader { geometry in
                            ZStack {
                                Button(action: {}){
                                    Text("SIGNUP")
                                }
                            }
                            .frame(width: geometry.size.width, height: 60)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.green, lineWidth: 1)
                            )
                                .background(RoundedRectangle(cornerRadius: 40).fill(LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .leading, endPoint: .trailing)))
                                .padding(.top, 30)
                        }
                        
                        Spacer()
                        HStack {
                            Spacer()
                            Text("Already have an account.")
                            Text("Login here")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color.yellow)
                            Spacer()
                        }
                    }
                }
                
            }
            
        }//.background(Color.blue.edgesIgnoringSafeArea(.all))
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
