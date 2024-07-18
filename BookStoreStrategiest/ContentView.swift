//
//  ContentView.swift
//  BookStoreStrategiest
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var salesViewModel = SalesViewModel.preview
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    DetailBookSalesView(salesViewModel: salesViewModel)
                } label: {
                    SimpleBookSalesView(salesViewModel: salesViewModel)
                }
            }
            .navigationTitle("Your Book Store Stats")
        }
    }
}

#Preview {
    ContentView()
}
