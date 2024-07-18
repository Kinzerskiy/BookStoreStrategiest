//
//  WeeklyChartsView.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI
import Charts

struct WeeklyChartsView: View {
    @ObservedObject var salesViewModel : SalesViewModel
    
    var body: some View {
        Chart(salesViewModel.salesByWeek, id: \.day) { saleDate in
            BarMark(x: .value("Week", saleDate.day, unit: .weekOfYear),
                    y: .value("Sales", saleDate.sales))
            .foregroundStyle(Color.blue.gradient)
        }
    }
}

struct PlainDataWeeklyChartsView: View {
    let saleData: [Sale]
    
    var body: some View {
        Chart(saleData) { sale in
            BarMark(x: .value("Week", sale.saleDate, unit: .weekOfYear),
                    y: .value("Sales", sale.quantity))
        }
    }
}

#Preview {
    WeeklyChartsView(salesViewModel: .preview)
}
