//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Sergey Basin on 03.04.2021.
//

import SwiftUI

struct PostGridView: View {
    private let items = Array(repeating: GridItem(), count: 3)
    private var width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0..<10) { _ in
                NavigationLink (
                    destination: FeedView(),
                    label: {
                        Image("joker")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()
                    })
            }
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
