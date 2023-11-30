//
//  TrailingIconLabelStyle.swift
//  ScrumDinger
//
//  Created by 준우의 MacBook 16 on 11/30/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
