//
//  Detail.swift
//  SwiftUIHeroSwipeApp
//
//  Created by Richard Price on 17/03/2021.
//

import SwiftUI

struct Detail: View {
    //grab the current selected item
    @ObservedObject var detail: DetailViewModel
    var animation: Namespace.ID
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                    Image(detail.selectedItem.contentImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
                    
                    HStack{
                        Text(detail.selectedItem.overlay)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            withAnimation(.spring()){

                                detail.show.toggle()
                            }
                        }) {
                            Image(systemName: "xmark")
                                .foregroundColor(Color.black.opacity(0.7))
                                .padding()
                                .background(Color.white.opacity(0.8))
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, UIApplication.shared.windows.first!.safeAreaInsets.top + 10)
                }
                HStack {
                    Image(detail.selectedItem.logo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    VStack(alignment: .leading, spacing: 6) {
                        Text(detail.selectedItem.title)
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
                .matchedGeometryEffect(id: detail.selectedItem.id, in: animation)
                .padding()
                Text("Race through the ultimate street racing scene at dizzying speed withthe tap of your finger! Have fun winning the racing car collection of your dreams. Pick an event, choose a lineup of cars from your collection, and start racing for infamy in the first Forza game for mobile.\n\nCOLLECT AND UPGRADE ICONIC CARS\nRace to collect legendary cars at intense speed – from classic muscle to modern sports and retro supercars – turning your garage into a trophy case of iconic racing cars, with all the fun, attention to graphics detail, and speed Forza is known for.\n\nTRUE CINEMATIC RACING\nStreamlined controls focus on the fun - timing your gas, brake, and boost are the keys to victory, as action cams chase the racing adrenaline up close showcasing amazing graphics. The stunning, best in class, 3D visuals bring the action to life while you’re speeding across the asphalt. It’s a fun, new, and wholly unique way to enjoy Forza.\n\nRACE ON YOUR TERMS\nRace your collection of cars anytime, anywhere. Squeeze in a fun, quick one-minute race, or dive into immersive story driven events with multiple paths to victory in the cars you love. New controls let you easily race with the tap of a finger to control your gas, brake, and boost. Forza Street has something fun for you any time you feel like racing at high speed and boosting across the finish line to victory.")
                    .padding()
                
                Spacer()
                
            }.ignoresSafeArea(.all, edges: .top)
            
        }
        
        
        
        
    }
}
