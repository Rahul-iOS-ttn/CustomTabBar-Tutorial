//
//  ContentView.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 22/12/21.
//

import SwiftUI

struct TabBarView: View {
    
    let tabItems: [TabItemData]
    var height: CGFloat = 70
    var width: CGFloat = UIScreen.main.bounds.width - 32
    @Binding var selectedIndex: Int
    
    var body: some View {
        HStack{
            Spacer()
            
            ForEach(tabItems.indices) { index in
                let tabItem = tabItems[index]
                Button {
                    self.selectedIndex = index
                } label: {
                    let isSelected = selectedIndex == index
                    TabItemView(data: tabItem, isSelected: isSelected)
                }
                
                Spacer()
                
            }
        }.frame(width: width, height: height)
        .background(Color.white)
        .cornerRadius(13.0)
        .shadow(radius: 5, x: 0, y: 5 )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(tabItems: [
        TabItemData(image: "home", selectedImage: "home_selected", title: "Home"),
            TabItemData(image: "bookmark", selectedImage: "bookmark_selected", title: "Bookmarks"),
            TabItemData(image: "profile", selectedImage: "profile_selected", title: "profile")
        ], selectedIndex: .constant(0))
    }
}
