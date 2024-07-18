//
//  SalesViewModel.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import Foundation

class SalesViewModel: ObservableObject {
    @Published var salesData = [Sale]()
    
    var totalSales: Int {
        salesData.reduce(0) { $0 + $1.quantity }
    }
    
    @Published  var lastTotalSales: Int = 0
    
    var salesByWeek: [(day: Date, sales: Int)] {
        let salesByWeek = salesGroupByWeek(sales: salesData)
        return totalSalesPerDate(salesByDate: salesByWeek)
    }
    
    func salesGroupByWeek(sales: [Sale]) -> [Date : [Sale]] {
        var salesByWeek: [Date : [Sale]] = [:]
        
        let calendar = Calendar.current
        for sale in sales {
            guard let startOfTheWeek = calendar.date(from: calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: sale.saleDate)) else { continue }
            
            if salesByWeek[startOfTheWeek] != nil {
                salesByWeek[startOfTheWeek]!.append(sale)
            } else {
                salesByWeek[startOfTheWeek] = [sale]
            }
        }
        return salesByWeek
    }
    
    func totalSalesPerDate(salesByDate: [Date : [Sale]]) -> [(day: Date, sales: Int)] {
        var totalSales: [(day: Date, sales: Int)] = []
        
        for (date, sale) in salesByDate {
            let totalQuantityForDate = sale.reduce(0) { $0 + $1.quantity}
            totalSales.append((day: date, sales: totalQuantityForDate))
        }
        return totalSales
    }
    
    
    init() {
        // fatch data from e.g. server
    }
    
    static var preview: SalesViewModel {
        let vm = SalesViewModel()
        vm.salesData = Sale.examples
        vm.lastTotalSales = 200
        return vm
        
    }
}
