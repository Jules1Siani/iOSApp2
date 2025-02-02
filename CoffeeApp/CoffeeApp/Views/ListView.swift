//
//  ListView.swift
//  CoffeeApp
//
//  Created by Jules Mickael on 2025-02-02.
//

import SwiftUI

struct ListView: View {
    var data: [CafeItems] = [
        CafeItems(name: "Coffee", price: 2.0, image: "coffee1", description: "Rich and bold."),
        CafeItems(name: "Latte", price: 3.5, image: "coffee2", description: "Smooth and creamy."),
        CafeItems(name: "Espresso", price: 2.5, image: "coffee3", description: "Strong and intense.")
    ]
    
    var body: some View {
        NavigationView {
            List(data) { item in
                NavigationLink(destination: DetailView(item: item)) {  // ✅ Lien vers le détail
                    Listitems(item: item)
                }
            }
            .navigationTitle("Our Coffee Menu")
        }
    }
}

#Preview {
    ListView()
}
