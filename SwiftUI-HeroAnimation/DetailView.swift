//
//  DetailView.swift
//  SwiftUI-HeroAnimation
//
//  Created by 김인섭 on 12/12/23.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var showDetail: Bool
    var animation: Namespace.ID

    var body: some View {
        if showDetail {
            ZStack {
                Color
                    .black
                    .onTapGesture {
                        withAnimation { showDetail = false }
                    }
                Image("sample")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .matchedGeometryEffect(id: "image", in: animation)
            }
        }
    }
}
