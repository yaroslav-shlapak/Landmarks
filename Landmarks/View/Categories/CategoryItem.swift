//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Yaroslav Shlapak on 29.05.2021.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        let size: CGFloat = 155
        
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: size, height: size)
                .cornerRadius(5)
        
            
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryItem(landmark: landmarks[0])
    }
}
