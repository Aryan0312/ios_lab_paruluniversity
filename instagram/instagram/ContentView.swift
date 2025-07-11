//
//  ContentView.swift
//  instagram
//
//  Created by student on 11/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var goToSignup:Bool = false
    var body: some View {
        
        NavigationStack{
            ScrollView{
                
                VStack(spacing:15){
                    Image(._0824CCDEE3EF44FC9E1A9B5B9DBC40C01105C)
                        .resizable()
                        .scaledToFit()
                        .frame(width:350)
                    Text("Welcome")
                        .font(.title)
                        .foregroundStyle(Color(red: 0.916, green: 0.374, blue: 0.433))
                        .fontWeight(.semibold)
                    Spacer()
                    
                    TextField("Email",text:$email)
                        .frame(width: 300)
                        .padding()
                        .background(Color(red: 0.977, green: 0.879, blue: 0.894))
                        .cornerRadius(12)
                    
                    TextField("password",text: $password)
                        .frame(width: 300)
                        .padding()
                        .background(Color(red: 0.977, green: 0.879, blue: 0.894))
                        .cornerRadius(12)
                    
                    HStack{
                        
                        Button{
                            
                        }label: {
                            Text("Forgot Password?")
                                .padding(.leading, 180)
                                .foregroundStyle(Color(hue: 0.974, saturation: 0.433, brightness: 0.959))
                        }
                    }
                    
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("Login")
                            .frame(width:250,height: 50)
                            .foregroundStyle(.white)
                            .background(Color(red: 0.911, green: 0.379, blue: 0.419))
                            .cornerRadius(50)
                    }
                    
                    ZStack{
                        Divider()
                            .overlay(Color(hue: 0.987, saturation: 0.841, brightness: 0.955))
                            .padding(.horizontal, 100.0)
                            
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 30)
                        Text("Or")
                            .background(Color.white)
                            .padding(11.0)
                    }
                    
                    HStack(spacing: 25.0){
                        Button{
                            
                        }label: {
                            Image(._2993685BrandBrandsGoogleLogoLogosIcon)
                                .resizable()
                                .frame(width: 30,height:30)
                        }
                        Button{
                            
                        }label: {
                            Image(._104490AppleIcon)
                                .resizable()
                                .frame(width: 35,height:35)
                        }
                        Button{
                            
                        }label: {
                            Image(._3225194AppFacebookLogoMediaPopularIcon)
                                .resizable()
                                .frame(width: 30,height:30)
                        }
                    }
                    
                    
                    HStack(){
                        Text("Don't have an account?")
                        
                        Button{
                            goToSignup = true
                        }label: {
                            Text("Sign Up")
                                .fontWeight(.semibold)
                            
                        }
                    }
                    .padding(.top, 90)
                    
                }
                .padding()
                
                .navigationDestination(isPresented: $goToSignup){
                    signuppage()
                }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}


// vstack hstack zstack
