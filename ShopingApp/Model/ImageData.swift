//
//  ImageData.swift
//  ShopingApp
//
//  Created by Ravikanth Thummala on 5/30/23.
//

import Foundation

struct FruitModel {
    
    var id:Int
    var title:fruitTitle
    var image:String
    var price:String
    var color:String
    
}

enum fruitTitle:String {
    case apple,apricot,avocado,banana,blackberry,cherry,dragonfruit,fig,grapes,kiwi,lemon,mango,muskmelon,orange,papaya,pear,pineapple,plum,raspberry,strawbery,watermelon
}
