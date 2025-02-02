//
//  ListItems.swift
//  CoffeeApp
//
//  Created by Jules Mickael on 2025-02-02.
//

import SwiftUI

struct Listitems: View {
    var item: CafeItems
    
    var body: some View {
        HStack {
            Image(item.image)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                    .foregroundColor(.black)
                Text("$\(item.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(item.description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding(5)
    }
}

#Preview {
    Listitems(item: CafeItems(name: "Coffee", price: 2.0, image: "coffee1", description: "Rich and bold."))
}
