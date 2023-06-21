//
//  TextSectionBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct TextSectionBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            // Select and share text
            .textSelection(.enabled)
    }
}

struct TextSectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSectionBootcamp()
    }
}
