//
//  signuppage.swift
//  al
//
//  Created by student on 11/07/25.
//

import SwiftUI

struct signuppage: View {
    @State private var email:String = ""
    @State private var password:String = ""
    var body: some View {
        
        NavigationStack(){
            ScrollView{
                VStack(spacing:15){
                    Image(._7123945LogoPayGoogleGpayIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width:350, height: 200)
                    Text("Sign Up")
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
                    
                 
                    
                    Spacer()
                    Button{
                    }label:{
                        Text("Sign Up")
                            .frame(width:300,height:50)
                            .foregroundStyle(.gray)
                        
                            .background(Color(hue: 0.377, saturation: 0.19, brightness: 0.873))
                            .cornerRadius(12)
                    }
            
                }
                }
                
                .padding()
               
        }
        .padding(.top, 100.0)
    }
}

#Preview {
    signuppage()
}
