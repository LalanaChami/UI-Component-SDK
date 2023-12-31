//
//  PotfolioCardView.swift
//  UI_Component_SDK
//
//  Created by Lalana Chamika on 2023-11-29.
//

import SwiftUI

struct PotfolioCardView: View {
    private var headingTitile : String
    private var icon : String
    private var holdingAmount : String
    private var netChangeAmount : String
    private var netChangePercentage : String
    
    public init(headingTitile: String, icon: String, holdingAmount: String, netChangeAmount: String, netChangePercentage: String) {
        self.headingTitile = headingTitile
        self.icon = icon
        self.holdingAmount = holdingAmount
        self.netChangeAmount = netChangeAmount
        self.netChangePercentage = netChangePercentage
      }
    
    var body: some View {
        
        ZStack {
            HStack {
                Text("\(headingTitile)")
                    .font(
                        Font.custom("Inter", size: 20)
                            .weight(.semibold)
                    )
                .foregroundColor(.black)
            }
        }
        .frame(width: 300, height: 200)
        .background(Color(red: 0.98, green: 0.98, blue: 0.96))
        .cornerRadius(24)
        .overlay(
        RoundedRectangle(cornerRadius: 24)
        .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 2)

        )
        
    }
}


struct PotfolioCardView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            
            PotfolioCardView(headingTitile: "Portfolio", icon: "holding-icon", holdingAmount: "120,000" , netChangeAmount: "+23.44", netChangePercentage: "23%")
                .previewLayout(.sizeThatFits)
            
        }
    }
}
