//
//  Author.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import Foundation
 
struct Author: Identifiable {
    let id =  UUID()
    let name: String
    
    static var example = Author(name: "Jack London")
    static var examples = [
        Author(name: "John Ronald Reuel Tolkien"),
        Author(name: "Lev Tolstoi"),
        Author(name: "J. K. Rowling"),
        Author(name: "Stephen King"),
        Author(name: "Harper Lee"),
        Author(name: "Jane Austen"),
        Author(name: "Ernest Hemingway"),
        Author(name: "Agatha Cristie")
    ]
}
