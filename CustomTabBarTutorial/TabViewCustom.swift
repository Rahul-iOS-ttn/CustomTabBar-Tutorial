//
//  TabView.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 23/12/21.
//

import SwiftUI

struct TabViewCustom<Content: View>: View {
    
    let tabData: [TabItemData]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(tabData.indices) { index in
                    content(index)
                        .tag(index)
                }
            }
            
            VStack {
                Spacer()
                TabBarView(tabItems: tabData, selectedIndex: $selectedIndex)
            }
            .padding(.bottom, 8)
        }
    }
}

//struct TabView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabView<TabBarView>(tabData: [
//            TabItemData(image: "home", selectedImage: "home_selected", title: "Home"),
//                TabItemData(image: "bookmark", selectedImage: "bookmark_selected", title: "Bookmarks"),
//                TabItemData(image: "profile", selectedImage: "profile", title: "profile_seleceted")
//        ], selectedIndex: .constant(0), content: )
//    }
//}
