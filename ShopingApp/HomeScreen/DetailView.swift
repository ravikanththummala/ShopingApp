//
//  DetailView.swift
//  ShopingApp
//
//  Created by Ravikanth Thummala on 5/30/23.
//

import SwiftUI

struct RoundedCornerShape:Shape{
    let corners:UIRectCorner
    let radius:CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


struct Couter:View {
    @State var count = 0
    
    var body: some View {
        HStack(spacing: 15){
            Button {
                count += 1
            } label: {
                Image(systemName: "plus")
            }
            
            Text("\(count)")
                .font(.title)
            
            Button {
                if count != 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }
        }
        .frame(width: 130,height: 50)
        .foregroundColor(.black)
        .background(Color("bgColor").opacity(0.15))
        .cornerRadius(12) 
        .padding()

    }
}

struct DetailView: View {
    
    @State var fruit:FruitModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(RoundedCornerShape(corners: [.bottomLeft,.bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity,alignment: .top)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: .gray, radius: 5,x: 5,y: 5)
                .overlay(
                    Image(fruit.image)
                        .resizable()
                        .frame(width: 250, height: 250 ,alignment: .center)
                        .offset(y:10)
                        .shadow(color: .gray, radius: 5,x: 5,y: 5)
                )

            Spacer()
            
            Text("\(fruit.title.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)

            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 50,height: 50)
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                    Text("25-30 Min")
                }
            }
            .padding(.horizontal)
            
            HStack(alignment: .center, spacing: 5){
                Text("$1.99")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                
                Couter()
                
            }
            
            Image("bg")
                .resizable()
                .frame(width: 350,height: 50,alignment: .center)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 5,x: 5,y: 5)
                .overlay(
                    Text("Add to cart")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                )
                .padding(.horizontal)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(fruit: fruit)
    }
}
