//
//  DetailView.swift
//  CoffeeApp
//
//  Created by Jules Mickael on 2025-02-02.
//

import SwiftUI

struct DetailView: View {
    var item: CafeItems
    @State private var showConfirmation = false // show confirmation message
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(15)
                .shadow(radius: 10)

            Text(item.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text("$\(item.price, specifier: "%.2f")")
                .font(.title)
                .foregroundColor(.gray)
            
            Text(item.description)
                .font(.body)
                .padding()
                .multilineTextAlignment(.center)

            Spacer()

            // show confirmation message durin 2s
            if showConfirmation {
                Text("✅ Your order is booked!")
                    .font(.title3)
                    .foregroundColor(.green)
                    .padding()
                    .transition(.scale)
            }

            // Order Buttom
            Button(action: {
                showConfirmation = true
                
                // hide message after 2s
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    showConfirmation = false
                }
            }) {
                Text("Order Now")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("Myorange"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .animation(.spring(), value: showConfirmation) 
            }
        }
        .padding()
        .navigationTitle("Coffee Details")
    }
}

#Preview {
    DetailView(item: CafeItems(name: "Espresso", price: 2.5, image: "coffee3", description: "An intense and bold coffee."))
}
