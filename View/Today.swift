//
//  Today.swift
//  SwiftUIHeroSwipeApp
//
//  Created by Richard Price on 16/03/2021.
//

import SwiftUI

struct Today: View {
    var animation: Namespace.ID
    @EnvironmentObject var detail: DetailViewModel
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Saturday November 14th").foregroundColor(.gray)
                        Text("Today").font(.largeTitle).fontWeight(.bold)
                    }
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "person.circle").font(.largeTitle)
                    }
                }
                .padding()
                
                ForEach(items) { item in
                    //CardView
                    TodayCardView(item: item, animation: animation)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detail.selectedItem = item
                                detail.show.toggle()
                            }
                        }
                    
                }
            }
            .padding(.bottom)
        }
        .background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}

//Hero Animation
