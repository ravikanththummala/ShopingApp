//
//  TopScrollingView.swift
//  ShopingApp
//
//  Created by Ravikanth Thummala on 5/30/23.
//

import SwiftUI

struct TopScrollingView: View {
        
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center, spacing: 20){
                ForEach(images,id: \.id) { image in
                    NavigationLink(destination: DetailView(fruit: image)) {
                        FruitCardView(fruits: image)
                    }
                }
            }
        }
    }
}

struct TopScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        TopScrollingView()
    }
}
