//
//  ContentView.swift
//  MeTube
//
//  Created by Eric Barnes - iOS on 11/17/23.
//

import SwiftUI

struct HomeView: View {
    let videoColumn: [GridItem] = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack  {
            // Background
            Color.white
                .ignoresSafeArea(.all, edges: .bottom)
            
            // Content Layer
            ScrollView {
                VStack {
                    // TOP 2 Nav bars
                    VStack(spacing: 0) {
                        TopIconsBar()
                            .frame(maxWidth: .infinity, minHeight: 50)
                        TagSliderView()
                            .frame(maxWidth: .infinity, minHeight: 50)
                    }
                    
                    // Top video item
                    VideoItem(imageName: "afroChill")
                    
                    // Shorts
                    ShortsVideoGrid()
                        .frame(height: 700)
                        .padding(.top)
                    
                    // list of more video items
                    LazyVGrid(columns: videoColumn, content: {
                        ForEach(0..<10) { _ in
                            VideoItem(imageName: "afroChill")
                        }
                    })
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
