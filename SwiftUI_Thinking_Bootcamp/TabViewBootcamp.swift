//
//  TabViewBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/13.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons:[String] = [
    "heart.fill", "globe", "house.fill", "person.fill"]
    
    var body: some View {
//        TabView {
//            ForEach(icons, id:\.self) { icon in
//                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
//                    .padding(30)
//            }
//        }
//        .background(.blue)
//        .shadow(color: .yellow, radius: 20, x: -10, y: 0)
//        .frame(height: 300)
//        .tabViewStyle(PageTabViewStyle())
        
        
        TabView (selection: $selectedTab){

            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Browse Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            Text("Profile Tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tint(Color.green)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea(.all)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        }

    }
}
