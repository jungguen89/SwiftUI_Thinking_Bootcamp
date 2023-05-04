//
//  TextBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/05.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        VStack{
            Text("body")
                .font(.body)
            Text("callout")
                .font(.callout)
            Text("caption")
                .font(.caption)
            Text("footnote")
                .font(.footnote)
            Text("headline")
                .font(.headline)
            Text("largeTitle")
                .font(.largeTitle)
            Text("subheadline")
                .font(.subheadline)
            Text("title")
                .font(.title)
            Text("title2")
                .font(.title2)
            Text("title3")
                .font(.title3)
        }
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
