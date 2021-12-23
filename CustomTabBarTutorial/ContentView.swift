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
            Text("Home")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                } // this is your tab item that corresponds to your view.
            Text("Bookmark")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Home")
                }
            Text("profile")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Home")
                }
        }// this is a tab Veiw
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
