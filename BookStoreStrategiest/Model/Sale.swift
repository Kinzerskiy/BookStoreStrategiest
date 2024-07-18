//
//  Sale.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import Foundation

struct Sale: Identifiable, Equatable {
    let id: UUID
    let book: Book
    let quantity: Int
    let saleDate: Date
    
    
    static var examle = Sale(id: UUID(),
                             book: Book.examples[8],
                             quantity: 5,
                             saleDate: Date(timeIntervalSinceNow: -7_200_000))
    
    static var examples = [
        Sale(id: UUID(), book: Book.examples[2], quantity: 17, saleDate: Date(timeIntervalSinceNow: -2_500_000)),
        Sale(id: UUID(), book: Book.examples[6], quantity: 18, saleDate: Date(timeIntervalSinceNow: -1_500_000)),
        Sale(id: UUID(), book: Book.examples[1], quantity: 44, saleDate: Date(timeIntervalSinceNow: -2_800_000)),
        Sale(id: UUID(), book: Book.examples[0], quantity: 1, saleDate: Date(timeIntervalSinceNow: -2_400_000)),
        Sale(id: UUID(), book: Book.examples[7], quantity: 29, saleDate: Date(timeIntervalSinceNow: -3_700_000)),
        Sale(id: UUID(), book: Book.examples[3], quantity: 35, saleDate: Date(timeIntervalSinceNow: -4_500_000)),
        Sale(id: UUID(), book: Book.examples[4], quantity: 80, saleDate: Date(timeIntervalSinceNow: -1_700_000)),
        Sale(id: UUID(), book: Book.examples[9], quantity: 3, saleDate: Date(timeIntervalSinceNow: -2_900_000)),
        Sale(id: UUID(), book: Book.examples[19], quantity: 5, saleDate: Date(timeIntervalSinceNow: -1_100_000))
    ]
    
    
    
    static func threeMonthExamples() -> [Sale] {
        let threeMonthAgo = Calendar.current.date(byAdding: .month, value: -3, to: Date())!
        
        let exampleSales: [Sale] = (1...300) .map { _ in
            let randomBook = Book.examples.randomElement()!
            let randomQuantity = Int.random(in: 1...5)
            let randomDate = Date.random(in: threeMonthAgo...Date())
            
            return Sale(id: UUID(), book: randomBook, quantity: randomQuantity, saleDate: randomDate)
            
        }
        return exampleSales.sorted { $0.saleDate < $1.saleDate }
    }
}

extension Date {
    static func random(in range: ClosedRange<Date>) -> Date {
        let diff = range.upperBound.timeIntervalSinceReferenceDate - range.lowerBound.timeIntervalSinceReferenceDate
        let randomValue = diff * Double.random(in: 0...1) + range.lowerBound.timeIntervalSinceReferenceDate
        
        return Date(timeIntervalSinceReferenceDate: randomValue)
    }
}
