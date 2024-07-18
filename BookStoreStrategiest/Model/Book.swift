//
//  Book.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import Foundation

struct Book: Identifiable, Equatable {
    
    let id = UUID()
    let title: String
    let author: Author
    let category: BookCategory
    let price: Double
    let inventoruCount: Int
    
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs.id == rhs.id
    }
    
    static var example = Book(title: "Harry Potter and a the Chamber of Secrets",
                              author: Author.examples[2],
                              category: .fantasy,
                              price: 19.99,
                              inventoruCount: 100)
    
    
    static var examples = [
        Book(title: "The Fellowship of the Ring", author: Author.examples[0], category: .fantasy, price: 12.99, inventoruCount: 150),
        Book(title: "The Two Towers", author: Author.examples[0], category: .fantasy, price: 13.99, inventoruCount: 150),
        Book(title: "The Return of the King", author: Author.examples[0], category: .fantasy, price: 14.99, inventoruCount: 150),
        Book(title: "War and Peace", author: Author.examples[1], category: .historical, price: 19.99, inventoruCount: 80),
        Book(title: "Anna Karenina", author: Author.examples[1], category: .romance, price: 18.99, inventoruCount: 100),
        Book(title: "Harry Potter and the Sorcerer's Stone", author: Author.examples[2], category: .fantasy, price: 10.99, inventoruCount: 200),
        Book(title: "Harry Potter and the Prisoner of Azkaban", author: Author.examples[2], category: .fantasy, price: 10.99, inventoruCount: 200),
        Book(title: "The Shining", author: Author.examples[3], category: .horror, price: 9.99, inventoruCount: 120),
        Book(title: "Carrie", author: Author.examples[3], category: .horror, price: 8.99, inventoruCount: 130),
        Book(title: "To Kill a Mockingbird", author: Author.examples[4], category: .drama, price: 11.99, inventoruCount: 140),
        Book(title: "Pride and Prejudice", author: Author.examples[5], category: .romance, price: 7.99, inventoruCount: 160),
        Book(title: "Emma", author: Author.examples[5], category: .romance, price: 7.50, inventoruCount: 160),
        Book(title: "The Old Man and the Sea", author: Author.examples[6], category: .fiction, price: 6.99, inventoruCount: 180),
        Book(title: "A Farewell to Arms", author: Author.examples[6], category: .fiction, price: 6.49, inventoruCount: 170),
        Book(title: "Murder on the Orient Express", author: Author.examples[7], category: .mystery, price: 9.99, inventoruCount: 110),
        Book(title: "The Murder of Roger Ackroyd", author: Author.examples[7], category: .mystery, price: 10.49, inventoruCount: 115),
        Book(title: "The Hobbit", author: Author.examples[0], category: .fantasy, price: 12.99, inventoruCount: 180),
        Book(title: "The Children of Húrin", author: Author.examples[0], category: .fantasy, price: 14.49, inventoruCount: 90),
        Book(title: "The Stand", author: Author.examples[3], category: .horror, price: 15.99, inventoruCount: 95),
        Book(title: "Misery", author: Author.examples[3], category: .horror, price: 8.99, inventoruCount: 85)
    ]
    
}
