//
//  ContentView.swift
//  FormNavigation
//
//  Created by Yuu on 16/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                // Section Photo Profile
                HStack{
                    Image("me")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    //Name and status
                    VStack(alignment:.leading){
                        Text("Yuu Dev").font(.headline)
                        Text("iOS Developer").font(.caption)
                    }
                }
                .padding(.top,10)
                .padding(.bottom,10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
