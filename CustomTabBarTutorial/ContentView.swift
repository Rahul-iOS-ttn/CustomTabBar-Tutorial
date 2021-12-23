//
//  ContentView.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                List(1...10, id: \.self) { index in
                    
                    NavigationLink(
                        destination: Text(" \(index)s Detail"),
                        label: {
                            Text("\(index)'s Detail Page").font(
                                .system(size: 18, weight: .semibold, design: .rounded))
                        })
                    
                }.tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                Text("Bookmark")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bookmark.circle.fill")
                        Text("Bookmark")
                    }
                Text("profile")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("profile")
                    }
            }.onAppear() {
                UITabBar.appearance().barTintColor = .white
            }.accentColor(.yellow)
        }.navigationTitle("TabViewDemo")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
