//
//  BookCategory.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import Foundation

enum BookCategory: Identifiable, CaseIterable {
    case fiction
    case biography
    case children
    case computerScience
    case fantasy
    case business
    case historical
    case romance
    case horror
    case drama
    case mystery
    
    var id: Self { return self }
    
    var displayName: String {
        switch self {
            
        case .fiction:
            "Fiction"
        case .biography:
            "Biography"
        case .children:
            "Children"
        case .computerScience:
            "Computer Science"
        case .fantasy:
            "Fantasy"
        case .business:
            "Business"
        case .historical:
            "Historical"
        case .romance:
            "Romance"
        case .horror:
            "Horror"
        case .drama:
            "drama"
        case .mystery:
            "mystery"
        }
    }
}
