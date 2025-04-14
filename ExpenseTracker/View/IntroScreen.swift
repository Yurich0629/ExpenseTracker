//
//  IntroScreen.swift
//  ExpenseTracker
//
//  Created by Илья Десятов on 10.04.2025.
//

import SwiftUI

struct IntroScreen: View {
    /// Visibility  Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    var body: some View {
        VStack(spacing: 15) {
            Text("What's new in the\nExpense Tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            /// Points View
            VStack(alignment: .leading, spacing: 25, content: {
                PointView(symbol: "dollarsign", title: "Transactions", subTitile: "Keep track of your earnings and expenses.")
                
                PointView(symbol: "chart.bar.fill", title: "Visual Charts", subTitile: "View your transactions using eye-catching graphic representations.")
                
                PointView(symbol: "magnifyingglass", title: "Advance Filters", subTitile: "Find the expenses you want by advance search and filtering.")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 15)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Continue")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
        }
        .padding(15)
    }
    /// Point view
        @ViewBuilder
    func PointView(symbol: String, title: String, subTitile: String) -> some View {
        HStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitile)
                    .foregroundStyle(.gray)
            })
        }
    }
}



#Preview {
    IntroScreen()
}
