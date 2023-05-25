//
//  ScrollViewBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/20.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        
        ScrollView {
            VStack {
                ForEach(0..<30) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<30) { index in
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 100, height: 100)
                                    .shadow(color: .orange, radius: 3, x: 0, y: 0)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
