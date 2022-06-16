//
//  CourseCard.swift
//  SwiftUIConcurrencyFinal
//
//  Created by João Carlos Magalhães on 16/06/22.
//

import SwiftUI

struct CourseCard: View {
    var body: some View {
        VStack(spacing: 8) {
            AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/5IXFM29JvbdXKuHeGF91Y3/6b49d65577c32747b7b1a60444c56d9c/SwiftUI_Combine_800x600_cover.png")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 128, alignment: .center)

            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.2))
            }

            Spacer()

            Text("SwiftUI for iOS 15")
                .font(.headline)
                .foregroundColor(.white)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("20 sections - 4 hours")
                .font(.caption)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7)))
                .frame(maxWidth: .infinity, alignment: .leading)

        }
        .padding(16)
        .frame(height: 217, alignment: .top)
        .background(
            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottomLeading)
        )
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.white.opacity(0.2), lineWidth: 0.5)
                    .blendMode(.overlay))
        .shadow(color: .blue.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct CourseCard_Previews: PreviewProvider {
    static var previews: some View {
        CourseCard()
    }
}
