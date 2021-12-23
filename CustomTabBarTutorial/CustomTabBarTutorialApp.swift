//
//  CustomTabBarTutorialApp.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 22/12/21.
//

import SwiftUI

@main
struct CustomTabBarTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            TabBarView(tabItems: [
            TabItemData(image: "home", selectedImage: "home_selected", title: "Home"),
                TabItemData(image: "bookmark", selectedImage: "bookmark_selected", title: "Bookmarks"),
                TabItemData(image: "Profile", selectedImage: "profile", title: "profile_seleceted")
            ], selectedIndex: .constant(0))
        }
    }
}
