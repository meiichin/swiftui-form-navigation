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
                Section(){
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
                
                // Section general Setting
                Section(header: Text("General Setting")){
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Text("Stared Messages")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "tv")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Text("Whats App Web/Desktop")
                    }
                }
            }.navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
