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
                    NavigationLink(destination: Maintenance()){
                        HStack{
                            Image("me")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
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
                
                // Section general Setting
                Section(header: Text("General Setting")){
                    NavigationLink(destination: Maintenance()){
                        HStack(spacing: 20){
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Stared Messages")
                        }
                    }
                    
                    NavigationLink(destination: Maintenance()){
                        HStack(spacing: 20){
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Whats App Web/Desktop")
                        }
                    }
                }
                
                // Section general Setting
                Section(header: Text("Account Setting")){
                    NavigationLink(destination: Maintenance()){
                        HStack(spacing: 20){
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Account")
                        }
                    }
                    
                    
                    NavigationLink(destination: Maintenance()){
                        HStack(spacing: 20){
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Chat")
                        }
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

struct Maintenance : View {
    var body: some View{
        Text("Under Construction")
    }
}
