//
//  DetailBookSalesView.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI

struct DetailBookSalesView: View {
    
    
    enum TimeInterval: String, CaseIterable, Identifiable {
        case day = "Day"
        case week = "Week"
        case month = "Month"
        var id: Self { return self }
    }
    
    @ObservedObject var salesViewModel: SalesViewModel
    @State private var timeinterval = TimeInterval.day
    
    var body: some View {
        VStack {
            Picker(selection: $timeinterval) {
                ForEach(TimeInterval.allCases) { interval in
                    Text(interval.rawValue)
                    
                }
            } label: {
                Text("Time interval for chart")
            }
            .pickerStyle(.segmented)
            
            Group {
                switch timeinterval {
                case .day:
                    DailyChartView(salesData: salesViewModel.salesData)
                case .week:
                    WeeklyChartsView(salesViewModel: salesViewModel)
                case .month:
                    MonthlyChartsView(salesData: salesViewModel.salesData)
                }
            }
            .aspectRatio(0.8, contentMode: .fit)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DetailBookSalesView(salesViewModel: .preview)
}
