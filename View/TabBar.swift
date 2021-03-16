//
//  TabBar.swift
//  SwiftUIHeroSwipeApp
//
//  Created by Richard Price on 16/03/2021.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Today().tabItem {
                Image("today").renderingMode(.template)
                Text("Today")
            }
            
            Text("Games").tabItem {
                Image("games").renderingMode(.template)
                Text("Games")
            }
            
            Text("Apps").tabItem {
                Image("apps").renderingMode(.template)
                Text("Apps")
            }
            
            Text("Search").tabItem {
                Image("search").renderingMode(.template)
                Text("Search")
            }
        }
    }
}
