//
//  TabItemView.swift
//  CustomTabBarTutorial
//
//  Created by TTN on 23/12/21.
//

import SwiftUI

struct TabItemView: View {
    
    let data: TabItemData
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(isSelected ? data.selectedImage : data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .animation(.default)
            
            Spacer().frame(height:4)
            
            Text(data.title)
                .foregroundColor(isSelected ? .black : .gray)
                .font(.system(size: 14))
        }
    }
}

struct TabItemData {
    let image: String
    let selectedImage: String
    let title: String
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(data: TabItemData(image: "home", selectedImage: "home_selected", title: "Home"), isSelected: true)
    }
}
