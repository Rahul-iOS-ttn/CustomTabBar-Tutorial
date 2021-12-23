//
//  TabView.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 23/12/21.
//

import SwiftUI

struct TabViewCustom<Content>: View where Content: View {
    
    let tabData: [TabItemData]
    @Binding var selectedIndex: Int
    // @ViewBuilder let content: (Int) -> Content
    
    // 👇🏻 We can't add @ViewBuilder in stored properties before Swift 5.4
    let content: (Int) -> Content

    // 👇🏻 Explicit init with @ViewBuilder parameter
    init(tabData: [TabItemData], selectedIndex: Binding<Int>, @ViewBuilder content: @escaping (Int) -> Content) {
        self.content = content
        self.tabData = tabData
        self._selectedIndex = selectedIndex
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(tabData.indices) { index in
                    content(index).tag(index)
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


