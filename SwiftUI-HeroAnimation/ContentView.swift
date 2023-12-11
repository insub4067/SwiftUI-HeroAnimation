//
//  ContentView.swift
//  SwiftUI-HeroAnimation
//
//  Created by 김인섭 on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    @State private var showDetail = false

    var body: some View {
        VStack {
            Spacer()
            Image("sample")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 24)
                .matchedGeometryEffect(id: "image", in: animation)
                .onTapGesture {
                    withAnimation {
                        showDetail = true
                    }
                }
                .padding(.bottom, 120)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            DetailView(
                showDetail: $showDetail,
                animation: animation
            )
        )
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
