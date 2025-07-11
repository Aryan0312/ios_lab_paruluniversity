//
//  ContentView.swift
//  al
//
//  Created by student on 11/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var goToSignup:Bool = false
    var body: some View {
       
        NavigationStack(){
            ScrollView{
                VStack(spacing:15){
                    Image(._7123945LogoPayGoogleGpayIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width:350, height: 200)
                    Text("Welcome")
                        .font(.title)
                        .foregroundStyle(Color(red: 0.202, green: 0.66, blue: 0.324))
                        .fontWeight(.semibold)
                    Spacer()
                    
                    TextField("Email", text:$email)
                        .frame(width:300)
                        .padding()
                        .background(Color(red: 0.64, green: 0.845, blue: 0.694))
                        .cornerRadius(12)
                    
                    
                    TextField("password", text:$password)
                        .frame(width:300)
                        .padding()
                        .background(Color(red: 0.64, green: 0.845, blue: 0.694))
                        .cornerRadius(12)
                    
                    HStack{
                        Spacer()
                        
                        Button{
                            
                        }label:{
                            Text("Forget Password")
                            
                        }
                    }
                    
                    Spacer()
                    Button{
                    }label:{
                        Text("Login")
                            .frame(width:300,height:50)
                            .foregroundStyle(.gray)
                        
                            .background(Color(hue: 0.377, saturation: 0.19, brightness: 0.873))
                            .cornerRadius(12)
                    }
                    Spacer()
                    HStack{
                        Rectangle()
                            .fill(Color.gray.opacity(0.4))
                            .frame(width:100,height: 0.99)
                        
                        Text("Or")
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        Rectangle()
                            .fill(Color.gray.opacity(0.4))
                            .frame(width:100, height:0.99)
                    }
                    HStack{
                        Button{
                            
                        }label:{
                            Image(._7123945LogoPayGoogleGpayIcon)
                                .resizable()
                                .frame(width:30,height:30)
                        }
                    }
                    HStack{
                        Text("Dont't have an account")
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                        Button{
                            goToSignup = true
                        }label:{
                            Text("Register")
                        }
                        .padding(.leading,10)
                    }
                    .padding(.top, 70.0)
                }
                }
                
                .padding()
                .navigationDestination(isPresented: $goToSignup){
                    signuppage()
                }
            }
        }
    }


#Preview {
    ContentView()
}
