//
//  DailyChartView.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI
import Charts

struct DailyChartView: View {
    
    let salesData: [Sale]
    
    var body: some View {
        Chart(salesData) { sale in
            BarMark(x: .value("Day", sale.saleDate, unit: .day),
                    y: .value("Sales", sale.quantity))
        }
    }
}

#Preview {
    DailyChartView(salesData: Sale.threeMonthExamples())
        .aspectRatio(1, contentMode: .fit)
        .padding()
    
}
