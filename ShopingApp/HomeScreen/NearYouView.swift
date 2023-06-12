//
//  NearYouView.swift
//  ShopingApp
//
//  Created by Ravikanth Thummala on 5/30/23.
//

import SwiftUI

let images: [FruitModel] = [
       .init(id: 0, title: .apple, image: "apple", price: "$1.99 each", color: "1"),
       .init(id: 1, title: .apricot, image: "apricot", price: "$2.04 each", color: "2"),
       .init(id: 2, title: .avocado, image: "avocado", price: "$1.04 each", color: "3"),
       .init(id: 3, title: .banana, image: "banana", price: "$2.06 each", color: "4"),
       .init(id: 4, title: .cherry, image: "cherry", price: "$3.00 each", color: "5"),
       .init(id: 5, title: .dragonfruit, image: "dragonfruit", price: "$1.04 each", color: "6"),
       .init(id: 6, title: .fig, image: "fig", price: "$2.00 each", color: "1"),
       .init(id: 7, title: .orange, image: "orange", price: "$1.00 each", color: "2"),
       .init(id: 8, title: .grapes, image: "grapes", price: "$2.54 each", color: "3"),
       .init(id: 9, title: .raspberry, image: "raspberry", price: "$3.04 each", color: "4"),
       .init(id: 10, title: .papaya, image: "papaya", price: "$1.04 each", color: "5"),
       .init(id: 11, title: .kiwi, image: "kiwi", price: "$2.78 each", color: "6"),
       .init(id: 12, title: .lemon, image: "lemon", price: "$2.04 each", color: "1"),
       .init(id: 13, title: .blackberry, image: "blackberry", price: "$2.04 each", color: "2"),
       .init(id: 14, title: .mango, image: "mango", price: "1.00 each", color: "3"),
       .init(id: 15, title: .muskmelon, image: "muskmelon", price: "$1.56 each", color: "4"),
       .init(id: 16, title: .pear, image: "pear", price: "$2.04 each", color: "5"),
       .init(id: 17, title: .pineapple, image: "pineapple", price: "$2.84 each", color: "6"),
       .init(id: 18, title: .plum, image: "plum", price: "$1.15 each", color: "1"),
       .init(id: 19, title: .strawbery, image: "strawbery", price: "$2.35 each", color: "2"),
       .init(id: 20, title: .watermelon, image: "watermelon", price: "$1.64 each", color: "3")
   ]

struct NearYouView: View {

    let dataArray: [PlacesModel] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            ForEach(dataArray,id: \.id) { image in
                HStack{
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray.opacity(0.2))
                        .frame(width: 100,height: 100)
                        .overlay(
                            Image(image.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        )
                        
                    VStack(alignment: .leading){
                        Text(image.name)
                            .font(.system(.headline))
                        Text(image.time)
                            .font(.system(.subheadline))
                            .foregroundColor(.gray)
                        Text(image.rating)
                    }
                }
            }
        }
    }
}

struct NearYouView_Previews: PreviewProvider {
    static var previews: some View {
        NearYouView()
    }
}
