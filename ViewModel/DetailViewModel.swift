//
//  DetailViewModel.swift
//  SwiftUIHeroSwipeApp
//
//  Created by Richard Price on 17/03/2021.
//

import SwiftUI

class DetailViewModel: ObservableObject {
    
    @Published var selectedItem = TodayItem(id: "", title: "", category: "", overlay: "", contentImage: "", logo: "")
    @Published var show = false
            
    
    
}
