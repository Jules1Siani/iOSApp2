//
//  CafeItems.swift
//  CoffeeApp
//
//  Created by Jules Mickael on 2025-02-02.
//

import Foundation

struct CafeItems: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
    var image: String
    var description: String
}

