//
//  FeaturedCourseCard.swift
//  SwiftUIConcurrencyFinal
//
//  Created by João Carlos Magalhães on 16/06/22.
//

import SwiftUI

struct FeaturedCourseCard: View {
    var body: some View {
        VStack(spacing: 8) {
            AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/2KiUooJBmI26N6u5gr2rlm/e2bb070640fe2778e1a58d160335cbe7/React_Hooks_handbook_800x600_cover_new.png")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 220, alignment: .center)
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.2))
            }
            
            Text("SwiftUI Combine and Data")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(2)
            
            Text("18 sections - 3 hours")
                .font(.footnote)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
            
            Text("Learn about Combine, the MVVM architecture, data, notifications and performance hands-on by creating a beautiful SwiftUI application")
                .font(.footnote)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(2)
        }
        .padding(16)
        .frame(width: 252, height: 350, alignment: .top)
        .background(
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottomLeading)
        )
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
            .stroke(Color.white.opacity(0.2), lineWidth: 0.5)
            .blendMode(.overlay)
        )
    }
}

struct FeaturedCourseCard_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedCourseCard()
    }
}
