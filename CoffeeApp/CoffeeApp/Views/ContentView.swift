//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Jules Mickael on 2025-02-01.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background Image
                Image("background")
                    .resizable()
                    .padding(0.0)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer()
                    
                    // Icon App
                    Image(systemName: "cup.and.saucer.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color("Myorange"))
                    
                    // Welcome messsage
                    Text("Welcome to Coffee Shop")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .background(Color("Myorange"))
                        .foregroundColor(Color.white)
                        .padding()
                        .multilineTextAlignment(.center)

                    Spacer()

                    // Acces to menu
                    NavigationLink(destination: ListView()) {
                        Text("View Coffee Menu")
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("Myorange"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }

                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
