//
//  Views.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 23/12/21.
//

import SwiftUI

struct Views: View {
    
    @State var selectedIndex: Int = 0
    
    var body: some View {
        
        TabViewCustom(tabData: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
            let type = TabType(rawValue: index) ?? .home
            getTabView(type: type)
        }
    }
    
    @ViewBuilder
    func getTabView(type: TabType) -> some View {
        switch type {
        case .home:
            HomeView()
        case .bookmark:
            MyBookmarksView()
        case .profile:
            MyProfileView()
        }
    }
}

struct Views_Previews: PreviewProvider {
    static var previews: some View {
        Views()
    }
}

enum TabType: Int, CaseIterable {
    case home = 0
    case bookmark
    case profile
    
    var tabItem: TabItemData {
        switch self {
        case .home:
            return TabItemData(image: "home", selectedImage: "home_selected", title: "Home")
        case .bookmark:
            return TabItemData(image: "bookmark", selectedImage: "bookmark_selected", title: "Bookmark")
        case .profile:
            return TabItemData(image: "profile", selectedImage: "profile_selected", title: "Profile")
        }
    }
}


// MARK:- Views
struct HomeView: View {
    var body: some View {
        Text("Home")
    }
}

struct MyBookmarksView: View {
    var body: some View {
        Text("Bookmarks!")
    }
}

struct MyProfileView: View {
    var body: some View {
        Text("Me")
    }
}
