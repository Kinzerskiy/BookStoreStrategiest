//
//  Expense.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import Foundation

struct Expense: Identifiable {
    let id = UUID()
    let title: String
    let category: ExpensCategory
    let amount: Double
    let expenseDate: Date
    
    
    
    static var example = Expense(title: "Rent",
                                 category: .fixed,
                                 amount: 2000,
                                 expenseDate: Date(timeIntervalSinceNow: -7_200_000))
    
    static var examples = [
        Expense(title: "Rent", category: .fixed, amount: 1500, expenseDate: Date(timeIntervalSinceNow: -30*24*3600)),
        Expense(title: "Electricity Bill", category: .fixed, amount: 60, expenseDate: Date(timeIntervalSinceNow: -15*24*3600)),
        Expense(title: "Marketing", category: .variable, amount: 1250, expenseDate: Date(timeIntervalSinceNow: -2*24*3600)),
        Expense(title: "Utilites", category: .variable, amount: 100, expenseDate: Date(timeIntervalSinceNow: -10*24*3600)),
        Expense(title: "Inventory", category: .variable, amount: 75, expenseDate: Date(timeIntervalSinceNow: -5*24*3600)),
        Expense(title: "Maintance", category: .fixed, amount: 400, expenseDate: Date(timeIntervalSinceNow: -40*24*3600)),
        Expense(title: "Internet Subscription", category: .fixed, amount: 50, expenseDate: Date(timeIntervalSinceNow: -20*24*3600)),
        Expense(title: "Mobile Phone Bill", category: .fixed, amount: 30, expenseDate: Date(timeIntervalSinceNow: -25*24*3600)),
        Expense(title: "Movie Tickets", category: .variable, amount: 45, expenseDate: Date(timeIntervalSinceNow: -3*24*3600)),
        Expense(title: "Health Insurance", category: .fixed, amount: 200, expenseDate: Date(timeIntervalSinceNow: -60*24*3600))
    ]
    
    static var yearExamples: [Expense] = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        var expenses = [Expense]()
        
        for month in 1...12 {
            for _ in 1...12 {
                let randomDay = Int.random(in: 1...28)
                let date = formatter.date(from: "2024/ \(month)/ \(randomDay)")!
                let category: ExpensCategory = Bool.random() ? .fixed : .variable
                let title = category == .fixed ? "Rent" : "Utilites"
                let amount: Double = category == .fixed ? 2000 : Double.random(in: 100...500)
                expenses.append(Expense(title: title, category: category, amount: amount, expenseDate: date))
            }
        }
        return expenses
    }()
}


enum ExpensCategory {
    case fixed
    case variable
    
    var displayName: String {
        switch self {
        case .fixed:
            "Fixed"
        case .variable:
            "Variable"
        }
    }
}


