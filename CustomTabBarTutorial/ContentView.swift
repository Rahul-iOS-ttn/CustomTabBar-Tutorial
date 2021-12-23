//
//  ContentView.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                List(1...10, id: \.self) { index in
                    NavigationLink(
                        destination: Text("Item #\(index) Details"),
                        label: {
                            Text("Item #\(index)")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                        })
                    
                }
                
                .navigationTitle("TabView Demo")
            }
            .tabItem {
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
