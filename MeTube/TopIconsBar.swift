//
//  TopIconsBar.swift
//  MeTube
//
//  Created by Eric Barnes - iOS on 11/17/23.
//

import SwiftUI

struct TopIconsBar: View {
    var body: some View {
        ZStack {
            Color.white
            
            HStack {
                
                // Logo
                LogoView()
                    .padding(.leading)
                
                Spacer()
                
                // Trailing bar items
                HStack(spacing: 20) {
                    Button(action: {print("tapped")}, label: {
                        Image(systemName: "tv.badge.wifi")
                            .font(.title3)
                            .foregroundStyle(.black)
                    })
                    Button(action: {print("tapped")}, label: {
                        Image(systemName: "bell")
                            .font(.title3)
                            .foregroundStyle(.black)
                    })
                    Button(action: {print("tapped")}, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title3)
                            .foregroundStyle(.black)
                    })
                }
                .padding(.trailing)
            }
            // .frame(height: 200)
        }
    }
}

#Preview {
    TopIconsBar()
}

struct LogoView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "play.rectangle.fill")
                .font(.title2)
                .foregroundStyle(.blue)
            Text("MeTube")
                .font(.title3)
                .fontWeight(.semibold)
        }
    }
}
