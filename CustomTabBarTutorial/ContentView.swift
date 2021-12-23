//
//  ContentView.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TabView(selection: $selection) {
                Text("Home")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }.tag(0)
                Text("Bookmark")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("Bookmark")
                    }.tag(1)
                Text("profile")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("profile")
                    }.tag(2)
            }.onAppear() {
                UITabBar.appearance().barTintColor = .white
        }.accentColor(.yellow)
            Button(action: {
                selection = (selection + 1) % 3
            }) {
                Text("Next Tab")
                    .font(.system(.headline, design: .rounded))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(10.0)
                    .padding()
            }
        }// this is a tab Veiw
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
