//
//  signuppage.swift
//  instagram
//
//  Created by student on 11/07/25.
//

import SwiftUI

struct signuppage: View {
    @State private var email:String = ""
    @State private var password:String = ""
    var body: some View {
        
        
        NavigationStack{
            ScrollView{
             
                
                Spacer()
                    .padding(.top,100)
                VStack(spacing:15){
                    Image(._0824CCDEE3EF44FC9E1A9B5B9DBC40C01105C)
                        .resizable()
                        .scaledToFit()
                        .frame(width:350)
                    Text("Sign up with us ")
                        .font(.title)
                        .foregroundStyle(Color(red: 0.916, green: 0.374, blue: 0.433))
                        .fontWeight(.semibold)
                    Spacer()
                    
                    TextField("Email",text: $email)
                        .frame(width: 300)
                        .padding()
                        .background(Color(red: 0.977, green: 0.879, blue: 0.894))
                        .cornerRadius(12)
                    
                    TextField("password",text: $password)
                        .frame(width: 300)
                        .padding()
                        .background(Color(red: 0.977, green: 0.879, blue: 0.894))
                        .cornerRadius(12)
                    
                
                    
                    
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("Sign Up")
                            .frame(width:250,height: 50)
                            .foregroundStyle(.white)
                            .background(Color(red: 0.911, green: 0.379, blue: 0.419))
                            .cornerRadius(50)
                    }
                    
                   
                    
                    
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    signuppage()
}
