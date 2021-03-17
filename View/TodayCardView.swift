//
//  TodayCardView.swift
//  SwiftUIHeroSwipeApp
//
//  Created by Richard Price on 16/03/2021.
//

import SwiftUI

struct TodayCardView: View {
    var item: TodayItem
    @Environment(\.colorScheme) var color
    var animation: Namespace.ID
    var body: some View {
        VStack {
            Image(item.contentImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: item.contentImage, in: animation)
                .frame(width: UIScreen.main.bounds.width - 30)
                .cornerRadius(15)
            HStack {
                Image(item.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .cornerRadius(15)
                VStack(alignment: .leading, spacing: 6) {
                    Text(item.title)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
                Spacer(minLength: 0)
                VStack {
                    Button(action: {}) {
                        Text("GET")
                            .fontWeight(.bold)
                            .padding(.vertical,10)
                            .padding(.horizontal,25)
                            .background(Color.primary.opacity(0.1))
                            .clipShape(Capsule())
                    }
                    Text("In App Purchases")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .matchedGeometryEffect(id: item.id, in: animation)
            .padding()
        }
        
        .background(color == .dark ? Color.black : Color.white)
        
    }
}
