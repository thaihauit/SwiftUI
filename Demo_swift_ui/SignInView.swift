//
//  SignInView.swift
//  Demo_swift_ui
//
//  Created by D.Ace on 5/5/20.
//  Copyright © 2020 D.Ace. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TitleView()
            LogoView()
            Group {
                HStack {
                    Image(systemName: "person").foregroundColor(.gray)
                    TextField("Enter your firstName", text: $username)
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1)).padding([.leading], 16.0).padding([.trailing], 16.0).padding(.bottom, 10)
            }
            Group {
                HStack {
                    Image(systemName: "pencil.tip").foregroundColor(.gray)
                    TextField("Enter your password", text: $password)
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1)).padding([.leading], 16.0).padding([.trailing], 16.0).padding(.bottom, 10)
            }
            
            Button(action: {
                print(self.username)
                print(self.password)
                
            }) {
                Text("LOGIN").padding()
                .frame(width: 350, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(15)
                
            }
                
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct LogoView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(100)
            .padding(.bottom, 42)
    }
}

struct TitleView: View {
    var body: some View {
        Text("GOTRIP").font(.largeTitle).foregroundColor(.blue).fontWeight(.bold).padding(.bottom, 4.0)
    }
}
