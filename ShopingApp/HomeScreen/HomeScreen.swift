//
//  HomeScreen.swift
//  ShopingApp
//
//  Created by Ravikanth Thummala on 5/30/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            HStack{
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }
            .font(.system(.title3))
            
            Text("Hey ")
                .font(.system(.title))
                .fontWeight(.bold)
            Text("Find fresh fruit that you want")
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.3))
                .overlay {
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search fresh fruits")
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding()
                }
                .frame(width:350,height: 50,alignment: .leading)
            
            Text("Top Selling")
                .font(.title)
                .fontWeight(.bold)
            
            TopScrollingView()
            
            Text("Near You")
                .font(.title)
                .fontWeight(.bold)
            
            NearYouView()
            Spacer()
        } .padding()
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)


    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
