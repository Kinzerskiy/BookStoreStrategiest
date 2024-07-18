//
//  MonthlyChartsView.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI
import Charts

struct MonthlyChartsView: View {
    let salesData: [Sale]
    
    var body: some View {
        Chart(salesData) { sale in
            BarMark(x: .value("Month", sale.saleDate, unit: .month),
                    y: .value("Sales", sale.quantity))
        }
        .chartXAxis {
            AxisMarks { _ in
                
                AxisValueLabel(format: .dateTime.month(.abbreviated), centered: true)
            }
        }
        
    }
}

#Preview {
    MonthlyChartsView(salesData: Sale.threeMonthExamples())
        .aspectRatio(1, contentMode: .fit)
        .padding()
}
